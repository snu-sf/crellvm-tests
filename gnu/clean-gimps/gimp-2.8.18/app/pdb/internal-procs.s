	.text
	.file	"internal-procs.bc"
	.globl	internal_procs_init
	.align	16, 0x90
	.type	internal_procs_init,@function
internal_procs_init:                    # @internal_procs_init
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_pdb_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.internal_procs_init, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_13
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	register_brush_procs
	movq	-8(%rbp), %rdi
	callq	register_brush_select_procs
	movq	-8(%rbp), %rdi
	callq	register_brushes_procs
	movq	-8(%rbp), %rdi
	callq	register_buffer_procs
	movq	-8(%rbp), %rdi
	callq	register_channel_procs
	movq	-8(%rbp), %rdi
	callq	register_color_procs
	movq	-8(%rbp), %rdi
	callq	register_context_procs
	movq	-8(%rbp), %rdi
	callq	register_convert_procs
	movq	-8(%rbp), %rdi
	callq	register_display_procs
	movq	-8(%rbp), %rdi
	callq	register_drawable_procs
	movq	-8(%rbp), %rdi
	callq	register_drawable_transform_procs
	movq	-8(%rbp), %rdi
	callq	register_dynamics_procs
	movq	-8(%rbp), %rdi
	callq	register_edit_procs
	movq	-8(%rbp), %rdi
	callq	register_fileops_procs
	movq	-8(%rbp), %rdi
	callq	register_floating_sel_procs
	movq	-8(%rbp), %rdi
	callq	register_font_select_procs
	movq	-8(%rbp), %rdi
	callq	register_fonts_procs
	movq	-8(%rbp), %rdi
	callq	register_gimp_procs
	movq	-8(%rbp), %rdi
	callq	register_gimprc_procs
	movq	-8(%rbp), %rdi
	callq	register_gradient_procs
	movq	-8(%rbp), %rdi
	callq	register_gradient_select_procs
	movq	-8(%rbp), %rdi
	callq	register_gradients_procs
	movq	-8(%rbp), %rdi
	callq	register_grid_procs
	movq	-8(%rbp), %rdi
	callq	register_guides_procs
	movq	-8(%rbp), %rdi
	callq	register_help_procs
	movq	-8(%rbp), %rdi
	callq	register_image_procs
	movq	-8(%rbp), %rdi
	callq	register_image_select_procs
	movq	-8(%rbp), %rdi
	callq	register_item_procs
	movq	-8(%rbp), %rdi
	callq	register_item_transform_procs
	movq	-8(%rbp), %rdi
	callq	register_layer_procs
	movq	-8(%rbp), %rdi
	callq	register_message_procs
	movq	-8(%rbp), %rdi
	callq	register_paint_tools_procs
	movq	-8(%rbp), %rdi
	callq	register_palette_procs
	movq	-8(%rbp), %rdi
	callq	register_palette_select_procs
	movq	-8(%rbp), %rdi
	callq	register_palettes_procs
	movq	-8(%rbp), %rdi
	callq	register_paths_procs
	movq	-8(%rbp), %rdi
	callq	register_pattern_procs
	movq	-8(%rbp), %rdi
	callq	register_pattern_select_procs
	movq	-8(%rbp), %rdi
	callq	register_patterns_procs
	movq	-8(%rbp), %rdi
	callq	register_plug_in_procs
	movq	-8(%rbp), %rdi
	callq	register_procedural_db_procs
	movq	-8(%rbp), %rdi
	callq	register_progress_procs
	movq	-8(%rbp), %rdi
	callq	register_selection_procs
	movq	-8(%rbp), %rdi
	callq	register_selection_tools_procs
	movq	-8(%rbp), %rdi
	callq	register_text_layer_procs
	movq	-8(%rbp), %rdi
	callq	register_text_tool_procs
	movq	-8(%rbp), %rdi
	callq	register_transform_tools_procs
	movq	-8(%rbp), %rdi
	callq	register_undo_procs
	movq	-8(%rbp), %rdi
	callq	register_unit_procs
	movq	-8(%rbp), %rdi
	callq	register_vectors_procs
.LBB0_13:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	internal_procs_init, .Lfunc_end0-internal_procs_init
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-PDB"
	.size	.L.str, 9

	.type	.L__func__.internal_procs_init,@object # @__func__.internal_procs_init
.L__func__.internal_procs_init:
	.asciz	"internal_procs_init"
	.size	.L__func__.internal_procs_init, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_PDB (pdb)"
	.size	.L.str.1, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
