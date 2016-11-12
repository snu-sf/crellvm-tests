	.text
	.file	"gimpimage.bc"
	.globl	gimp_image_get_colormap
	.align	16, 0x90
	.type	gimp_image_get_colormap,@function
gimp_image_get_colormap:                # @gimp_image_get_colormap
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
	subq	$48, %rsp
	leaq	-20(%rbp), %rax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	movq	%rax, %rsi
	callq	_gimp_image_get_colormap
	movq	%rax, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB0_2
# BB#1:                                 # %if.then
	movl	$3, %eax
	movl	-20(%rbp), %ecx
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-36(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movq	-16(%rbp), %rsi
	movl	%eax, (%rsi)
.LBB0_2:                                # %if.end
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_image_get_colormap, .Lfunc_end0-gimp_image_get_colormap
	.cfi_endproc

	.globl	gimp_image_set_colormap
	.align	16, 0x90
	.type	gimp_image_set_colormap,@function
gimp_image_set_colormap:                # @gimp_image_set_colormap
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
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-4(%rbp), %edi
	imull	$3, -20(%rbp), %esi
	movq	-16(%rbp), %rdx
	callq	_gimp_image_set_colormap
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_image_set_colormap, .Lfunc_end1-gimp_image_set_colormap
	.cfi_endproc

	.globl	gimp_image_get_thumbnail_data
	.align	16, 0x90
	.type	gimp_image_get_thumbnail_data,@function
gimp_image_get_thumbnail_data:          # @gimp_image_get_thumbnail_data
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
	subq	$96, %rsp
	leaq	-36(%rbp), %rax
	leaq	-40(%rbp), %r8
	leaq	-52(%rbp), %r9
	leaq	-48(%rbp), %r10
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-24(%rbp), %rcx
	movl	(%rcx), %edx
	movq	-32(%rbp), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-72(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movq	%r10, 8(%rsp)
	callq	_gimp_image_thumbnail
	movl	-36(%rbp), %edx
	movq	-16(%rbp), %rcx
	movl	%edx, (%rcx)
	movl	-40(%rbp), %edx
	movq	-24(%rbp), %rcx
	movl	%edx, (%rcx)
	movq	-48(%rbp), %rcx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movq	%rcx, %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_image_get_thumbnail_data, .Lfunc_end2-gimp_image_get_thumbnail_data
	.cfi_endproc

	.globl	gimp_image_get_cmap
	.align	16, 0x90
	.type	gimp_image_get_cmap,@function
gimp_image_get_cmap:                    # @gimp_image_get_cmap
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
	callq	gimp_image_get_colormap@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_image_get_cmap, .Lfunc_end3-gimp_image_get_cmap
	.cfi_endproc

	.globl	gimp_image_set_cmap
	.align	16, 0x90
	.type	gimp_image_set_cmap,@function
gimp_image_set_cmap:                    # @gimp_image_set_cmap
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
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	gimp_image_set_colormap@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_image_set_cmap, .Lfunc_end4-gimp_image_set_cmap
	.cfi_endproc

	.globl	gimp_image_get_layer_position
	.align	16, 0x90
	.type	gimp_image_get_layer_position,@function
gimp_image_get_layer_position:          # @gimp_image_get_layer_position
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
	callq	gimp_image_get_item_position@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_image_get_layer_position, .Lfunc_end5-gimp_image_get_layer_position
	.cfi_endproc

	.globl	gimp_image_raise_layer
	.align	16, 0x90
	.type	gimp_image_raise_layer,@function
gimp_image_raise_layer:                 # @gimp_image_raise_layer
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
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	gimp_image_raise_item@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_image_raise_layer, .Lfunc_end6-gimp_image_raise_layer
	.cfi_endproc

	.globl	gimp_image_lower_layer
	.align	16, 0x90
	.type	gimp_image_lower_layer,@function
gimp_image_lower_layer:                 # @gimp_image_lower_layer
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
	callq	gimp_image_lower_item@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_image_lower_layer, .Lfunc_end7-gimp_image_lower_layer
	.cfi_endproc

	.globl	gimp_image_raise_layer_to_top
	.align	16, 0x90
	.type	gimp_image_raise_layer_to_top,@function
gimp_image_raise_layer_to_top:          # @gimp_image_raise_layer_to_top
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
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	gimp_image_raise_item_to_top@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_image_raise_layer_to_top, .Lfunc_end8-gimp_image_raise_layer_to_top
	.cfi_endproc

	.globl	gimp_image_lower_layer_to_bottom
	.align	16, 0x90
	.type	gimp_image_lower_layer_to_bottom,@function
gimp_image_lower_layer_to_bottom:       # @gimp_image_lower_layer_to_bottom
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
	callq	gimp_image_lower_item_to_bottom@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_image_lower_layer_to_bottom, .Lfunc_end9-gimp_image_lower_layer_to_bottom
	.cfi_endproc

	.globl	gimp_image_get_channel_position
	.align	16, 0x90
	.type	gimp_image_get_channel_position,@function
gimp_image_get_channel_position:        # @gimp_image_get_channel_position
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
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	gimp_image_get_item_position@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_image_get_channel_position, .Lfunc_end10-gimp_image_get_channel_position
	.cfi_endproc

	.globl	gimp_image_raise_channel
	.align	16, 0x90
	.type	gimp_image_raise_channel,@function
gimp_image_raise_channel:               # @gimp_image_raise_channel
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
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	gimp_image_raise_item@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_image_raise_channel, .Lfunc_end11-gimp_image_raise_channel
	.cfi_endproc

	.globl	gimp_image_lower_channel
	.align	16, 0x90
	.type	gimp_image_lower_channel,@function
gimp_image_lower_channel:               # @gimp_image_lower_channel
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
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	gimp_image_lower_item@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_image_lower_channel, .Lfunc_end12-gimp_image_lower_channel
	.cfi_endproc

	.globl	gimp_image_get_vectors_position
	.align	16, 0x90
	.type	gimp_image_get_vectors_position,@function
gimp_image_get_vectors_position:        # @gimp_image_get_vectors_position
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	gimp_image_get_item_position@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_image_get_vectors_position, .Lfunc_end13-gimp_image_get_vectors_position
	.cfi_endproc

	.globl	gimp_image_raise_vectors
	.align	16, 0x90
	.type	gimp_image_raise_vectors,@function
gimp_image_raise_vectors:               # @gimp_image_raise_vectors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	gimp_image_raise_item@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_image_raise_vectors, .Lfunc_end14-gimp_image_raise_vectors
	.cfi_endproc

	.globl	gimp_image_lower_vectors
	.align	16, 0x90
	.type	gimp_image_lower_vectors,@function
gimp_image_lower_vectors:               # @gimp_image_lower_vectors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	gimp_image_lower_item@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_image_lower_vectors, .Lfunc_end15-gimp_image_lower_vectors
	.cfi_endproc

	.globl	gimp_image_raise_vectors_to_top
	.align	16, 0x90
	.type	gimp_image_raise_vectors_to_top,@function
gimp_image_raise_vectors_to_top:        # @gimp_image_raise_vectors_to_top
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	gimp_image_raise_item_to_top@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_image_raise_vectors_to_top, .Lfunc_end16-gimp_image_raise_vectors_to_top
	.cfi_endproc

	.globl	gimp_image_lower_vectors_to_bottom
	.align	16, 0x90
	.type	gimp_image_lower_vectors_to_bottom,@function
gimp_image_lower_vectors_to_bottom:     # @gimp_image_lower_vectors_to_bottom
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	gimp_image_lower_item_to_bottom@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_image_lower_vectors_to_bottom, .Lfunc_end17-gimp_image_lower_vectors_to_bottom
	.cfi_endproc

	.globl	gimp_image_parasite_find
	.align	16, 0x90
	.type	gimp_image_parasite_find,@function
gimp_image_parasite_find:               # @gimp_image_parasite_find
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	gimp_image_get_parasite@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_image_parasite_find, .Lfunc_end18-gimp_image_parasite_find
	.cfi_endproc

	.globl	gimp_image_parasite_attach
	.align	16, 0x90
	.type	gimp_image_parasite_attach,@function
gimp_image_parasite_attach:             # @gimp_image_parasite_attach
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	gimp_image_attach_parasite@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_image_parasite_attach, .Lfunc_end19-gimp_image_parasite_attach
	.cfi_endproc

	.globl	gimp_image_parasite_detach
	.align	16, 0x90
	.type	gimp_image_parasite_detach,@function
gimp_image_parasite_detach:             # @gimp_image_parasite_detach
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	gimp_image_detach_parasite@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_image_parasite_detach, .Lfunc_end20-gimp_image_parasite_detach
	.cfi_endproc

	.globl	gimp_image_parasite_list
	.align	16, 0x90
	.type	gimp_image_parasite_list,@function
gimp_image_parasite_list:               # @gimp_image_parasite_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	gimp_image_get_parasite_list@PLT
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
.Lfunc_end21:
	.size	gimp_image_parasite_list, .Lfunc_end21-gimp_image_parasite_list
	.cfi_endproc

	.globl	gimp_image_attach_new_parasite
	.align	16, 0x90
	.type	gimp_image_attach_new_parasite,@function
gimp_image_attach_new_parasite:         # @gimp_image_attach_new_parasite
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	gimp_parasite_new@PLT
	movq	%rax, -40(%rbp)
	movl	-4(%rbp), %edi
	movq	-40(%rbp), %rsi
	callq	gimp_image_attach_parasite@PLT
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_parasite_free@PLT
	movl	-44(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_image_attach_new_parasite, .Lfunc_end22-gimp_image_attach_new_parasite
	.cfi_endproc

	.hidden	_gimp_image_get_colormap
	.hidden	_gimp_image_set_colormap
	.hidden	_gimp_image_thumbnail

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
