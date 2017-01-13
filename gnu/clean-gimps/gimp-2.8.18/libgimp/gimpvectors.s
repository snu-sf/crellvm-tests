	.text
	.file	"gimpvectors.bc"
	.globl	gimp_vectors_is_valid
	.align	16, 0x90
	.type	gimp_vectors_is_valid,@function
gimp_vectors_is_valid:                  # @gimp_vectors_is_valid
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
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_item_is_valid@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_vectors_is_valid, .Lfunc_end0-gimp_vectors_is_valid
	.cfi_endproc

	.globl	gimp_vectors_get_image
	.align	16, 0x90
	.type	gimp_vectors_get_image,@function
gimp_vectors_get_image:                 # @gimp_vectors_get_image
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
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_item_get_image@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_vectors_get_image, .Lfunc_end1-gimp_vectors_get_image
	.cfi_endproc

	.globl	gimp_vectors_get_name
	.align	16, 0x90
	.type	gimp_vectors_get_name,@function
gimp_vectors_get_name:                  # @gimp_vectors_get_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_item_get_name@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_vectors_get_name, .Lfunc_end2-gimp_vectors_get_name
	.cfi_endproc

	.globl	gimp_vectors_set_name
	.align	16, 0x90
	.type	gimp_vectors_set_name,@function
gimp_vectors_set_name:                  # @gimp_vectors_set_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	gimp_item_set_name@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_vectors_set_name, .Lfunc_end3-gimp_vectors_set_name
	.cfi_endproc

	.globl	gimp_vectors_get_visible
	.align	16, 0x90
	.type	gimp_vectors_get_visible,@function
gimp_vectors_get_visible:               # @gimp_vectors_get_visible
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_item_get_visible@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_vectors_get_visible, .Lfunc_end4-gimp_vectors_get_visible
	.cfi_endproc

	.globl	gimp_vectors_set_visible
	.align	16, 0x90
	.type	gimp_vectors_set_visible,@function
gimp_vectors_set_visible:               # @gimp_vectors_set_visible
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	gimp_item_set_visible@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_vectors_set_visible, .Lfunc_end5-gimp_vectors_set_visible
	.cfi_endproc

	.globl	gimp_vectors_get_linked
	.align	16, 0x90
	.type	gimp_vectors_get_linked,@function
gimp_vectors_get_linked:                # @gimp_vectors_get_linked
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_item_get_linked@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_vectors_get_linked, .Lfunc_end6-gimp_vectors_get_linked
	.cfi_endproc

	.globl	gimp_vectors_set_linked
	.align	16, 0x90
	.type	gimp_vectors_set_linked,@function
gimp_vectors_set_linked:                # @gimp_vectors_set_linked
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	gimp_item_set_linked@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_vectors_set_linked, .Lfunc_end7-gimp_vectors_set_linked
	.cfi_endproc

	.globl	gimp_vectors_get_tattoo
	.align	16, 0x90
	.type	gimp_vectors_get_tattoo,@function
gimp_vectors_get_tattoo:                # @gimp_vectors_get_tattoo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_item_get_tattoo@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_vectors_get_tattoo, .Lfunc_end8-gimp_vectors_get_tattoo
	.cfi_endproc

	.globl	gimp_vectors_set_tattoo
	.align	16, 0x90
	.type	gimp_vectors_set_tattoo,@function
gimp_vectors_set_tattoo:                # @gimp_vectors_set_tattoo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	gimp_item_set_tattoo@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_vectors_set_tattoo, .Lfunc_end9-gimp_vectors_set_tattoo
	.cfi_endproc

	.globl	gimp_vectors_parasite_find
	.align	16, 0x90
	.type	gimp_vectors_parasite_find,@function
gimp_vectors_parasite_find:             # @gimp_vectors_parasite_find
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	gimp_item_get_parasite@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_vectors_parasite_find, .Lfunc_end10-gimp_vectors_parasite_find
	.cfi_endproc

	.globl	gimp_vectors_parasite_attach
	.align	16, 0x90
	.type	gimp_vectors_parasite_attach,@function
gimp_vectors_parasite_attach:           # @gimp_vectors_parasite_attach
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	gimp_item_attach_parasite@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_vectors_parasite_attach, .Lfunc_end11-gimp_vectors_parasite_attach
	.cfi_endproc

	.globl	gimp_vectors_parasite_detach
	.align	16, 0x90
	.type	gimp_vectors_parasite_detach,@function
gimp_vectors_parasite_detach:           # @gimp_vectors_parasite_detach
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	gimp_item_detach_parasite@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_vectors_parasite_detach, .Lfunc_end12-gimp_vectors_parasite_detach
	.cfi_endproc

	.globl	gimp_vectors_parasite_list
	.align	16, 0x90
	.type	gimp_vectors_parasite_list,@function
gimp_vectors_parasite_list:             # @gimp_vectors_parasite_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	gimp_item_get_parasite_list@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_vectors_parasite_list, .Lfunc_end13-gimp_vectors_parasite_list
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
