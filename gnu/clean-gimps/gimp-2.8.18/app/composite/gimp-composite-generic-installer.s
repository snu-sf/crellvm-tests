	.text
	.file	"gimp-composite-generic-installer.bc"
	.globl	gimp_composite_generic_install
	.align	16, 0x90
	.type	gimp_composite_generic_install,@function
gimp_composite_generic_install:         # @gimp_composite_generic_install
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
	callq	gimp_composite_generic_init
	cmpl	$0, %eax
	je	.LBB0_6
# BB#1:                                 # %if.then
	movabsq	$_gimp_composite_generic, %rax
	movq	%rax, gimp_composite_generic_install.t
.LBB0_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	gimp_composite_generic_install.t, %rax
	cmpq	$0, 16(%rax)
	je	.LBB0_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB0_2 Depth=1
	movabsq	$gimp_composite_function, %rax
	movq	gimp_composite_generic_install.t, %rcx
	movq	16(%rcx), %rcx
	movq	gimp_composite_generic_install.t, %rdx
	movl	12(%rdx), %esi
	movl	%esi, %edx
	movq	gimp_composite_generic_install.t, %rdi
	movl	8(%rdi), %esi
	movl	%esi, %edi
	movq	gimp_composite_generic_install.t, %r8
	movl	4(%r8), %esi
	movl	%esi, %r8d
	movq	gimp_composite_generic_install.t, %r9
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
	movq	gimp_composite_generic_install.t, %rax
	addq	$24, %rax
	movq	%rax, gimp_composite_generic_install.t
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
	.size	gimp_composite_generic_install, .Lfunc_end0-gimp_composite_generic_install
	.cfi_endproc

	.type	gimp_composite_generic_install.t,@object # @gimp_composite_generic_install.t
	.data
	.align	8
gimp_composite_generic_install.t:
	.quad	_gimp_composite_generic
	.size	gimp_composite_generic_install.t, 8

	.type	_gimp_composite_generic,@object # @_gimp_composite_generic
	.section	.rodata,"a",@progbits
	.align	16
_gimp_composite_generic:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_normal_any_any_any_generic
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_normal_any_any_any_generic
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_dissolve_any_any_any_generic
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_behind_any_any_any_generic
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_behind_any_any_any_generic
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_multiply_any_any_any_generic
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_screen_any_any_any_generic
	.long	4                       # 0x4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_screen_any_any_any_generic
	.long	5                       # 0x5
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	5                       # 0x5
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_overlay_any_any_any_generic
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_difference_any_any_any_generic
	.long	6                       # 0x6
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_difference_any_any_any_generic
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_addition_any_any_any_generic
	.long	7                       # 0x7
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_addition_any_any_any_generic
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	8                       # 0x8
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_subtract_any_any_any_generic
	.long	9                       # 0x9
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_darken_any_any_any_generic
	.long	9                       # 0x9
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_darken_any_any_any_generic
	.long	10                      # 0xa
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	10                      # 0xa
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_lighten_any_any_any_generic
	.long	11                      # 0xb
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_hue_any_any_any_generic
	.long	11                      # 0xb
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_hue_any_any_any_generic
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	12                      # 0xc
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_saturation_any_any_any_generic
	.long	13                      # 0xd
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	13                      # 0xd
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_color_only_any_any_any_generic
	.long	14                      # 0xe
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_value_any_any_any_generic
	.long	14                      # 0xe
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_value_any_any_any_generic
	.long	15                      # 0xf
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_divide_any_any_any_generic
	.long	15                      # 0xf
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_divide_any_any_any_generic
	.long	16                      # 0x10
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	16                      # 0x10
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_dodge_any_any_any_generic
	.long	17                      # 0x11
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_burn_any_any_any_generic
	.long	17                      # 0x11
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_burn_any_any_any_generic
	.long	18                      # 0x12
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	18                      # 0x12
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_hardlight_any_any_any_generic
	.long	19                      # 0x13
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	19                      # 0x13
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_softlight_any_any_any_generic
	.long	20                      # 0x14
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	20                      # 0x14
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_grain_extract_any_any_any_generic
	.long	21                      # 0x15
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	21                      # 0x15
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_grain_merge_any_any_any_generic
	.long	22                      # 0x16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	22                      # 0x16
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_color_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_erase_any_any_any_generic
	.long	23                      # 0x17
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_erase_any_any_any_generic
	.long	24                      # 0x18
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_replace_any_any_any_generic
	.long	24                      # 0x18
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_replace_any_any_any_generic
	.long	25                      # 0x19
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	25                      # 0x19
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_anti_erase_any_any_any_generic
	.long	26                      # 0x1a
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_blend_any_any_any_generic
	.long	26                      # 0x1a
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_blend_any_any_any_generic
	.long	28                      # 0x1c
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_swap_any_any_any_generic
	.long	28                      # 0x1c
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_swap_any_any_any_generic
	.long	29                      # 0x1d
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_scale_any_any_any_generic
	.long	29                      # 0x1d
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_scale_any_any_any_generic
	.long	30                      # 0x1e
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	gimp_composite_convert_any_any_any_generic
	.long	30                      # 0x1e
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_convert_any_any_any_generic
	.zero	24
	.size	_gimp_composite_generic, 46104


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
