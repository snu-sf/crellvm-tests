	.text
	.file	"gimp-composite-3dnow-installer.bc"
	.globl	gimp_composite_3dnow_install
	.align	16, 0x90
	.type	gimp_composite_3dnow_install,@function
gimp_composite_3dnow_install:           # @gimp_composite_3dnow_install
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
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_composite_3dnow_install, .Lfunc_end0-gimp_composite_3dnow_install
	.cfi_endproc

	.globl	gimp_composite_3dnow_init
	.align	16, 0x90
	.type	gimp_composite_3dnow_init,@function
gimp_composite_3dnow_init:              # @gimp_composite_3dnow_init
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
	andl	$1073741824, %eax       # imm = 0x40000000
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
	.size	gimp_composite_3dnow_init, .Lfunc_end1-gimp_composite_3dnow_init
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
