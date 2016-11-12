	.text
	.file	"unique.bc"
	.globl	gimp_unique_open
	.align	16, 0x90
	.type	gimp_unique_open,@function
gimp_unique_open:                       # @gimp_unique_open
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_unique_dbus_open
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_unique_open, .Lfunc_end0-gimp_unique_open
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_unique_dbus_open,@function
gimp_unique_dbus_open:                  # @gimp_unique_dbus_open
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_unique_dbus_open, .Lfunc_end1-gimp_unique_dbus_open
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
