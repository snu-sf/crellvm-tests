	.text
	.file	"core-enums.bc"
	.globl	gimp_container_policy_get_type
	.align	16, 0x90
	.type	gimp_container_policy_get_type,@function
gimp_container_policy_get_type:         # @gimp_container_policy_get_type
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
	cmpq	$0, gimp_container_policy_get_type.type
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.4, %rdi
	movabsq	$gimp_container_policy_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.5, %rsi
	movq	%rax, gimp_container_policy_get_type.type
	movq	gimp_container_policy_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_container_policy_get_type.descs, %rsi
	movq	gimp_container_policy_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB0_2:                                # %if.end
	movq	gimp_container_policy_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_container_policy_get_type, .Lfunc_end0-gimp_container_policy_get_type
	.cfi_endproc

	.globl	gimp_convert_dither_type_get_type
	.align	16, 0x90
	.type	gimp_convert_dither_type_get_type,@function
gimp_convert_dither_type_get_type:      # @gimp_convert_dither_type_get_type
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
	cmpq	$0, gimp_convert_dither_type_get_type.type
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.18, %rdi
	movabsq	$gimp_convert_dither_type_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.19, %rsi
	movq	%rax, gimp_convert_dither_type_get_type.type
	movq	gimp_convert_dither_type_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_convert_dither_type_get_type.descs, %rsi
	movq	gimp_convert_dither_type_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB1_2:                                # %if.end
	movq	gimp_convert_dither_type_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_convert_dither_type_get_type, .Lfunc_end1-gimp_convert_dither_type_get_type
	.cfi_endproc

	.globl	gimp_convert_palette_type_get_type
	.align	16, 0x90
	.type	gimp_convert_palette_type_get_type,@function
gimp_convert_palette_type_get_type:     # @gimp_convert_palette_type_get_type
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
	cmpq	$0, gimp_convert_palette_type_get_type.type
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.32, %rdi
	movabsq	$gimp_convert_palette_type_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.33, %rsi
	movq	%rax, gimp_convert_palette_type_get_type.type
	movq	gimp_convert_palette_type_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_convert_palette_type_get_type.descs, %rsi
	movq	gimp_convert_palette_type_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB2_2:                                # %if.end
	movq	gimp_convert_palette_type_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_convert_palette_type_get_type, .Lfunc_end2-gimp_convert_palette_type_get_type
	.cfi_endproc

	.globl	gimp_gravity_type_get_type
	.align	16, 0x90
	.type	gimp_gravity_type_get_type,@function
gimp_gravity_type_get_type:             # @gimp_gravity_type_get_type
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
	cmpq	$0, gimp_gravity_type_get_type.type
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.54, %rdi
	movabsq	$gimp_gravity_type_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.55, %rsi
	movq	%rax, gimp_gravity_type_get_type.type
	movq	gimp_gravity_type_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_gravity_type_get_type.descs, %rsi
	movq	gimp_gravity_type_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB3_2:                                # %if.end
	movq	gimp_gravity_type_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_gravity_type_get_type, .Lfunc_end3-gimp_gravity_type_get_type
	.cfi_endproc

	.globl	gimp_alignment_type_get_type
	.align	16, 0x90
	.type	gimp_alignment_type_get_type,@function
gimp_alignment_type_get_type:           # @gimp_alignment_type_get_type
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
	cmpq	$0, gimp_alignment_type_get_type.type
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.80, %rdi
	movabsq	$gimp_alignment_type_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.81, %rsi
	movq	%rax, gimp_alignment_type_get_type.type
	movq	gimp_alignment_type_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_alignment_type_get_type.descs, %rsi
	movq	gimp_alignment_type_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB4_2:                                # %if.end
	movq	gimp_alignment_type_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_alignment_type_get_type, .Lfunc_end4-gimp_alignment_type_get_type
	.cfi_endproc

	.globl	gimp_align_reference_type_get_type
	.align	16, 0x90
	.type	gimp_align_reference_type_get_type,@function
gimp_align_reference_type_get_type:     # @gimp_align_reference_type_get_type
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
	cmpq	$0, gimp_align_reference_type_get_type.type
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.100, %rdi
	movabsq	$gimp_align_reference_type_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.101, %rsi
	movq	%rax, gimp_align_reference_type_get_type.type
	movq	gimp_align_reference_type_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_align_reference_type_get_type.descs, %rsi
	movq	gimp_align_reference_type_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB5_2:                                # %if.end
	movq	gimp_align_reference_type_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_align_reference_type_get_type, .Lfunc_end5-gimp_align_reference_type_get_type
	.cfi_endproc

	.globl	gimp_fill_type_get_type
	.align	16, 0x90
	.type	gimp_fill_type_get_type,@function
gimp_fill_type_get_type:                # @gimp_fill_type_get_type
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
	cmpq	$0, gimp_fill_type_get_type.type
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.119, %rdi
	movabsq	$gimp_fill_type_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.120, %rsi
	movq	%rax, gimp_fill_type_get_type.type
	movq	gimp_fill_type_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_fill_type_get_type.descs, %rsi
	movq	gimp_fill_type_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB6_2:                                # %if.end
	movq	gimp_fill_type_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_fill_type_get_type, .Lfunc_end6-gimp_fill_type_get_type
	.cfi_endproc

	.globl	gimp_fill_style_get_type
	.align	16, 0x90
	.type	gimp_fill_style_get_type,@function
gimp_fill_style_get_type:               # @gimp_fill_style_get_type
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
	cmpq	$0, gimp_fill_style_get_type.type
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.126, %rdi
	movabsq	$gimp_fill_style_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.127, %rsi
	movq	%rax, gimp_fill_style_get_type.type
	movq	gimp_fill_style_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_fill_style_get_type.descs, %rsi
	movq	gimp_fill_style_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB7_2:                                # %if.end
	movq	gimp_fill_style_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_fill_style_get_type, .Lfunc_end7-gimp_fill_style_get_type
	.cfi_endproc

	.globl	gimp_stroke_method_get_type
	.align	16, 0x90
	.type	gimp_stroke_method_get_type,@function
gimp_stroke_method_get_type:            # @gimp_stroke_method_get_type
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
	cmpq	$0, gimp_stroke_method_get_type.type
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.134, %rdi
	movabsq	$gimp_stroke_method_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.135, %rsi
	movq	%rax, gimp_stroke_method_get_type.type
	movq	gimp_stroke_method_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_stroke_method_get_type.descs, %rsi
	movq	gimp_stroke_method_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB8_2:                                # %if.end
	movq	gimp_stroke_method_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_stroke_method_get_type, .Lfunc_end8-gimp_stroke_method_get_type
	.cfi_endproc

	.globl	gimp_join_style_get_type
	.align	16, 0x90
	.type	gimp_join_style_get_type,@function
gimp_join_style_get_type:               # @gimp_join_style_get_type
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
	cmpq	$0, gimp_join_style_get_type.type
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.145, %rdi
	movabsq	$gimp_join_style_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.146, %rsi
	movq	%rax, gimp_join_style_get_type.type
	movq	gimp_join_style_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_join_style_get_type.descs, %rsi
	movq	gimp_join_style_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB9_2:                                # %if.end
	movq	gimp_join_style_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_join_style_get_type, .Lfunc_end9-gimp_join_style_get_type
	.cfi_endproc

	.globl	gimp_cap_style_get_type
	.align	16, 0x90
	.type	gimp_cap_style_get_type,@function
gimp_cap_style_get_type:                # @gimp_cap_style_get_type
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
	cmpq	$0, gimp_cap_style_get_type.type
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.154, %rdi
	movabsq	$gimp_cap_style_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.155, %rsi
	movq	%rax, gimp_cap_style_get_type.type
	movq	gimp_cap_style_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_cap_style_get_type.descs, %rsi
	movq	gimp_cap_style_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB10_2:                               # %if.end
	movq	gimp_cap_style_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_cap_style_get_type, .Lfunc_end10-gimp_cap_style_get_type
	.cfi_endproc

	.globl	gimp_dash_preset_get_type
	.align	16, 0x90
	.type	gimp_dash_preset_get_type,@function
gimp_dash_preset_get_type:              # @gimp_dash_preset_get_type
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
	cmpq	$0, gimp_dash_preset_get_type.type
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.189, %rdi
	movabsq	$gimp_dash_preset_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.190, %rsi
	movq	%rax, gimp_dash_preset_get_type.type
	movq	gimp_dash_preset_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_dash_preset_get_type.descs, %rsi
	movq	gimp_dash_preset_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB11_2:                               # %if.end
	movq	gimp_dash_preset_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_dash_preset_get_type, .Lfunc_end11-gimp_dash_preset_get_type
	.cfi_endproc

	.globl	gimp_brush_generated_shape_get_type
	.align	16, 0x90
	.type	gimp_brush_generated_shape_get_type,@function
gimp_brush_generated_shape_get_type:    # @gimp_brush_generated_shape_get_type
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
	cmpq	$0, gimp_brush_generated_shape_get_type.type
	jne	.LBB12_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.198, %rdi
	movabsq	$gimp_brush_generated_shape_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.199, %rsi
	movq	%rax, gimp_brush_generated_shape_get_type.type
	movq	gimp_brush_generated_shape_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_brush_generated_shape_get_type.descs, %rsi
	movq	gimp_brush_generated_shape_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB12_2:                               # %if.end
	movq	gimp_brush_generated_shape_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_brush_generated_shape_get_type, .Lfunc_end12-gimp_brush_generated_shape_get_type
	.cfi_endproc

	.globl	gimp_orientation_type_get_type
	.align	16, 0x90
	.type	gimp_orientation_type_get_type,@function
gimp_orientation_type_get_type:         # @gimp_orientation_type_get_type
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
	cmpq	$0, gimp_orientation_type_get_type.type
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.209, %rdi
	movabsq	$gimp_orientation_type_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.210, %rsi
	movq	%rax, gimp_orientation_type_get_type.type
	movq	gimp_orientation_type_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_orientation_type_get_type.descs, %rsi
	movq	gimp_orientation_type_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB13_2:                               # %if.end
	movq	gimp_orientation_type_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_orientation_type_get_type, .Lfunc_end13-gimp_orientation_type_get_type
	.cfi_endproc

	.globl	gimp_item_set_get_type
	.align	16, 0x90
	.type	gimp_item_set_get_type,@function
gimp_item_set_get_type:                 # @gimp_item_set_get_type
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
	cmpq	$0, gimp_item_set_get_type.type
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.224, %rdi
	movabsq	$gimp_item_set_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.225, %rsi
	movq	%rax, gimp_item_set_get_type.type
	movq	gimp_item_set_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_item_set_get_type.descs, %rsi
	movq	gimp_item_set_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB14_2:                               # %if.end
	movq	gimp_item_set_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_item_set_get_type, .Lfunc_end14-gimp_item_set_get_type
	.cfi_endproc

	.globl	gimp_rotation_type_get_type
	.align	16, 0x90
	.type	gimp_rotation_type_get_type,@function
gimp_rotation_type_get_type:            # @gimp_rotation_type_get_type
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
	cmpq	$0, gimp_rotation_type_get_type.type
	jne	.LBB15_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.232, %rdi
	movabsq	$gimp_rotation_type_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.233, %rsi
	movq	%rax, gimp_rotation_type_get_type.type
	movq	gimp_rotation_type_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_rotation_type_get_type.descs, %rsi
	movq	gimp_rotation_type_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB15_2:                               # %if.end
	movq	gimp_rotation_type_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_rotation_type_get_type, .Lfunc_end15-gimp_rotation_type_get_type
	.cfi_endproc

	.globl	gimp_view_size_get_type
	.align	16, 0x90
	.type	gimp_view_size_get_type,@function
gimp_view_size_get_type:                # @gimp_view_size_get_type
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
	cmpq	$0, gimp_view_size_get_type.type
	jne	.LBB16_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.261, %rdi
	movabsq	$gimp_view_size_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.262, %rsi
	movq	%rax, gimp_view_size_get_type.type
	movq	gimp_view_size_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_view_size_get_type.descs, %rsi
	movq	gimp_view_size_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB16_2:                               # %if.end
	movq	gimp_view_size_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_view_size_get_type, .Lfunc_end16-gimp_view_size_get_type
	.cfi_endproc

	.globl	gimp_view_type_get_type
	.align	16, 0x90
	.type	gimp_view_type_get_type,@function
gimp_view_type_get_type:                # @gimp_view_type_get_type
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
	cmpq	$0, gimp_view_type_get_type.type
	jne	.LBB17_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.269, %rdi
	movabsq	$gimp_view_type_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.270, %rsi
	movq	%rax, gimp_view_type_get_type.type
	movq	gimp_view_type_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_view_type_get_type.descs, %rsi
	movq	gimp_view_type_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB17_2:                               # %if.end
	movq	gimp_view_type_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_view_type_get_type, .Lfunc_end17-gimp_view_type_get_type
	.cfi_endproc

	.globl	gimp_thumbnail_size_get_type
	.align	16, 0x90
	.type	gimp_thumbnail_size_get_type,@function
gimp_thumbnail_size_get_type:           # @gimp_thumbnail_size_get_type
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
	cmpq	$0, gimp_thumbnail_size_get_type.type
	jne	.LBB18_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.278, %rdi
	movabsq	$gimp_thumbnail_size_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.279, %rsi
	movq	%rax, gimp_thumbnail_size_get_type.type
	movq	gimp_thumbnail_size_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_thumbnail_size_get_type.descs, %rsi
	movq	gimp_thumbnail_size_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB18_2:                               # %if.end
	movq	gimp_thumbnail_size_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_thumbnail_size_get_type, .Lfunc_end18-gimp_thumbnail_size_get_type
	.cfi_endproc

	.globl	gimp_undo_mode_get_type
	.align	16, 0x90
	.type	gimp_undo_mode_get_type,@function
gimp_undo_mode_get_type:                # @gimp_undo_mode_get_type
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
	cmpq	$0, gimp_undo_mode_get_type.type
	jne	.LBB19_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.284, %rdi
	movabsq	$gimp_undo_mode_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.285, %rsi
	movq	%rax, gimp_undo_mode_get_type.type
	movq	gimp_undo_mode_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_undo_mode_get_type.descs, %rsi
	movq	gimp_undo_mode_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB19_2:                               # %if.end
	movq	gimp_undo_mode_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_undo_mode_get_type, .Lfunc_end19-gimp_undo_mode_get_type
	.cfi_endproc

	.globl	gimp_undo_event_get_type
	.align	16, 0x90
	.type	gimp_undo_event_get_type,@function
gimp_undo_event_get_type:               # @gimp_undo_event_get_type
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
	cmpq	$0, gimp_undo_event_get_type.type
	jne	.LBB20_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.300, %rdi
	movabsq	$gimp_undo_event_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.301, %rsi
	movq	%rax, gimp_undo_event_get_type.type
	movq	gimp_undo_event_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_undo_event_get_type.descs, %rsi
	movq	gimp_undo_event_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB20_2:                               # %if.end
	movq	gimp_undo_event_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_undo_event_get_type, .Lfunc_end20-gimp_undo_event_get_type
	.cfi_endproc

	.globl	gimp_undo_type_get_type
	.align	16, 0x90
	.type	gimp_undo_type_get_type,@function
gimp_undo_type_get_type:                # @gimp_undo_type_get_type
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
	cmpq	$0, gimp_undo_type_get_type.type
	jne	.LBB21_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.529, %rdi
	movabsq	$gimp_undo_type_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.530, %rsi
	movq	%rax, gimp_undo_type_get_type.type
	movq	gimp_undo_type_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_undo_type_get_type.descs, %rsi
	movq	gimp_undo_type_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB21_2:                               # %if.end
	movq	gimp_undo_type_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_undo_type_get_type, .Lfunc_end21-gimp_undo_type_get_type
	.cfi_endproc

	.globl	gimp_dirty_mask_get_type
	.align	16, 0x90
	.type	gimp_dirty_mask_get_type,@function
gimp_dirty_mask_get_type:               # @gimp_dirty_mask_get_type
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
	cmpq	$0, gimp_dirty_mask_get_type.type
	jne	.LBB22_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.549, %rdi
	movabsq	$gimp_dirty_mask_get_type.values, %rsi
	callq	g_flags_register_static
	movabsq	$.L.str.550, %rsi
	movq	%rax, gimp_dirty_mask_get_type.type
	movq	gimp_dirty_mask_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_dirty_mask_get_type.descs, %rsi
	movq	gimp_dirty_mask_get_type.type, %rdi
	callq	gimp_flags_set_value_descriptions
.LBB22_2:                               # %if.end
	movq	gimp_dirty_mask_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_dirty_mask_get_type, .Lfunc_end22-gimp_dirty_mask_get_type
	.cfi_endproc

	.globl	gimp_offset_type_get_type
	.align	16, 0x90
	.type	gimp_offset_type_get_type,@function
gimp_offset_type_get_type:              # @gimp_offset_type_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_offset_type_get_type.type
	jne	.LBB23_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.555, %rdi
	movabsq	$gimp_offset_type_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.556, %rsi
	movq	%rax, gimp_offset_type_get_type.type
	movq	gimp_offset_type_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_offset_type_get_type.descs, %rsi
	movq	gimp_offset_type_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB23_2:                               # %if.end
	movq	gimp_offset_type_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_offset_type_get_type, .Lfunc_end23-gimp_offset_type_get_type
	.cfi_endproc

	.globl	gimp_gradient_color_get_type
	.align	16, 0x90
	.type	gimp_gradient_color_get_type,@function
gimp_gradient_color_get_type:           # @gimp_gradient_color_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_gradient_color_get_type.type
	jne	.LBB24_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.566, %rdi
	movabsq	$gimp_gradient_color_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.567, %rsi
	movq	%rax, gimp_gradient_color_get_type.type
	movq	gimp_gradient_color_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_gradient_color_get_type.descs, %rsi
	movq	gimp_gradient_color_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB24_2:                               # %if.end
	movq	gimp_gradient_color_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_gradient_color_get_type, .Lfunc_end24-gimp_gradient_color_get_type
	.cfi_endproc

	.globl	gimp_gradient_segment_type_get_type
	.align	16, 0x90
	.type	gimp_gradient_segment_type_get_type,@function
gimp_gradient_segment_type_get_type:    # @gimp_gradient_segment_type_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_gradient_segment_type_get_type.type
	jne	.LBB25_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.578, %rdi
	movabsq	$gimp_gradient_segment_type_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.579, %rsi
	movq	%rax, gimp_gradient_segment_type_get_type.type
	movq	gimp_gradient_segment_type_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_gradient_segment_type_get_type.descs, %rsi
	movq	gimp_gradient_segment_type_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB25_2:                               # %if.end
	movq	gimp_gradient_segment_type_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_gradient_segment_type_get_type, .Lfunc_end25-gimp_gradient_segment_type_get_type
	.cfi_endproc

	.globl	gimp_gradient_segment_color_get_type
	.align	16, 0x90
	.type	gimp_gradient_segment_color_get_type,@function
gimp_gradient_segment_color_get_type:   # @gimp_gradient_segment_color_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_gradient_segment_color_get_type.type
	jne	.LBB26_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.586, %rdi
	movabsq	$gimp_gradient_segment_color_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.587, %rsi
	movq	%rax, gimp_gradient_segment_color_get_type.type
	movq	gimp_gradient_segment_color_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_gradient_segment_color_get_type.descs, %rsi
	movq	gimp_gradient_segment_color_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB26_2:                               # %if.end
	movq	gimp_gradient_segment_color_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_gradient_segment_color_get_type, .Lfunc_end26-gimp_gradient_segment_color_get_type
	.cfi_endproc

	.globl	gimp_mask_apply_mode_get_type
	.align	16, 0x90
	.type	gimp_mask_apply_mode_get_type,@function
gimp_mask_apply_mode_get_type:          # @gimp_mask_apply_mode_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_mask_apply_mode_get_type.type
	jne	.LBB27_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.592, %rdi
	movabsq	$gimp_mask_apply_mode_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.593, %rsi
	movq	%rax, gimp_mask_apply_mode_get_type.type
	movq	gimp_mask_apply_mode_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_mask_apply_mode_get_type.descs, %rsi
	movq	gimp_mask_apply_mode_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB27_2:                               # %if.end
	movq	gimp_mask_apply_mode_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_mask_apply_mode_get_type, .Lfunc_end27-gimp_mask_apply_mode_get_type
	.cfi_endproc

	.globl	gimp_merge_type_get_type
	.align	16, 0x90
	.type	gimp_merge_type_get_type,@function
gimp_merge_type_get_type:               # @gimp_merge_type_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_merge_type_get_type.type
	jne	.LBB28_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.602, %rdi
	movabsq	$gimp_merge_type_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.603, %rsi
	movq	%rax, gimp_merge_type_get_type.type
	movq	gimp_merge_type_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_merge_type_get_type.descs, %rsi
	movq	gimp_merge_type_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB28_2:                               # %if.end
	movq	gimp_merge_type_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_merge_type_get_type, .Lfunc_end28-gimp_merge_type_get_type
	.cfi_endproc

	.globl	gimp_select_criterion_get_type
	.align	16, 0x90
	.type	gimp_select_criterion_get_type,@function
gimp_select_criterion_get_type:         # @gimp_select_criterion_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_select_criterion_get_type.type
	jne	.LBB29_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.625, %rdi
	movabsq	$gimp_select_criterion_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.626, %rsi
	movq	%rax, gimp_select_criterion_get_type.type
	movq	gimp_select_criterion_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_select_criterion_get_type.descs, %rsi
	movq	gimp_select_criterion_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB29_2:                               # %if.end
	movq	gimp_select_criterion_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_select_criterion_get_type, .Lfunc_end29-gimp_select_criterion_get_type
	.cfi_endproc

	.globl	gimp_message_severity_get_type
	.align	16, 0x90
	.type	gimp_message_severity_get_type,@function
gimp_message_severity_get_type:         # @gimp_message_severity_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_message_severity_get_type.type
	jne	.LBB30_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.636, %rdi
	movabsq	$gimp_message_severity_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.637, %rsi
	movq	%rax, gimp_message_severity_get_type.type
	movq	gimp_message_severity_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_message_severity_get_type.descs, %rsi
	movq	gimp_message_severity_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB30_2:                               # %if.end
	movq	gimp_message_severity_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_message_severity_get_type, .Lfunc_end30-gimp_message_severity_get_type
	.cfi_endproc

	.globl	gimp_color_profile_policy_get_type
	.align	16, 0x90
	.type	gimp_color_profile_policy_get_type,@function
gimp_color_profile_policy_get_type:     # @gimp_color_profile_policy_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp95:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_color_profile_policy_get_type.type
	jne	.LBB31_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.647, %rdi
	movabsq	$gimp_color_profile_policy_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.648, %rsi
	movq	%rax, gimp_color_profile_policy_get_type.type
	movq	gimp_color_profile_policy_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_color_profile_policy_get_type.descs, %rsi
	movq	gimp_color_profile_policy_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB31_2:                               # %if.end
	movq	gimp_color_profile_policy_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_color_profile_policy_get_type, .Lfunc_end31-gimp_color_profile_policy_get_type
	.cfi_endproc

	.globl	gimp_dynamics_output_type_get_type
	.align	16, 0x90
	.type	gimp_dynamics_output_type_get_type,@function
gimp_dynamics_output_type_get_type:     # @gimp_dynamics_output_type_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_dynamics_output_type_get_type.type
	jne	.LBB32_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.682, %rdi
	movabsq	$gimp_dynamics_output_type_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.683, %rsi
	movq	%rax, gimp_dynamics_output_type_get_type.type
	movq	gimp_dynamics_output_type_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_dynamics_output_type_get_type.descs, %rsi
	movq	gimp_dynamics_output_type_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB32_2:                               # %if.end
	movq	gimp_dynamics_output_type_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_dynamics_output_type_get_type, .Lfunc_end32-gimp_dynamics_output_type_get_type
	.cfi_endproc

	.type	gimp_container_policy_get_type.values,@object # @gimp_container_policy_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_container_policy_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.3
	.zero	24
	.size	gimp_container_policy_get_type.values, 72

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GIMP_CONTAINER_POLICY_STRONG"
	.size	.L.str, 29

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"strong"
	.size	.L.str.1, 7

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_CONTAINER_POLICY_WEAK"
	.size	.L.str.2, 27

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"weak"
	.size	.L.str.3, 5

	.type	gimp_container_policy_get_type.descs,@object # @gimp_container_policy_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_container_policy_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.2
	.quad	0
	.zero	24
	.size	gimp_container_policy_get_type.descs, 72

	.type	gimp_container_policy_get_type.type,@object # @gimp_container_policy_get_type.type
	.local	gimp_container_policy_get_type.type
	.comm	gimp_container_policy_get_type.type,8,8
	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"GimpContainerPolicy"
	.size	.L.str.4, 20

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"container-policy"
	.size	.L.str.5, 17

	.type	gimp_convert_dither_type_get_type.values,@object # @gimp_convert_dither_type_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_convert_dither_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.9
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.10
	.quad	.L.str.11
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.12
	.quad	.L.str.13
	.zero	24
	.size	gimp_convert_dither_type_get_type.values, 120

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"GIMP_NO_DITHER"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"no-dither"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_FS_DITHER"
	.size	.L.str.8, 15

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"fs-dither"
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"GIMP_FSLOWBLEED_DITHER"
	.size	.L.str.10, 23

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"fslowbleed-dither"
	.size	.L.str.11, 18

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"GIMP_FIXED_DITHER"
	.size	.L.str.12, 18

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"fixed-dither"
	.size	.L.str.13, 13

	.type	gimp_convert_dither_type_get_type.descs,@object # @gimp_convert_dither_type_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_convert_dither_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.14
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.15
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.16
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.17
	.quad	0
	.zero	24
	.size	gimp_convert_dither_type_get_type.descs, 120

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"None"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Floyd-Steinberg (normal)"
	.size	.L.str.15, 25

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Floyd-Steinberg (reduced color bleeding)"
	.size	.L.str.16, 41

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Positioned"
	.size	.L.str.17, 11

	.type	gimp_convert_dither_type_get_type.type,@object # @gimp_convert_dither_type_get_type.type
	.local	gimp_convert_dither_type_get_type.type
	.comm	gimp_convert_dither_type_get_type.type,8,8
	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"GimpConvertDitherType"
	.size	.L.str.18, 22

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"convert-dither-type"
	.size	.L.str.19, 20

	.type	gimp_convert_palette_type_get_type.values,@object # @gimp_convert_palette_type_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_convert_palette_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.20
	.quad	.L.str.21
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.22
	.quad	.L.str.23
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.24
	.quad	.L.str.25
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.26
	.quad	.L.str.27
	.zero	24
	.size	gimp_convert_palette_type_get_type.values, 120

	.type	.L.str.20,@object       # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"GIMP_MAKE_PALETTE"
	.size	.L.str.20, 18

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"make-palette"
	.size	.L.str.21, 13

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"GIMP_WEB_PALETTE"
	.size	.L.str.22, 17

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"web-palette"
	.size	.L.str.23, 12

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"GIMP_MONO_PALETTE"
	.size	.L.str.24, 18

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"mono-palette"
	.size	.L.str.25, 13

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"GIMP_CUSTOM_PALETTE"
	.size	.L.str.26, 20

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"custom-palette"
	.size	.L.str.27, 15

	.type	gimp_convert_palette_type_get_type.descs,@object # @gimp_convert_palette_type_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_convert_palette_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.28
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.29
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.30
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.31
	.quad	0
	.zero	24
	.size	gimp_convert_palette_type_get_type.descs, 120

	.type	.L.str.28,@object       # @.str.28
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	"Generate optimum palette"
	.size	.L.str.28, 25

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Use web-optimized palette"
	.size	.L.str.29, 26

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Use black and white (1-bit) palette"
	.size	.L.str.30, 36

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Use custom palette"
	.size	.L.str.31, 19

	.type	gimp_convert_palette_type_get_type.type,@object # @gimp_convert_palette_type_get_type.type
	.local	gimp_convert_palette_type_get_type.type
	.comm	gimp_convert_palette_type_get_type.type,8,8
	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"GimpConvertPaletteType"
	.size	.L.str.32, 23

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"convert-palette-type"
	.size	.L.str.33, 21

	.type	gimp_gravity_type_get_type.values,@object # @gimp_gravity_type_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_gravity_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.34
	.quad	.L.str.35
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.36
	.quad	.L.str.37
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.38
	.quad	.L.str.39
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.40
	.quad	.L.str.41
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.42
	.quad	.L.str.43
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.44
	.quad	.L.str.45
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.46
	.quad	.L.str.47
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.48
	.quad	.L.str.49
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.50
	.quad	.L.str.51
	.long	9                       # 0x9
	.zero	4
	.quad	.L.str.52
	.quad	.L.str.53
	.zero	24
	.size	gimp_gravity_type_get_type.values, 264

	.type	.L.str.34,@object       # @.str.34
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.34:
	.asciz	"GIMP_GRAVITY_NONE"
	.size	.L.str.34, 18

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"none"
	.size	.L.str.35, 5

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"GIMP_GRAVITY_NORTH_WEST"
	.size	.L.str.36, 24

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"north-west"
	.size	.L.str.37, 11

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"GIMP_GRAVITY_NORTH"
	.size	.L.str.38, 19

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"north"
	.size	.L.str.39, 6

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"GIMP_GRAVITY_NORTH_EAST"
	.size	.L.str.40, 24

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"north-east"
	.size	.L.str.41, 11

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"GIMP_GRAVITY_WEST"
	.size	.L.str.42, 18

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"west"
	.size	.L.str.43, 5

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"GIMP_GRAVITY_CENTER"
	.size	.L.str.44, 20

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"center"
	.size	.L.str.45, 7

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"GIMP_GRAVITY_EAST"
	.size	.L.str.46, 18

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"east"
	.size	.L.str.47, 5

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"GIMP_GRAVITY_SOUTH_WEST"
	.size	.L.str.48, 24

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"south-west"
	.size	.L.str.49, 11

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"GIMP_GRAVITY_SOUTH"
	.size	.L.str.50, 19

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"south"
	.size	.L.str.51, 6

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"GIMP_GRAVITY_SOUTH_EAST"
	.size	.L.str.52, 24

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"south-east"
	.size	.L.str.53, 11

	.type	gimp_gravity_type_get_type.descs,@object # @gimp_gravity_type_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_gravity_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.34
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.36
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.38
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.40
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.42
	.quad	0
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.44
	.quad	0
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.46
	.quad	0
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.48
	.quad	0
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.50
	.quad	0
	.long	9                       # 0x9
	.zero	4
	.quad	.L.str.52
	.quad	0
	.zero	24
	.size	gimp_gravity_type_get_type.descs, 264

	.type	gimp_gravity_type_get_type.type,@object # @gimp_gravity_type_get_type.type
	.local	gimp_gravity_type_get_type.type
	.comm	gimp_gravity_type_get_type.type,8,8
	.type	.L.str.54,@object       # @.str.54
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.54:
	.asciz	"GimpGravityType"
	.size	.L.str.54, 16

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"gravity-type"
	.size	.L.str.55, 13

	.type	gimp_alignment_type_get_type.values,@object # @gimp_alignment_type_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_alignment_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.56
	.quad	.L.str.57
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.58
	.quad	.L.str.59
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.60
	.quad	.L.str.61
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.62
	.quad	.L.str.63
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.64
	.quad	.L.str.65
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.66
	.quad	.L.str.67
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.68
	.quad	.L.str.69
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.70
	.quad	.L.str.71
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.72
	.quad	.L.str.73
	.long	9                       # 0x9
	.zero	4
	.quad	.L.str.74
	.quad	.L.str.75
	.long	10                      # 0xa
	.zero	4
	.quad	.L.str.76
	.quad	.L.str.77
	.long	11                      # 0xb
	.zero	4
	.quad	.L.str.78
	.quad	.L.str.79
	.zero	24
	.size	gimp_alignment_type_get_type.values, 312

	.type	.L.str.56,@object       # @.str.56
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.56:
	.asciz	"GIMP_ALIGN_LEFT"
	.size	.L.str.56, 16

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"align-left"
	.size	.L.str.57, 11

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"GIMP_ALIGN_HCENTER"
	.size	.L.str.58, 19

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"align-hcenter"
	.size	.L.str.59, 14

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"GIMP_ALIGN_RIGHT"
	.size	.L.str.60, 17

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"align-right"
	.size	.L.str.61, 12

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"GIMP_ALIGN_TOP"
	.size	.L.str.62, 15

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"align-top"
	.size	.L.str.63, 10

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"GIMP_ALIGN_VCENTER"
	.size	.L.str.64, 19

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"align-vcenter"
	.size	.L.str.65, 14

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"GIMP_ALIGN_BOTTOM"
	.size	.L.str.66, 18

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"align-bottom"
	.size	.L.str.67, 13

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"GIMP_ARRANGE_LEFT"
	.size	.L.str.68, 18

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"arrange-left"
	.size	.L.str.69, 13

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"GIMP_ARRANGE_HCENTER"
	.size	.L.str.70, 21

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"arrange-hcenter"
	.size	.L.str.71, 16

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"GIMP_ARRANGE_RIGHT"
	.size	.L.str.72, 19

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"arrange-right"
	.size	.L.str.73, 14

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"GIMP_ARRANGE_TOP"
	.size	.L.str.74, 17

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"arrange-top"
	.size	.L.str.75, 12

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"GIMP_ARRANGE_VCENTER"
	.size	.L.str.76, 21

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"arrange-vcenter"
	.size	.L.str.77, 16

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"GIMP_ARRANGE_BOTTOM"
	.size	.L.str.78, 20

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"arrange-bottom"
	.size	.L.str.79, 15

	.type	gimp_alignment_type_get_type.descs,@object # @gimp_alignment_type_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_alignment_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.56
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.58
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.60
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.62
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.64
	.quad	0
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.66
	.quad	0
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.68
	.quad	0
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.70
	.quad	0
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.72
	.quad	0
	.long	9                       # 0x9
	.zero	4
	.quad	.L.str.74
	.quad	0
	.long	10                      # 0xa
	.zero	4
	.quad	.L.str.76
	.quad	0
	.long	11                      # 0xb
	.zero	4
	.quad	.L.str.78
	.quad	0
	.zero	24
	.size	gimp_alignment_type_get_type.descs, 312

	.type	gimp_alignment_type_get_type.type,@object # @gimp_alignment_type_get_type.type
	.local	gimp_alignment_type_get_type.type
	.comm	gimp_alignment_type_get_type.type,8,8
	.type	.L.str.80,@object       # @.str.80
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.80:
	.asciz	"GimpAlignmentType"
	.size	.L.str.80, 18

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"alignment-type"
	.size	.L.str.81, 15

	.type	gimp_align_reference_type_get_type.values,@object # @gimp_align_reference_type_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_align_reference_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.82
	.quad	.L.str.83
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.84
	.quad	.L.str.85
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.86
	.quad	.L.str.87
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.88
	.quad	.L.str.89
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.90
	.quad	.L.str.91
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.92
	.quad	.L.str.93
	.zero	24
	.size	gimp_align_reference_type_get_type.values, 168

	.type	.L.str.82,@object       # @.str.82
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.82:
	.asciz	"GIMP_ALIGN_REFERENCE_FIRST"
	.size	.L.str.82, 27

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"first"
	.size	.L.str.83, 6

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"GIMP_ALIGN_REFERENCE_IMAGE"
	.size	.L.str.84, 27

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"image"
	.size	.L.str.85, 6

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"GIMP_ALIGN_REFERENCE_SELECTION"
	.size	.L.str.86, 31

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"selection"
	.size	.L.str.87, 10

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"GIMP_ALIGN_REFERENCE_ACTIVE_LAYER"
	.size	.L.str.88, 34

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"active-layer"
	.size	.L.str.89, 13

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"GIMP_ALIGN_REFERENCE_ACTIVE_CHANNEL"
	.size	.L.str.90, 36

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"active-channel"
	.size	.L.str.91, 15

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"GIMP_ALIGN_REFERENCE_ACTIVE_PATH"
	.size	.L.str.92, 33

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"active-path"
	.size	.L.str.93, 12

	.type	gimp_align_reference_type_get_type.descs,@object # @gimp_align_reference_type_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_align_reference_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.94
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.95
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.96
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.97
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.98
	.quad	0
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.99
	.quad	0
	.zero	24
	.size	gimp_align_reference_type_get_type.descs, 168

	.type	.L.str.94,@object       # @.str.94
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.94:
	.asciz	"First item"
	.size	.L.str.94, 11

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"Image"
	.size	.L.str.95, 6

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"Selection"
	.size	.L.str.96, 10

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"Active layer"
	.size	.L.str.97, 13

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"Active channel"
	.size	.L.str.98, 15

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"Active path"
	.size	.L.str.99, 12

	.type	gimp_align_reference_type_get_type.type,@object # @gimp_align_reference_type_get_type.type
	.local	gimp_align_reference_type_get_type.type
	.comm	gimp_align_reference_type_get_type.type,8,8
	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"GimpAlignReferenceType"
	.size	.L.str.100, 23

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"align-reference-type"
	.size	.L.str.101, 21

	.type	gimp_fill_type_get_type.values,@object # @gimp_fill_type_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_fill_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.102
	.quad	.L.str.103
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.104
	.quad	.L.str.105
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.106
	.quad	.L.str.107
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.108
	.quad	.L.str.109
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.110
	.quad	.L.str.111
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.112
	.quad	.L.str.113
	.zero	24
	.size	gimp_fill_type_get_type.values, 168

	.type	.L.str.102,@object      # @.str.102
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.102:
	.asciz	"GIMP_FOREGROUND_FILL"
	.size	.L.str.102, 21

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"foreground-fill"
	.size	.L.str.103, 16

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"GIMP_BACKGROUND_FILL"
	.size	.L.str.104, 21

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"background-fill"
	.size	.L.str.105, 16

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"GIMP_WHITE_FILL"
	.size	.L.str.106, 16

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"white-fill"
	.size	.L.str.107, 11

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"GIMP_TRANSPARENT_FILL"
	.size	.L.str.108, 22

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"transparent-fill"
	.size	.L.str.109, 17

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"GIMP_PATTERN_FILL"
	.size	.L.str.110, 18

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"pattern-fill"
	.size	.L.str.111, 13

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"GIMP_NO_FILL"
	.size	.L.str.112, 13

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"no-fill"
	.size	.L.str.113, 8

	.type	gimp_fill_type_get_type.descs,@object # @gimp_fill_type_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_fill_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.114
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.115
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.116
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.117
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.118
	.quad	0
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.14
	.quad	0
	.zero	24
	.size	gimp_fill_type_get_type.descs, 168

	.type	.L.str.114,@object      # @.str.114
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.114:
	.asciz	"Foreground color"
	.size	.L.str.114, 17

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"Background color"
	.size	.L.str.115, 17

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"White"
	.size	.L.str.116, 6

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"Transparency"
	.size	.L.str.117, 13

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"Pattern"
	.size	.L.str.118, 8

	.type	gimp_fill_type_get_type.type,@object # @gimp_fill_type_get_type.type
	.local	gimp_fill_type_get_type.type
	.comm	gimp_fill_type_get_type.type,8,8
	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"GimpFillType"
	.size	.L.str.119, 13

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"fill-type"
	.size	.L.str.120, 10

	.type	gimp_fill_style_get_type.values,@object # @gimp_fill_style_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_fill_style_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.121
	.quad	.L.str.122
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.123
	.quad	.L.str.124
	.zero	24
	.size	gimp_fill_style_get_type.values, 72

	.type	.L.str.121,@object      # @.str.121
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.121:
	.asciz	"GIMP_FILL_STYLE_SOLID"
	.size	.L.str.121, 22

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"solid"
	.size	.L.str.122, 6

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"GIMP_FILL_STYLE_PATTERN"
	.size	.L.str.123, 24

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"pattern"
	.size	.L.str.124, 8

	.type	gimp_fill_style_get_type.descs,@object # @gimp_fill_style_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_fill_style_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.125
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.118
	.quad	0
	.zero	24
	.size	gimp_fill_style_get_type.descs, 72

	.type	.L.str.125,@object      # @.str.125
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.125:
	.asciz	"Solid color"
	.size	.L.str.125, 12

	.type	gimp_fill_style_get_type.type,@object # @gimp_fill_style_get_type.type
	.local	gimp_fill_style_get_type.type
	.comm	gimp_fill_style_get_type.type,8,8
	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"GimpFillStyle"
	.size	.L.str.126, 14

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"fill-style"
	.size	.L.str.127, 11

	.type	gimp_stroke_method_get_type.values,@object # @gimp_stroke_method_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_stroke_method_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.128
	.quad	.L.str.129
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.130
	.quad	.L.str.131
	.zero	24
	.size	gimp_stroke_method_get_type.values, 72

	.type	.L.str.128,@object      # @.str.128
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.128:
	.asciz	"GIMP_STROKE_METHOD_LIBART"
	.size	.L.str.128, 26

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"libart"
	.size	.L.str.129, 7

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"GIMP_STROKE_METHOD_PAINT_CORE"
	.size	.L.str.130, 30

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"paint-core"
	.size	.L.str.131, 11

	.type	gimp_stroke_method_get_type.descs,@object # @gimp_stroke_method_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_stroke_method_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.132
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.133
	.quad	0
	.zero	24
	.size	gimp_stroke_method_get_type.descs, 72

	.type	.L.str.132,@object      # @.str.132
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.132:
	.asciz	"Stroke line"
	.size	.L.str.132, 12

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"Stroke with a paint tool"
	.size	.L.str.133, 25

	.type	gimp_stroke_method_get_type.type,@object # @gimp_stroke_method_get_type.type
	.local	gimp_stroke_method_get_type.type
	.comm	gimp_stroke_method_get_type.type,8,8
	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"GimpStrokeMethod"
	.size	.L.str.134, 17

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"stroke-method"
	.size	.L.str.135, 14

	.type	gimp_join_style_get_type.values,@object # @gimp_join_style_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_join_style_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.136
	.quad	.L.str.137
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.138
	.quad	.L.str.139
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.140
	.quad	.L.str.141
	.zero	24
	.size	gimp_join_style_get_type.values, 96

	.type	.L.str.136,@object      # @.str.136
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.136:
	.asciz	"GIMP_JOIN_MITER"
	.size	.L.str.136, 16

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"miter"
	.size	.L.str.137, 6

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"GIMP_JOIN_ROUND"
	.size	.L.str.138, 16

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"round"
	.size	.L.str.139, 6

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"GIMP_JOIN_BEVEL"
	.size	.L.str.140, 16

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"bevel"
	.size	.L.str.141, 6

	.type	gimp_join_style_get_type.descs,@object # @gimp_join_style_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_join_style_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.142
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.143
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.144
	.quad	0
	.zero	24
	.size	gimp_join_style_get_type.descs, 96

	.type	.L.str.142,@object      # @.str.142
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.142:
	.asciz	"Miter"
	.size	.L.str.142, 6

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"Round"
	.size	.L.str.143, 6

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"Bevel"
	.size	.L.str.144, 6

	.type	gimp_join_style_get_type.type,@object # @gimp_join_style_get_type.type
	.local	gimp_join_style_get_type.type
	.comm	gimp_join_style_get_type.type,8,8
	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"GimpJoinStyle"
	.size	.L.str.145, 14

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"join-style"
	.size	.L.str.146, 11

	.type	gimp_cap_style_get_type.values,@object # @gimp_cap_style_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_cap_style_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.147
	.quad	.L.str.148
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.149
	.quad	.L.str.139
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.150
	.quad	.L.str.151
	.zero	24
	.size	gimp_cap_style_get_type.values, 96

	.type	.L.str.147,@object      # @.str.147
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.147:
	.asciz	"GIMP_CAP_BUTT"
	.size	.L.str.147, 14

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"butt"
	.size	.L.str.148, 5

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"GIMP_CAP_ROUND"
	.size	.L.str.149, 15

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"GIMP_CAP_SQUARE"
	.size	.L.str.150, 16

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"square"
	.size	.L.str.151, 7

	.type	gimp_cap_style_get_type.descs,@object # @gimp_cap_style_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_cap_style_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.152
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.143
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.153
	.quad	0
	.zero	24
	.size	gimp_cap_style_get_type.descs, 96

	.type	.L.str.152,@object      # @.str.152
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.152:
	.asciz	"Butt"
	.size	.L.str.152, 5

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"Square"
	.size	.L.str.153, 7

	.type	gimp_cap_style_get_type.type,@object # @gimp_cap_style_get_type.type
	.local	gimp_cap_style_get_type.type
	.comm	gimp_cap_style_get_type.type,8,8
	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"GimpCapStyle"
	.size	.L.str.154, 13

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"cap-style"
	.size	.L.str.155, 10

	.type	gimp_dash_preset_get_type.values,@object # @gimp_dash_preset_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_dash_preset_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.156
	.quad	.L.str.157
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.158
	.quad	.L.str.159
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.160
	.quad	.L.str.161
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.162
	.quad	.L.str.163
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.164
	.quad	.L.str.165
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.166
	.quad	.L.str.167
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.168
	.quad	.L.str.169
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.170
	.quad	.L.str.171
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.172
	.quad	.L.str.173
	.long	9                       # 0x9
	.zero	4
	.quad	.L.str.174
	.quad	.L.str.175
	.long	10                      # 0xa
	.zero	4
	.quad	.L.str.176
	.quad	.L.str.177
	.zero	24
	.size	gimp_dash_preset_get_type.values, 288

	.type	.L.str.156,@object      # @.str.156
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.156:
	.asciz	"GIMP_DASH_CUSTOM"
	.size	.L.str.156, 17

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"custom"
	.size	.L.str.157, 7

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"GIMP_DASH_LINE"
	.size	.L.str.158, 15

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"line"
	.size	.L.str.159, 5

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"GIMP_DASH_LONG_DASH"
	.size	.L.str.160, 20

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"long-dash"
	.size	.L.str.161, 10

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"GIMP_DASH_MEDIUM_DASH"
	.size	.L.str.162, 22

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"medium-dash"
	.size	.L.str.163, 12

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"GIMP_DASH_SHORT_DASH"
	.size	.L.str.164, 21

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"short-dash"
	.size	.L.str.165, 11

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"GIMP_DASH_SPARSE_DOTS"
	.size	.L.str.166, 22

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"sparse-dots"
	.size	.L.str.167, 12

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"GIMP_DASH_NORMAL_DOTS"
	.size	.L.str.168, 22

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"normal-dots"
	.size	.L.str.169, 12

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"GIMP_DASH_DENSE_DOTS"
	.size	.L.str.170, 21

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"dense-dots"
	.size	.L.str.171, 11

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"GIMP_DASH_STIPPLES"
	.size	.L.str.172, 19

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"stipples"
	.size	.L.str.173, 9

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"GIMP_DASH_DASH_DOT"
	.size	.L.str.174, 19

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"dash-dot"
	.size	.L.str.175, 9

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"GIMP_DASH_DASH_DOT_DOT"
	.size	.L.str.176, 23

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"dash-dot-dot"
	.size	.L.str.177, 13

	.type	gimp_dash_preset_get_type.descs,@object # @gimp_dash_preset_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_dash_preset_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.178
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.179
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.180
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.181
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.182
	.quad	0
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.183
	.quad	0
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.184
	.quad	0
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.185
	.quad	0
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.186
	.quad	0
	.long	9                       # 0x9
	.zero	4
	.quad	.L.str.187
	.quad	0
	.long	10                      # 0xa
	.zero	4
	.quad	.L.str.188
	.quad	0
	.zero	24
	.size	gimp_dash_preset_get_type.descs, 288

	.type	.L.str.178,@object      # @.str.178
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.178:
	.asciz	"Custom"
	.size	.L.str.178, 7

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"Line"
	.size	.L.str.179, 5

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	"Long dashes"
	.size	.L.str.180, 12

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"Medium dashes"
	.size	.L.str.181, 14

	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	"Short dashes"
	.size	.L.str.182, 13

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"Sparse dots"
	.size	.L.str.183, 12

	.type	.L.str.184,@object      # @.str.184
.L.str.184:
	.asciz	"Normal dots"
	.size	.L.str.184, 12

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	"Dense dots"
	.size	.L.str.185, 11

	.type	.L.str.186,@object      # @.str.186
.L.str.186:
	.asciz	"Stipples"
	.size	.L.str.186, 9

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"Dash, dot"
	.size	.L.str.187, 10

	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	"Dash, dot, dot"
	.size	.L.str.188, 15

	.type	gimp_dash_preset_get_type.type,@object # @gimp_dash_preset_get_type.type
	.local	gimp_dash_preset_get_type.type
	.comm	gimp_dash_preset_get_type.type,8,8
	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	"GimpDashPreset"
	.size	.L.str.189, 15

	.type	.L.str.190,@object      # @.str.190
.L.str.190:
	.asciz	"dash-preset"
	.size	.L.str.190, 12

	.type	gimp_brush_generated_shape_get_type.values,@object # @gimp_brush_generated_shape_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_brush_generated_shape_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.191
	.quad	.L.str.192
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.193
	.quad	.L.str.151
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.194
	.quad	.L.str.195
	.zero	24
	.size	gimp_brush_generated_shape_get_type.values, 96

	.type	.L.str.191,@object      # @.str.191
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.191:
	.asciz	"GIMP_BRUSH_GENERATED_CIRCLE"
	.size	.L.str.191, 28

	.type	.L.str.192,@object      # @.str.192
.L.str.192:
	.asciz	"circle"
	.size	.L.str.192, 7

	.type	.L.str.193,@object      # @.str.193
.L.str.193:
	.asciz	"GIMP_BRUSH_GENERATED_SQUARE"
	.size	.L.str.193, 28

	.type	.L.str.194,@object      # @.str.194
.L.str.194:
	.asciz	"GIMP_BRUSH_GENERATED_DIAMOND"
	.size	.L.str.194, 29

	.type	.L.str.195,@object      # @.str.195
.L.str.195:
	.asciz	"diamond"
	.size	.L.str.195, 8

	.type	gimp_brush_generated_shape_get_type.descs,@object # @gimp_brush_generated_shape_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_brush_generated_shape_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.196
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.153
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.197
	.quad	0
	.zero	24
	.size	gimp_brush_generated_shape_get_type.descs, 96

	.type	.L.str.196,@object      # @.str.196
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.196:
	.asciz	"Circle"
	.size	.L.str.196, 7

	.type	.L.str.197,@object      # @.str.197
.L.str.197:
	.asciz	"Diamond"
	.size	.L.str.197, 8

	.type	gimp_brush_generated_shape_get_type.type,@object # @gimp_brush_generated_shape_get_type.type
	.local	gimp_brush_generated_shape_get_type.type
	.comm	gimp_brush_generated_shape_get_type.type,8,8
	.type	.L.str.198,@object      # @.str.198
.L.str.198:
	.asciz	"GimpBrushGeneratedShape"
	.size	.L.str.198, 24

	.type	.L.str.199,@object      # @.str.199
.L.str.199:
	.asciz	"brush-generated-shape"
	.size	.L.str.199, 22

	.type	gimp_orientation_type_get_type.values,@object # @gimp_orientation_type_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_orientation_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.200
	.quad	.L.str.201
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.202
	.quad	.L.str.203
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.204
	.quad	.L.str.205
	.zero	24
	.size	gimp_orientation_type_get_type.values, 96

	.type	.L.str.200,@object      # @.str.200
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.200:
	.asciz	"GIMP_ORIENTATION_HORIZONTAL"
	.size	.L.str.200, 28

	.type	.L.str.201,@object      # @.str.201
.L.str.201:
	.asciz	"horizontal"
	.size	.L.str.201, 11

	.type	.L.str.202,@object      # @.str.202
.L.str.202:
	.asciz	"GIMP_ORIENTATION_VERTICAL"
	.size	.L.str.202, 26

	.type	.L.str.203,@object      # @.str.203
.L.str.203:
	.asciz	"vertical"
	.size	.L.str.203, 9

	.type	.L.str.204,@object      # @.str.204
.L.str.204:
	.asciz	"GIMP_ORIENTATION_UNKNOWN"
	.size	.L.str.204, 25

	.type	.L.str.205,@object      # @.str.205
.L.str.205:
	.asciz	"unknown"
	.size	.L.str.205, 8

	.type	gimp_orientation_type_get_type.descs,@object # @gimp_orientation_type_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_orientation_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.206
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.207
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.208
	.quad	0
	.zero	24
	.size	gimp_orientation_type_get_type.descs, 96

	.type	.L.str.206,@object      # @.str.206
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.206:
	.asciz	"Horizontal"
	.size	.L.str.206, 11

	.type	.L.str.207,@object      # @.str.207
.L.str.207:
	.asciz	"Vertical"
	.size	.L.str.207, 9

	.type	.L.str.208,@object      # @.str.208
.L.str.208:
	.asciz	"Unknown"
	.size	.L.str.208, 8

	.type	gimp_orientation_type_get_type.type,@object # @gimp_orientation_type_get_type.type
	.local	gimp_orientation_type_get_type.type
	.comm	gimp_orientation_type_get_type.type,8,8
	.type	.L.str.209,@object      # @.str.209
.L.str.209:
	.asciz	"GimpOrientationType"
	.size	.L.str.209, 20

	.type	.L.str.210,@object      # @.str.210
.L.str.210:
	.asciz	"orientation-type"
	.size	.L.str.210, 17

	.type	gimp_item_set_get_type.values,@object # @gimp_item_set_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_item_set_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.211
	.quad	.L.str.35
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.212
	.quad	.L.str.213
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.214
	.quad	.L.str.215
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.216
	.quad	.L.str.217
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.218
	.quad	.L.str.219
	.zero	24
	.size	gimp_item_set_get_type.values, 144

	.type	.L.str.211,@object      # @.str.211
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.211:
	.asciz	"GIMP_ITEM_SET_NONE"
	.size	.L.str.211, 19

	.type	.L.str.212,@object      # @.str.212
.L.str.212:
	.asciz	"GIMP_ITEM_SET_ALL"
	.size	.L.str.212, 18

	.type	.L.str.213,@object      # @.str.213
.L.str.213:
	.asciz	"all"
	.size	.L.str.213, 4

	.type	.L.str.214,@object      # @.str.214
.L.str.214:
	.asciz	"GIMP_ITEM_SET_IMAGE_SIZED"
	.size	.L.str.214, 26

	.type	.L.str.215,@object      # @.str.215
.L.str.215:
	.asciz	"image-sized"
	.size	.L.str.215, 12

	.type	.L.str.216,@object      # @.str.216
.L.str.216:
	.asciz	"GIMP_ITEM_SET_VISIBLE"
	.size	.L.str.216, 22

	.type	.L.str.217,@object      # @.str.217
.L.str.217:
	.asciz	"visible"
	.size	.L.str.217, 8

	.type	.L.str.218,@object      # @.str.218
.L.str.218:
	.asciz	"GIMP_ITEM_SET_LINKED"
	.size	.L.str.218, 21

	.type	.L.str.219,@object      # @.str.219
.L.str.219:
	.asciz	"linked"
	.size	.L.str.219, 7

	.type	gimp_item_set_get_type.descs,@object # @gimp_item_set_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_item_set_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.14
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.220
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.221
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.222
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.223
	.quad	0
	.zero	24
	.size	gimp_item_set_get_type.descs, 144

	.type	.L.str.220,@object      # @.str.220
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.220:
	.asciz	"All layers"
	.size	.L.str.220, 11

	.type	.L.str.221,@object      # @.str.221
.L.str.221:
	.asciz	"Image-sized layers"
	.size	.L.str.221, 19

	.type	.L.str.222,@object      # @.str.222
.L.str.222:
	.asciz	"All visible layers"
	.size	.L.str.222, 19

	.type	.L.str.223,@object      # @.str.223
.L.str.223:
	.asciz	"All linked layers"
	.size	.L.str.223, 18

	.type	gimp_item_set_get_type.type,@object # @gimp_item_set_get_type.type
	.local	gimp_item_set_get_type.type
	.comm	gimp_item_set_get_type.type,8,8
	.type	.L.str.224,@object      # @.str.224
.L.str.224:
	.asciz	"GimpItemSet"
	.size	.L.str.224, 12

	.type	.L.str.225,@object      # @.str.225
.L.str.225:
	.asciz	"item-set"
	.size	.L.str.225, 9

	.type	gimp_rotation_type_get_type.values,@object # @gimp_rotation_type_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_rotation_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.226
	.quad	.L.str.227
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.228
	.quad	.L.str.229
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.230
	.quad	.L.str.231
	.zero	24
	.size	gimp_rotation_type_get_type.values, 96

	.type	.L.str.226,@object      # @.str.226
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.226:
	.asciz	"GIMP_ROTATE_90"
	.size	.L.str.226, 15

	.type	.L.str.227,@object      # @.str.227
.L.str.227:
	.asciz	"90"
	.size	.L.str.227, 3

	.type	.L.str.228,@object      # @.str.228
.L.str.228:
	.asciz	"GIMP_ROTATE_180"
	.size	.L.str.228, 16

	.type	.L.str.229,@object      # @.str.229
.L.str.229:
	.asciz	"180"
	.size	.L.str.229, 4

	.type	.L.str.230,@object      # @.str.230
.L.str.230:
	.asciz	"GIMP_ROTATE_270"
	.size	.L.str.230, 16

	.type	.L.str.231,@object      # @.str.231
.L.str.231:
	.asciz	"270"
	.size	.L.str.231, 4

	.type	gimp_rotation_type_get_type.descs,@object # @gimp_rotation_type_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_rotation_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.226
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.228
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.230
	.quad	0
	.zero	24
	.size	gimp_rotation_type_get_type.descs, 96

	.type	gimp_rotation_type_get_type.type,@object # @gimp_rotation_type_get_type.type
	.local	gimp_rotation_type_get_type.type
	.comm	gimp_rotation_type_get_type.type,8,8
	.type	.L.str.232,@object      # @.str.232
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.232:
	.asciz	"GimpRotationType"
	.size	.L.str.232, 17

	.type	.L.str.233,@object      # @.str.233
.L.str.233:
	.asciz	"rotation-type"
	.size	.L.str.233, 14

	.type	gimp_view_size_get_type.values,@object # @gimp_view_size_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_view_size_get_type.values:
	.long	12                      # 0xc
	.zero	4
	.quad	.L.str.234
	.quad	.L.str.235
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.236
	.quad	.L.str.237
	.long	24                      # 0x18
	.zero	4
	.quad	.L.str.238
	.quad	.L.str.239
	.long	32                      # 0x20
	.zero	4
	.quad	.L.str.240
	.quad	.L.str.241
	.long	48                      # 0x30
	.zero	4
	.quad	.L.str.242
	.quad	.L.str.243
	.long	64                      # 0x40
	.zero	4
	.quad	.L.str.244
	.quad	.L.str.245
	.long	96                      # 0x60
	.zero	4
	.quad	.L.str.246
	.quad	.L.str.247
	.long	128                     # 0x80
	.zero	4
	.quad	.L.str.248
	.quad	.L.str.249
	.long	192                     # 0xc0
	.zero	4
	.quad	.L.str.250
	.quad	.L.str.251
	.zero	24
	.size	gimp_view_size_get_type.values, 240

	.type	.L.str.234,@object      # @.str.234
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.234:
	.asciz	"GIMP_VIEW_SIZE_TINY"
	.size	.L.str.234, 20

	.type	.L.str.235,@object      # @.str.235
.L.str.235:
	.asciz	"tiny"
	.size	.L.str.235, 5

	.type	.L.str.236,@object      # @.str.236
.L.str.236:
	.asciz	"GIMP_VIEW_SIZE_EXTRA_SMALL"
	.size	.L.str.236, 27

	.type	.L.str.237,@object      # @.str.237
.L.str.237:
	.asciz	"extra-small"
	.size	.L.str.237, 12

	.type	.L.str.238,@object      # @.str.238
.L.str.238:
	.asciz	"GIMP_VIEW_SIZE_SMALL"
	.size	.L.str.238, 21

	.type	.L.str.239,@object      # @.str.239
.L.str.239:
	.asciz	"small"
	.size	.L.str.239, 6

	.type	.L.str.240,@object      # @.str.240
.L.str.240:
	.asciz	"GIMP_VIEW_SIZE_MEDIUM"
	.size	.L.str.240, 22

	.type	.L.str.241,@object      # @.str.241
.L.str.241:
	.asciz	"medium"
	.size	.L.str.241, 7

	.type	.L.str.242,@object      # @.str.242
.L.str.242:
	.asciz	"GIMP_VIEW_SIZE_LARGE"
	.size	.L.str.242, 21

	.type	.L.str.243,@object      # @.str.243
.L.str.243:
	.asciz	"large"
	.size	.L.str.243, 6

	.type	.L.str.244,@object      # @.str.244
.L.str.244:
	.asciz	"GIMP_VIEW_SIZE_EXTRA_LARGE"
	.size	.L.str.244, 27

	.type	.L.str.245,@object      # @.str.245
.L.str.245:
	.asciz	"extra-large"
	.size	.L.str.245, 12

	.type	.L.str.246,@object      # @.str.246
.L.str.246:
	.asciz	"GIMP_VIEW_SIZE_HUGE"
	.size	.L.str.246, 20

	.type	.L.str.247,@object      # @.str.247
.L.str.247:
	.asciz	"huge"
	.size	.L.str.247, 5

	.type	.L.str.248,@object      # @.str.248
.L.str.248:
	.asciz	"GIMP_VIEW_SIZE_ENORMOUS"
	.size	.L.str.248, 24

	.type	.L.str.249,@object      # @.str.249
.L.str.249:
	.asciz	"enormous"
	.size	.L.str.249, 9

	.type	.L.str.250,@object      # @.str.250
.L.str.250:
	.asciz	"GIMP_VIEW_SIZE_GIGANTIC"
	.size	.L.str.250, 24

	.type	.L.str.251,@object      # @.str.251
.L.str.251:
	.asciz	"gigantic"
	.size	.L.str.251, 9

	.type	gimp_view_size_get_type.descs,@object # @gimp_view_size_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_view_size_get_type.descs:
	.long	12                      # 0xc
	.zero	4
	.quad	.L.str.252
	.quad	0
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.253
	.quad	0
	.long	24                      # 0x18
	.zero	4
	.quad	.L.str.254
	.quad	0
	.long	32                      # 0x20
	.zero	4
	.quad	.L.str.255
	.quad	0
	.long	48                      # 0x30
	.zero	4
	.quad	.L.str.256
	.quad	0
	.long	64                      # 0x40
	.zero	4
	.quad	.L.str.257
	.quad	0
	.long	96                      # 0x60
	.zero	4
	.quad	.L.str.258
	.quad	0
	.long	128                     # 0x80
	.zero	4
	.quad	.L.str.259
	.quad	0
	.long	192                     # 0xc0
	.zero	4
	.quad	.L.str.260
	.quad	0
	.zero	24
	.size	gimp_view_size_get_type.descs, 240

	.type	.L.str.252,@object      # @.str.252
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.252:
	.asciz	"Tiny"
	.size	.L.str.252, 5

	.type	.L.str.253,@object      # @.str.253
.L.str.253:
	.asciz	"Very small"
	.size	.L.str.253, 11

	.type	.L.str.254,@object      # @.str.254
.L.str.254:
	.asciz	"Small"
	.size	.L.str.254, 6

	.type	.L.str.255,@object      # @.str.255
.L.str.255:
	.asciz	"Medium"
	.size	.L.str.255, 7

	.type	.L.str.256,@object      # @.str.256
.L.str.256:
	.asciz	"Large"
	.size	.L.str.256, 6

	.type	.L.str.257,@object      # @.str.257
.L.str.257:
	.asciz	"Very large"
	.size	.L.str.257, 11

	.type	.L.str.258,@object      # @.str.258
.L.str.258:
	.asciz	"Huge"
	.size	.L.str.258, 5

	.type	.L.str.259,@object      # @.str.259
.L.str.259:
	.asciz	"Enormous"
	.size	.L.str.259, 9

	.type	.L.str.260,@object      # @.str.260
.L.str.260:
	.asciz	"Gigantic"
	.size	.L.str.260, 9

	.type	gimp_view_size_get_type.type,@object # @gimp_view_size_get_type.type
	.local	gimp_view_size_get_type.type
	.comm	gimp_view_size_get_type.type,8,8
	.type	.L.str.261,@object      # @.str.261
.L.str.261:
	.asciz	"GimpViewSize"
	.size	.L.str.261, 13

	.type	.L.str.262,@object      # @.str.262
.L.str.262:
	.asciz	"view-size"
	.size	.L.str.262, 10

	.type	gimp_view_type_get_type.values,@object # @gimp_view_type_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_view_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.263
	.quad	.L.str.264
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.265
	.quad	.L.str.266
	.zero	24
	.size	gimp_view_type_get_type.values, 72

	.type	.L.str.263,@object      # @.str.263
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.263:
	.asciz	"GIMP_VIEW_TYPE_LIST"
	.size	.L.str.263, 20

	.type	.L.str.264,@object      # @.str.264
.L.str.264:
	.asciz	"list"
	.size	.L.str.264, 5

	.type	.L.str.265,@object      # @.str.265
.L.str.265:
	.asciz	"GIMP_VIEW_TYPE_GRID"
	.size	.L.str.265, 20

	.type	.L.str.266,@object      # @.str.266
.L.str.266:
	.asciz	"grid"
	.size	.L.str.266, 5

	.type	gimp_view_type_get_type.descs,@object # @gimp_view_type_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_view_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.267
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.268
	.quad	0
	.zero	24
	.size	gimp_view_type_get_type.descs, 72

	.type	.L.str.267,@object      # @.str.267
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.267:
	.asciz	"View as list"
	.size	.L.str.267, 13

	.type	.L.str.268,@object      # @.str.268
.L.str.268:
	.asciz	"View as grid"
	.size	.L.str.268, 13

	.type	gimp_view_type_get_type.type,@object # @gimp_view_type_get_type.type
	.local	gimp_view_type_get_type.type
	.comm	gimp_view_type_get_type.type,8,8
	.type	.L.str.269,@object      # @.str.269
.L.str.269:
	.asciz	"GimpViewType"
	.size	.L.str.269, 13

	.type	.L.str.270,@object      # @.str.270
.L.str.270:
	.asciz	"view-type"
	.size	.L.str.270, 10

	.type	gimp_thumbnail_size_get_type.values,@object # @gimp_thumbnail_size_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_thumbnail_size_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.271
	.quad	.L.str.35
	.long	128                     # 0x80
	.zero	4
	.quad	.L.str.272
	.quad	.L.str.273
	.long	256                     # 0x100
	.zero	4
	.quad	.L.str.274
	.quad	.L.str.243
	.zero	24
	.size	gimp_thumbnail_size_get_type.values, 96

	.type	.L.str.271,@object      # @.str.271
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.271:
	.asciz	"GIMP_THUMBNAIL_SIZE_NONE"
	.size	.L.str.271, 25

	.type	.L.str.272,@object      # @.str.272
.L.str.272:
	.asciz	"GIMP_THUMBNAIL_SIZE_NORMAL"
	.size	.L.str.272, 27

	.type	.L.str.273,@object      # @.str.273
.L.str.273:
	.asciz	"normal"
	.size	.L.str.273, 7

	.type	.L.str.274,@object      # @.str.274
.L.str.274:
	.asciz	"GIMP_THUMBNAIL_SIZE_LARGE"
	.size	.L.str.274, 26

	.type	gimp_thumbnail_size_get_type.descs,@object # @gimp_thumbnail_size_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_thumbnail_size_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.275
	.quad	0
	.long	128                     # 0x80
	.zero	4
	.quad	.L.str.276
	.quad	0
	.long	256                     # 0x100
	.zero	4
	.quad	.L.str.277
	.quad	0
	.zero	24
	.size	gimp_thumbnail_size_get_type.descs, 96

	.type	.L.str.275,@object      # @.str.275
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.275:
	.asciz	"No thumbnails"
	.size	.L.str.275, 14

	.type	.L.str.276,@object      # @.str.276
.L.str.276:
	.asciz	"Normal (128x128)"
	.size	.L.str.276, 17

	.type	.L.str.277,@object      # @.str.277
.L.str.277:
	.asciz	"Large (256x256)"
	.size	.L.str.277, 16

	.type	gimp_thumbnail_size_get_type.type,@object # @gimp_thumbnail_size_get_type.type
	.local	gimp_thumbnail_size_get_type.type
	.comm	gimp_thumbnail_size_get_type.type,8,8
	.type	.L.str.278,@object      # @.str.278
.L.str.278:
	.asciz	"GimpThumbnailSize"
	.size	.L.str.278, 18

	.type	.L.str.279,@object      # @.str.279
.L.str.279:
	.asciz	"thumbnail-size"
	.size	.L.str.279, 15

	.type	gimp_undo_mode_get_type.values,@object # @gimp_undo_mode_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_undo_mode_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.280
	.quad	.L.str.281
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.282
	.quad	.L.str.283
	.zero	24
	.size	gimp_undo_mode_get_type.values, 72

	.type	.L.str.280,@object      # @.str.280
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.280:
	.asciz	"GIMP_UNDO_MODE_UNDO"
	.size	.L.str.280, 20

	.type	.L.str.281,@object      # @.str.281
.L.str.281:
	.asciz	"undo"
	.size	.L.str.281, 5

	.type	.L.str.282,@object      # @.str.282
.L.str.282:
	.asciz	"GIMP_UNDO_MODE_REDO"
	.size	.L.str.282, 20

	.type	.L.str.283,@object      # @.str.283
.L.str.283:
	.asciz	"redo"
	.size	.L.str.283, 5

	.type	gimp_undo_mode_get_type.descs,@object # @gimp_undo_mode_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_undo_mode_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.280
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.282
	.quad	0
	.zero	24
	.size	gimp_undo_mode_get_type.descs, 72

	.type	gimp_undo_mode_get_type.type,@object # @gimp_undo_mode_get_type.type
	.local	gimp_undo_mode_get_type.type
	.comm	gimp_undo_mode_get_type.type,8,8
	.type	.L.str.284,@object      # @.str.284
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.284:
	.asciz	"GimpUndoMode"
	.size	.L.str.284, 13

	.type	.L.str.285,@object      # @.str.285
.L.str.285:
	.asciz	"undo-mode"
	.size	.L.str.285, 10

	.type	gimp_undo_event_get_type.values,@object # @gimp_undo_event_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_undo_event_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.286
	.quad	.L.str.287
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.288
	.quad	.L.str.289
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.290
	.quad	.L.str.291
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.292
	.quad	.L.str.281
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.293
	.quad	.L.str.283
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.294
	.quad	.L.str.295
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.296
	.quad	.L.str.297
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.298
	.quad	.L.str.299
	.zero	24
	.size	gimp_undo_event_get_type.values, 216

	.type	.L.str.286,@object      # @.str.286
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.286:
	.asciz	"GIMP_UNDO_EVENT_UNDO_PUSHED"
	.size	.L.str.286, 28

	.type	.L.str.287,@object      # @.str.287
.L.str.287:
	.asciz	"undo-pushed"
	.size	.L.str.287, 12

	.type	.L.str.288,@object      # @.str.288
.L.str.288:
	.asciz	"GIMP_UNDO_EVENT_UNDO_EXPIRED"
	.size	.L.str.288, 29

	.type	.L.str.289,@object      # @.str.289
.L.str.289:
	.asciz	"undo-expired"
	.size	.L.str.289, 13

	.type	.L.str.290,@object      # @.str.290
.L.str.290:
	.asciz	"GIMP_UNDO_EVENT_REDO_EXPIRED"
	.size	.L.str.290, 29

	.type	.L.str.291,@object      # @.str.291
.L.str.291:
	.asciz	"redo-expired"
	.size	.L.str.291, 13

	.type	.L.str.292,@object      # @.str.292
.L.str.292:
	.asciz	"GIMP_UNDO_EVENT_UNDO"
	.size	.L.str.292, 21

	.type	.L.str.293,@object      # @.str.293
.L.str.293:
	.asciz	"GIMP_UNDO_EVENT_REDO"
	.size	.L.str.293, 21

	.type	.L.str.294,@object      # @.str.294
.L.str.294:
	.asciz	"GIMP_UNDO_EVENT_UNDO_FREE"
	.size	.L.str.294, 26

	.type	.L.str.295,@object      # @.str.295
.L.str.295:
	.asciz	"undo-free"
	.size	.L.str.295, 10

	.type	.L.str.296,@object      # @.str.296
.L.str.296:
	.asciz	"GIMP_UNDO_EVENT_UNDO_FREEZE"
	.size	.L.str.296, 28

	.type	.L.str.297,@object      # @.str.297
.L.str.297:
	.asciz	"undo-freeze"
	.size	.L.str.297, 12

	.type	.L.str.298,@object      # @.str.298
.L.str.298:
	.asciz	"GIMP_UNDO_EVENT_UNDO_THAW"
	.size	.L.str.298, 26

	.type	.L.str.299,@object      # @.str.299
.L.str.299:
	.asciz	"undo-thaw"
	.size	.L.str.299, 10

	.type	gimp_undo_event_get_type.descs,@object # @gimp_undo_event_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_undo_event_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.286
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.288
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.290
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.292
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.293
	.quad	0
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.294
	.quad	0
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.296
	.quad	0
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.298
	.quad	0
	.zero	24
	.size	gimp_undo_event_get_type.descs, 216

	.type	gimp_undo_event_get_type.type,@object # @gimp_undo_event_get_type.type
	.local	gimp_undo_event_get_type.type
	.comm	gimp_undo_event_get_type.type,8,8
	.type	.L.str.300,@object      # @.str.300
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.300:
	.asciz	"GimpUndoEvent"
	.size	.L.str.300, 14

	.type	.L.str.301,@object      # @.str.301
.L.str.301:
	.asciz	"undo-event"
	.size	.L.str.301, 11

	.type	gimp_undo_type_get_type.values,@object # @gimp_undo_type_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_undo_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.302
	.quad	.L.str.303
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.304
	.quad	.L.str.305
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.306
	.quad	.L.str.307
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.308
	.quad	.L.str.309
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.310
	.quad	.L.str.311
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.312
	.quad	.L.str.313
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.314
	.quad	.L.str.315
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.316
	.quad	.L.str.317
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.318
	.quad	.L.str.319
	.long	9                       # 0x9
	.zero	4
	.quad	.L.str.320
	.quad	.L.str.321
	.long	10                      # 0xa
	.zero	4
	.quad	.L.str.322
	.quad	.L.str.323
	.long	11                      # 0xb
	.zero	4
	.quad	.L.str.324
	.quad	.L.str.325
	.long	12                      # 0xc
	.zero	4
	.quad	.L.str.326
	.quad	.L.str.327
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.328
	.quad	.L.str.329
	.long	14                      # 0xe
	.zero	4
	.quad	.L.str.330
	.quad	.L.str.331
	.long	15                      # 0xf
	.zero	4
	.quad	.L.str.332
	.quad	.L.str.333
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.334
	.quad	.L.str.335
	.long	17                      # 0x11
	.zero	4
	.quad	.L.str.336
	.quad	.L.str.337
	.long	18                      # 0x12
	.zero	4
	.quad	.L.str.338
	.quad	.L.str.339
	.long	19                      # 0x13
	.zero	4
	.quad	.L.str.340
	.quad	.L.str.341
	.long	20                      # 0x14
	.zero	4
	.quad	.L.str.342
	.quad	.L.str.343
	.long	21                      # 0x15
	.zero	4
	.quad	.L.str.344
	.quad	.L.str.345
	.long	22                      # 0x16
	.zero	4
	.quad	.L.str.346
	.quad	.L.str.347
	.long	23                      # 0x17
	.zero	4
	.quad	.L.str.348
	.quad	.L.str.349
	.long	24                      # 0x18
	.zero	4
	.quad	.L.str.350
	.quad	.L.str.351
	.long	25                      # 0x19
	.zero	4
	.quad	.L.str.352
	.quad	.L.str.353
	.long	26                      # 0x1a
	.zero	4
	.quad	.L.str.354
	.quad	.L.str.355
	.long	27                      # 0x1b
	.zero	4
	.quad	.L.str.356
	.quad	.L.str.357
	.long	28                      # 0x1c
	.zero	4
	.quad	.L.str.358
	.quad	.L.str.359
	.long	29                      # 0x1d
	.zero	4
	.quad	.L.str.360
	.quad	.L.str.361
	.long	30                      # 0x1e
	.zero	4
	.quad	.L.str.362
	.quad	.L.str.363
	.long	31                      # 0x1f
	.zero	4
	.quad	.L.str.364
	.quad	.L.str.365
	.long	32                      # 0x20
	.zero	4
	.quad	.L.str.366
	.quad	.L.str.367
	.long	33                      # 0x21
	.zero	4
	.quad	.L.str.368
	.quad	.L.str.369
	.long	34                      # 0x22
	.zero	4
	.quad	.L.str.370
	.quad	.L.str.371
	.long	35                      # 0x23
	.zero	4
	.quad	.L.str.372
	.quad	.L.str.373
	.long	36                      # 0x24
	.zero	4
	.quad	.L.str.374
	.quad	.L.str.375
	.long	37                      # 0x25
	.zero	4
	.quad	.L.str.376
	.quad	.L.str.377
	.long	38                      # 0x26
	.zero	4
	.quad	.L.str.378
	.quad	.L.str.379
	.long	39                      # 0x27
	.zero	4
	.quad	.L.str.380
	.quad	.L.str.381
	.long	40                      # 0x28
	.zero	4
	.quad	.L.str.382
	.quad	.L.str.383
	.long	41                      # 0x29
	.zero	4
	.quad	.L.str.384
	.quad	.L.str.385
	.long	42                      # 0x2a
	.zero	4
	.quad	.L.str.386
	.quad	.L.str.387
	.long	43                      # 0x2b
	.zero	4
	.quad	.L.str.388
	.quad	.L.str.389
	.long	44                      # 0x2c
	.zero	4
	.quad	.L.str.390
	.quad	.L.str.391
	.long	45                      # 0x2d
	.zero	4
	.quad	.L.str.392
	.quad	.L.str.393
	.long	46                      # 0x2e
	.zero	4
	.quad	.L.str.394
	.quad	.L.str.395
	.long	47                      # 0x2f
	.zero	4
	.quad	.L.str.396
	.quad	.L.str.397
	.long	48                      # 0x30
	.zero	4
	.quad	.L.str.398
	.quad	.L.str.399
	.long	49                      # 0x31
	.zero	4
	.quad	.L.str.400
	.quad	.L.str.401
	.long	50                      # 0x32
	.zero	4
	.quad	.L.str.402
	.quad	.L.str.403
	.long	51                      # 0x33
	.zero	4
	.quad	.L.str.404
	.quad	.L.str.405
	.long	52                      # 0x34
	.zero	4
	.quad	.L.str.406
	.quad	.L.str.407
	.long	53                      # 0x35
	.zero	4
	.quad	.L.str.408
	.quad	.L.str.409
	.long	54                      # 0x36
	.zero	4
	.quad	.L.str.410
	.quad	.L.str.411
	.long	55                      # 0x37
	.zero	4
	.quad	.L.str.412
	.quad	.L.str.413
	.long	56                      # 0x38
	.zero	4
	.quad	.L.str.414
	.quad	.L.str.415
	.long	57                      # 0x39
	.zero	4
	.quad	.L.str.416
	.quad	.L.str.417
	.long	58                      # 0x3a
	.zero	4
	.quad	.L.str.418
	.quad	.L.str.419
	.long	59                      # 0x3b
	.zero	4
	.quad	.L.str.420
	.quad	.L.str.421
	.long	60                      # 0x3c
	.zero	4
	.quad	.L.str.422
	.quad	.L.str.423
	.long	61                      # 0x3d
	.zero	4
	.quad	.L.str.424
	.quad	.L.str.425
	.long	62                      # 0x3e
	.zero	4
	.quad	.L.str.426
	.quad	.L.str.427
	.long	63                      # 0x3f
	.zero	4
	.quad	.L.str.428
	.quad	.L.str.429
	.long	64                      # 0x40
	.zero	4
	.quad	.L.str.430
	.quad	.L.str.431
	.long	65                      # 0x41
	.zero	4
	.quad	.L.str.432
	.quad	.L.str.433
	.long	66                      # 0x42
	.zero	4
	.quad	.L.str.434
	.quad	.L.str.435
	.long	67                      # 0x43
	.zero	4
	.quad	.L.str.436
	.quad	.L.str.437
	.long	68                      # 0x44
	.zero	4
	.quad	.L.str.438
	.quad	.L.str.439
	.long	69                      # 0x45
	.zero	4
	.quad	.L.str.440
	.quad	.L.str.441
	.long	70                      # 0x46
	.zero	4
	.quad	.L.str.442
	.quad	.L.str.443
	.long	71                      # 0x47
	.zero	4
	.quad	.L.str.444
	.quad	.L.str.445
	.long	72                      # 0x48
	.zero	4
	.quad	.L.str.446
	.quad	.L.str.447
	.long	73                      # 0x49
	.zero	4
	.quad	.L.str.448
	.quad	.L.str.449
	.long	74                      # 0x4a
	.zero	4
	.quad	.L.str.450
	.quad	.L.str.451
	.long	75                      # 0x4b
	.zero	4
	.quad	.L.str.452
	.quad	.L.str.453
	.long	76                      # 0x4c
	.zero	4
	.quad	.L.str.454
	.quad	.L.str.455
	.long	77                      # 0x4d
	.zero	4
	.quad	.L.str.456
	.quad	.L.str.457
	.long	78                      # 0x4e
	.zero	4
	.quad	.L.str.458
	.quad	.L.str.459
	.long	79                      # 0x4f
	.zero	4
	.quad	.L.str.460
	.quad	.L.str.461
	.long	80                      # 0x50
	.zero	4
	.quad	.L.str.462
	.quad	.L.str.463
	.zero	24
	.size	gimp_undo_type_get_type.values, 1968

	.type	.L.str.302,@object      # @.str.302
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.302:
	.asciz	"GIMP_UNDO_GROUP_NONE"
	.size	.L.str.302, 21

	.type	.L.str.303,@object      # @.str.303
.L.str.303:
	.asciz	"group-none"
	.size	.L.str.303, 11

	.type	.L.str.304,@object      # @.str.304
.L.str.304:
	.asciz	"GIMP_UNDO_GROUP_IMAGE_SCALE"
	.size	.L.str.304, 28

	.type	.L.str.305,@object      # @.str.305
.L.str.305:
	.asciz	"group-image-scale"
	.size	.L.str.305, 18

	.type	.L.str.306,@object      # @.str.306
.L.str.306:
	.asciz	"GIMP_UNDO_GROUP_IMAGE_RESIZE"
	.size	.L.str.306, 29

	.type	.L.str.307,@object      # @.str.307
.L.str.307:
	.asciz	"group-image-resize"
	.size	.L.str.307, 19

	.type	.L.str.308,@object      # @.str.308
.L.str.308:
	.asciz	"GIMP_UNDO_GROUP_IMAGE_FLIP"
	.size	.L.str.308, 27

	.type	.L.str.309,@object      # @.str.309
.L.str.309:
	.asciz	"group-image-flip"
	.size	.L.str.309, 17

	.type	.L.str.310,@object      # @.str.310
.L.str.310:
	.asciz	"GIMP_UNDO_GROUP_IMAGE_ROTATE"
	.size	.L.str.310, 29

	.type	.L.str.311,@object      # @.str.311
.L.str.311:
	.asciz	"group-image-rotate"
	.size	.L.str.311, 19

	.type	.L.str.312,@object      # @.str.312
.L.str.312:
	.asciz	"GIMP_UNDO_GROUP_IMAGE_CROP"
	.size	.L.str.312, 27

	.type	.L.str.313,@object      # @.str.313
.L.str.313:
	.asciz	"group-image-crop"
	.size	.L.str.313, 17

	.type	.L.str.314,@object      # @.str.314
.L.str.314:
	.asciz	"GIMP_UNDO_GROUP_IMAGE_CONVERT"
	.size	.L.str.314, 30

	.type	.L.str.315,@object      # @.str.315
.L.str.315:
	.asciz	"group-image-convert"
	.size	.L.str.315, 20

	.type	.L.str.316,@object      # @.str.316
.L.str.316:
	.asciz	"GIMP_UNDO_GROUP_IMAGE_ITEM_REMOVE"
	.size	.L.str.316, 34

	.type	.L.str.317,@object      # @.str.317
.L.str.317:
	.asciz	"group-image-item-remove"
	.size	.L.str.317, 24

	.type	.L.str.318,@object      # @.str.318
.L.str.318:
	.asciz	"GIMP_UNDO_GROUP_IMAGE_LAYERS_MERGE"
	.size	.L.str.318, 35

	.type	.L.str.319,@object      # @.str.319
.L.str.319:
	.asciz	"group-image-layers-merge"
	.size	.L.str.319, 25

	.type	.L.str.320,@object      # @.str.320
.L.str.320:
	.asciz	"GIMP_UNDO_GROUP_IMAGE_VECTORS_MERGE"
	.size	.L.str.320, 36

	.type	.L.str.321,@object      # @.str.321
.L.str.321:
	.asciz	"group-image-vectors-merge"
	.size	.L.str.321, 26

	.type	.L.str.322,@object      # @.str.322
.L.str.322:
	.asciz	"GIMP_UNDO_GROUP_IMAGE_QUICK_MASK"
	.size	.L.str.322, 33

	.type	.L.str.323,@object      # @.str.323
.L.str.323:
	.asciz	"group-image-quick-mask"
	.size	.L.str.323, 23

	.type	.L.str.324,@object      # @.str.324
.L.str.324:
	.asciz	"GIMP_UNDO_GROUP_IMAGE_GRID"
	.size	.L.str.324, 27

	.type	.L.str.325,@object      # @.str.325
.L.str.325:
	.asciz	"group-image-grid"
	.size	.L.str.325, 17

	.type	.L.str.326,@object      # @.str.326
.L.str.326:
	.asciz	"GIMP_UNDO_GROUP_GUIDE"
	.size	.L.str.326, 22

	.type	.L.str.327,@object      # @.str.327
.L.str.327:
	.asciz	"group-guide"
	.size	.L.str.327, 12

	.type	.L.str.328,@object      # @.str.328
.L.str.328:
	.asciz	"GIMP_UNDO_GROUP_SAMPLE_POINT"
	.size	.L.str.328, 29

	.type	.L.str.329,@object      # @.str.329
.L.str.329:
	.asciz	"group-sample-point"
	.size	.L.str.329, 19

	.type	.L.str.330,@object      # @.str.330
.L.str.330:
	.asciz	"GIMP_UNDO_GROUP_DRAWABLE"
	.size	.L.str.330, 25

	.type	.L.str.331,@object      # @.str.331
.L.str.331:
	.asciz	"group-drawable"
	.size	.L.str.331, 15

	.type	.L.str.332,@object      # @.str.332
.L.str.332:
	.asciz	"GIMP_UNDO_GROUP_DRAWABLE_MOD"
	.size	.L.str.332, 29

	.type	.L.str.333,@object      # @.str.333
.L.str.333:
	.asciz	"group-drawable-mod"
	.size	.L.str.333, 19

	.type	.L.str.334,@object      # @.str.334
.L.str.334:
	.asciz	"GIMP_UNDO_GROUP_MASK"
	.size	.L.str.334, 21

	.type	.L.str.335,@object      # @.str.335
.L.str.335:
	.asciz	"group-mask"
	.size	.L.str.335, 11

	.type	.L.str.336,@object      # @.str.336
.L.str.336:
	.asciz	"GIMP_UNDO_GROUP_ITEM_VISIBILITY"
	.size	.L.str.336, 32

	.type	.L.str.337,@object      # @.str.337
.L.str.337:
	.asciz	"group-item-visibility"
	.size	.L.str.337, 22

	.type	.L.str.338,@object      # @.str.338
.L.str.338:
	.asciz	"GIMP_UNDO_GROUP_ITEM_LINKED"
	.size	.L.str.338, 28

	.type	.L.str.339,@object      # @.str.339
.L.str.339:
	.asciz	"group-item-linked"
	.size	.L.str.339, 18

	.type	.L.str.340,@object      # @.str.340
.L.str.340:
	.asciz	"GIMP_UNDO_GROUP_ITEM_PROPERTIES"
	.size	.L.str.340, 32

	.type	.L.str.341,@object      # @.str.341
.L.str.341:
	.asciz	"group-item-properties"
	.size	.L.str.341, 22

	.type	.L.str.342,@object      # @.str.342
.L.str.342:
	.asciz	"GIMP_UNDO_GROUP_ITEM_DISPLACE"
	.size	.L.str.342, 30

	.type	.L.str.343,@object      # @.str.343
.L.str.343:
	.asciz	"group-item-displace"
	.size	.L.str.343, 20

	.type	.L.str.344,@object      # @.str.344
.L.str.344:
	.asciz	"GIMP_UNDO_GROUP_ITEM_SCALE"
	.size	.L.str.344, 27

	.type	.L.str.345,@object      # @.str.345
.L.str.345:
	.asciz	"group-item-scale"
	.size	.L.str.345, 17

	.type	.L.str.346,@object      # @.str.346
.L.str.346:
	.asciz	"GIMP_UNDO_GROUP_ITEM_RESIZE"
	.size	.L.str.346, 28

	.type	.L.str.347,@object      # @.str.347
.L.str.347:
	.asciz	"group-item-resize"
	.size	.L.str.347, 18

	.type	.L.str.348,@object      # @.str.348
.L.str.348:
	.asciz	"GIMP_UNDO_GROUP_LAYER_ADD"
	.size	.L.str.348, 26

	.type	.L.str.349,@object      # @.str.349
.L.str.349:
	.asciz	"group-layer-add"
	.size	.L.str.349, 16

	.type	.L.str.350,@object      # @.str.350
.L.str.350:
	.asciz	"GIMP_UNDO_GROUP_LAYER_ADD_MASK"
	.size	.L.str.350, 31

	.type	.L.str.351,@object      # @.str.351
.L.str.351:
	.asciz	"group-layer-add-mask"
	.size	.L.str.351, 21

	.type	.L.str.352,@object      # @.str.352
.L.str.352:
	.asciz	"GIMP_UNDO_GROUP_LAYER_APPLY_MASK"
	.size	.L.str.352, 33

	.type	.L.str.353,@object      # @.str.353
.L.str.353:
	.asciz	"group-layer-apply-mask"
	.size	.L.str.353, 23

	.type	.L.str.354,@object      # @.str.354
.L.str.354:
	.asciz	"GIMP_UNDO_GROUP_FS_TO_LAYER"
	.size	.L.str.354, 28

	.type	.L.str.355,@object      # @.str.355
.L.str.355:
	.asciz	"group-fs-to-layer"
	.size	.L.str.355, 18

	.type	.L.str.356,@object      # @.str.356
.L.str.356:
	.asciz	"GIMP_UNDO_GROUP_FS_FLOAT"
	.size	.L.str.356, 25

	.type	.L.str.357,@object      # @.str.357
.L.str.357:
	.asciz	"group-fs-float"
	.size	.L.str.357, 15

	.type	.L.str.358,@object      # @.str.358
.L.str.358:
	.asciz	"GIMP_UNDO_GROUP_FS_ANCHOR"
	.size	.L.str.358, 26

	.type	.L.str.359,@object      # @.str.359
.L.str.359:
	.asciz	"group-fs-anchor"
	.size	.L.str.359, 16

	.type	.L.str.360,@object      # @.str.360
.L.str.360:
	.asciz	"GIMP_UNDO_GROUP_EDIT_PASTE"
	.size	.L.str.360, 27

	.type	.L.str.361,@object      # @.str.361
.L.str.361:
	.asciz	"group-edit-paste"
	.size	.L.str.361, 17

	.type	.L.str.362,@object      # @.str.362
.L.str.362:
	.asciz	"GIMP_UNDO_GROUP_EDIT_CUT"
	.size	.L.str.362, 25

	.type	.L.str.363,@object      # @.str.363
.L.str.363:
	.asciz	"group-edit-cut"
	.size	.L.str.363, 15

	.type	.L.str.364,@object      # @.str.364
.L.str.364:
	.asciz	"GIMP_UNDO_GROUP_TEXT"
	.size	.L.str.364, 21

	.type	.L.str.365,@object      # @.str.365
.L.str.365:
	.asciz	"group-text"
	.size	.L.str.365, 11

	.type	.L.str.366,@object      # @.str.366
.L.str.366:
	.asciz	"GIMP_UNDO_GROUP_TRANSFORM"
	.size	.L.str.366, 26

	.type	.L.str.367,@object      # @.str.367
.L.str.367:
	.asciz	"group-transform"
	.size	.L.str.367, 16

	.type	.L.str.368,@object      # @.str.368
.L.str.368:
	.asciz	"GIMP_UNDO_GROUP_PAINT"
	.size	.L.str.368, 22

	.type	.L.str.369,@object      # @.str.369
.L.str.369:
	.asciz	"group-paint"
	.size	.L.str.369, 12

	.type	.L.str.370,@object      # @.str.370
.L.str.370:
	.asciz	"GIMP_UNDO_GROUP_PARASITE_ATTACH"
	.size	.L.str.370, 32

	.type	.L.str.371,@object      # @.str.371
.L.str.371:
	.asciz	"group-parasite-attach"
	.size	.L.str.371, 22

	.type	.L.str.372,@object      # @.str.372
.L.str.372:
	.asciz	"GIMP_UNDO_GROUP_PARASITE_REMOVE"
	.size	.L.str.372, 32

	.type	.L.str.373,@object      # @.str.373
.L.str.373:
	.asciz	"group-parasite-remove"
	.size	.L.str.373, 22

	.type	.L.str.374,@object      # @.str.374
.L.str.374:
	.asciz	"GIMP_UNDO_GROUP_VECTORS_IMPORT"
	.size	.L.str.374, 31

	.type	.L.str.375,@object      # @.str.375
.L.str.375:
	.asciz	"group-vectors-import"
	.size	.L.str.375, 21

	.type	.L.str.376,@object      # @.str.376
.L.str.376:
	.asciz	"GIMP_UNDO_GROUP_MISC"
	.size	.L.str.376, 21

	.type	.L.str.377,@object      # @.str.377
.L.str.377:
	.asciz	"group-misc"
	.size	.L.str.377, 11

	.type	.L.str.378,@object      # @.str.378
.L.str.378:
	.asciz	"GIMP_UNDO_IMAGE_TYPE"
	.size	.L.str.378, 21

	.type	.L.str.379,@object      # @.str.379
.L.str.379:
	.asciz	"image-type"
	.size	.L.str.379, 11

	.type	.L.str.380,@object      # @.str.380
.L.str.380:
	.asciz	"GIMP_UNDO_IMAGE_SIZE"
	.size	.L.str.380, 21

	.type	.L.str.381,@object      # @.str.381
.L.str.381:
	.asciz	"image-size"
	.size	.L.str.381, 11

	.type	.L.str.382,@object      # @.str.382
.L.str.382:
	.asciz	"GIMP_UNDO_IMAGE_RESOLUTION"
	.size	.L.str.382, 27

	.type	.L.str.383,@object      # @.str.383
.L.str.383:
	.asciz	"image-resolution"
	.size	.L.str.383, 17

	.type	.L.str.384,@object      # @.str.384
.L.str.384:
	.asciz	"GIMP_UNDO_IMAGE_GRID"
	.size	.L.str.384, 21

	.type	.L.str.385,@object      # @.str.385
.L.str.385:
	.asciz	"image-grid"
	.size	.L.str.385, 11

	.type	.L.str.386,@object      # @.str.386
.L.str.386:
	.asciz	"GIMP_UNDO_IMAGE_COLORMAP"
	.size	.L.str.386, 25

	.type	.L.str.387,@object      # @.str.387
.L.str.387:
	.asciz	"image-colormap"
	.size	.L.str.387, 15

	.type	.L.str.388,@object      # @.str.388
.L.str.388:
	.asciz	"GIMP_UNDO_GUIDE"
	.size	.L.str.388, 16

	.type	.L.str.389,@object      # @.str.389
.L.str.389:
	.asciz	"guide"
	.size	.L.str.389, 6

	.type	.L.str.390,@object      # @.str.390
.L.str.390:
	.asciz	"GIMP_UNDO_SAMPLE_POINT"
	.size	.L.str.390, 23

	.type	.L.str.391,@object      # @.str.391
.L.str.391:
	.asciz	"sample-point"
	.size	.L.str.391, 13

	.type	.L.str.392,@object      # @.str.392
.L.str.392:
	.asciz	"GIMP_UNDO_DRAWABLE"
	.size	.L.str.392, 19

	.type	.L.str.393,@object      # @.str.393
.L.str.393:
	.asciz	"drawable"
	.size	.L.str.393, 9

	.type	.L.str.394,@object      # @.str.394
.L.str.394:
	.asciz	"GIMP_UNDO_DRAWABLE_MOD"
	.size	.L.str.394, 23

	.type	.L.str.395,@object      # @.str.395
.L.str.395:
	.asciz	"drawable-mod"
	.size	.L.str.395, 13

	.type	.L.str.396,@object      # @.str.396
.L.str.396:
	.asciz	"GIMP_UNDO_MASK"
	.size	.L.str.396, 15

	.type	.L.str.397,@object      # @.str.397
.L.str.397:
	.asciz	"mask"
	.size	.L.str.397, 5

	.type	.L.str.398,@object      # @.str.398
.L.str.398:
	.asciz	"GIMP_UNDO_ITEM_REORDER"
	.size	.L.str.398, 23

	.type	.L.str.399,@object      # @.str.399
.L.str.399:
	.asciz	"item-reorder"
	.size	.L.str.399, 13

	.type	.L.str.400,@object      # @.str.400
.L.str.400:
	.asciz	"GIMP_UNDO_ITEM_RENAME"
	.size	.L.str.400, 22

	.type	.L.str.401,@object      # @.str.401
.L.str.401:
	.asciz	"item-rename"
	.size	.L.str.401, 12

	.type	.L.str.402,@object      # @.str.402
.L.str.402:
	.asciz	"GIMP_UNDO_ITEM_DISPLACE"
	.size	.L.str.402, 24

	.type	.L.str.403,@object      # @.str.403
.L.str.403:
	.asciz	"item-displace"
	.size	.L.str.403, 14

	.type	.L.str.404,@object      # @.str.404
.L.str.404:
	.asciz	"GIMP_UNDO_ITEM_VISIBILITY"
	.size	.L.str.404, 26

	.type	.L.str.405,@object      # @.str.405
.L.str.405:
	.asciz	"item-visibility"
	.size	.L.str.405, 16

	.type	.L.str.406,@object      # @.str.406
.L.str.406:
	.asciz	"GIMP_UNDO_ITEM_LINKED"
	.size	.L.str.406, 22

	.type	.L.str.407,@object      # @.str.407
.L.str.407:
	.asciz	"item-linked"
	.size	.L.str.407, 12

	.type	.L.str.408,@object      # @.str.408
.L.str.408:
	.asciz	"GIMP_UNDO_LAYER_ADD"
	.size	.L.str.408, 20

	.type	.L.str.409,@object      # @.str.409
.L.str.409:
	.asciz	"layer-add"
	.size	.L.str.409, 10

	.type	.L.str.410,@object      # @.str.410
.L.str.410:
	.asciz	"GIMP_UNDO_LAYER_REMOVE"
	.size	.L.str.410, 23

	.type	.L.str.411,@object      # @.str.411
.L.str.411:
	.asciz	"layer-remove"
	.size	.L.str.411, 13

	.type	.L.str.412,@object      # @.str.412
.L.str.412:
	.asciz	"GIMP_UNDO_LAYER_MODE"
	.size	.L.str.412, 21

	.type	.L.str.413,@object      # @.str.413
.L.str.413:
	.asciz	"layer-mode"
	.size	.L.str.413, 11

	.type	.L.str.414,@object      # @.str.414
.L.str.414:
	.asciz	"GIMP_UNDO_LAYER_OPACITY"
	.size	.L.str.414, 24

	.type	.L.str.415,@object      # @.str.415
.L.str.415:
	.asciz	"layer-opacity"
	.size	.L.str.415, 14

	.type	.L.str.416,@object      # @.str.416
.L.str.416:
	.asciz	"GIMP_UNDO_LAYER_LOCK_ALPHA"
	.size	.L.str.416, 27

	.type	.L.str.417,@object      # @.str.417
.L.str.417:
	.asciz	"layer-lock-alpha"
	.size	.L.str.417, 17

	.type	.L.str.418,@object      # @.str.418
.L.str.418:
	.asciz	"GIMP_UNDO_GROUP_LAYER_SUSPEND"
	.size	.L.str.418, 30

	.type	.L.str.419,@object      # @.str.419
.L.str.419:
	.asciz	"group-layer-suspend"
	.size	.L.str.419, 20

	.type	.L.str.420,@object      # @.str.420
.L.str.420:
	.asciz	"GIMP_UNDO_GROUP_LAYER_RESUME"
	.size	.L.str.420, 29

	.type	.L.str.421,@object      # @.str.421
.L.str.421:
	.asciz	"group-layer-resume"
	.size	.L.str.421, 19

	.type	.L.str.422,@object      # @.str.422
.L.str.422:
	.asciz	"GIMP_UNDO_GROUP_LAYER_CONVERT"
	.size	.L.str.422, 30

	.type	.L.str.423,@object      # @.str.423
.L.str.423:
	.asciz	"group-layer-convert"
	.size	.L.str.423, 20

	.type	.L.str.424,@object      # @.str.424
.L.str.424:
	.asciz	"GIMP_UNDO_TEXT_LAYER"
	.size	.L.str.424, 21

	.type	.L.str.425,@object      # @.str.425
.L.str.425:
	.asciz	"text-layer"
	.size	.L.str.425, 11

	.type	.L.str.426,@object      # @.str.426
.L.str.426:
	.asciz	"GIMP_UNDO_TEXT_LAYER_MODIFIED"
	.size	.L.str.426, 30

	.type	.L.str.427,@object      # @.str.427
.L.str.427:
	.asciz	"text-layer-modified"
	.size	.L.str.427, 20

	.type	.L.str.428,@object      # @.str.428
.L.str.428:
	.asciz	"GIMP_UNDO_LAYER_MASK_ADD"
	.size	.L.str.428, 25

	.type	.L.str.429,@object      # @.str.429
.L.str.429:
	.asciz	"layer-mask-add"
	.size	.L.str.429, 15

	.type	.L.str.430,@object      # @.str.430
.L.str.430:
	.asciz	"GIMP_UNDO_LAYER_MASK_REMOVE"
	.size	.L.str.430, 28

	.type	.L.str.431,@object      # @.str.431
.L.str.431:
	.asciz	"layer-mask-remove"
	.size	.L.str.431, 18

	.type	.L.str.432,@object      # @.str.432
.L.str.432:
	.asciz	"GIMP_UNDO_LAYER_MASK_APPLY"
	.size	.L.str.432, 27

	.type	.L.str.433,@object      # @.str.433
.L.str.433:
	.asciz	"layer-mask-apply"
	.size	.L.str.433, 17

	.type	.L.str.434,@object      # @.str.434
.L.str.434:
	.asciz	"GIMP_UNDO_LAYER_MASK_SHOW"
	.size	.L.str.434, 26

	.type	.L.str.435,@object      # @.str.435
.L.str.435:
	.asciz	"layer-mask-show"
	.size	.L.str.435, 16

	.type	.L.str.436,@object      # @.str.436
.L.str.436:
	.asciz	"GIMP_UNDO_CHANNEL_ADD"
	.size	.L.str.436, 22

	.type	.L.str.437,@object      # @.str.437
.L.str.437:
	.asciz	"channel-add"
	.size	.L.str.437, 12

	.type	.L.str.438,@object      # @.str.438
.L.str.438:
	.asciz	"GIMP_UNDO_CHANNEL_REMOVE"
	.size	.L.str.438, 25

	.type	.L.str.439,@object      # @.str.439
.L.str.439:
	.asciz	"channel-remove"
	.size	.L.str.439, 15

	.type	.L.str.440,@object      # @.str.440
.L.str.440:
	.asciz	"GIMP_UNDO_CHANNEL_COLOR"
	.size	.L.str.440, 24

	.type	.L.str.441,@object      # @.str.441
.L.str.441:
	.asciz	"channel-color"
	.size	.L.str.441, 14

	.type	.L.str.442,@object      # @.str.442
.L.str.442:
	.asciz	"GIMP_UNDO_VECTORS_ADD"
	.size	.L.str.442, 22

	.type	.L.str.443,@object      # @.str.443
.L.str.443:
	.asciz	"vectors-add"
	.size	.L.str.443, 12

	.type	.L.str.444,@object      # @.str.444
.L.str.444:
	.asciz	"GIMP_UNDO_VECTORS_REMOVE"
	.size	.L.str.444, 25

	.type	.L.str.445,@object      # @.str.445
.L.str.445:
	.asciz	"vectors-remove"
	.size	.L.str.445, 15

	.type	.L.str.446,@object      # @.str.446
.L.str.446:
	.asciz	"GIMP_UNDO_VECTORS_MOD"
	.size	.L.str.446, 22

	.type	.L.str.447,@object      # @.str.447
.L.str.447:
	.asciz	"vectors-mod"
	.size	.L.str.447, 12

	.type	.L.str.448,@object      # @.str.448
.L.str.448:
	.asciz	"GIMP_UNDO_FS_TO_LAYER"
	.size	.L.str.448, 22

	.type	.L.str.449,@object      # @.str.449
.L.str.449:
	.asciz	"fs-to-layer"
	.size	.L.str.449, 12

	.type	.L.str.450,@object      # @.str.450
.L.str.450:
	.asciz	"GIMP_UNDO_TRANSFORM"
	.size	.L.str.450, 20

	.type	.L.str.451,@object      # @.str.451
.L.str.451:
	.asciz	"transform"
	.size	.L.str.451, 10

	.type	.L.str.452,@object      # @.str.452
.L.str.452:
	.asciz	"GIMP_UNDO_PAINT"
	.size	.L.str.452, 16

	.type	.L.str.453,@object      # @.str.453
.L.str.453:
	.asciz	"paint"
	.size	.L.str.453, 6

	.type	.L.str.454,@object      # @.str.454
.L.str.454:
	.asciz	"GIMP_UNDO_INK"
	.size	.L.str.454, 14

	.type	.L.str.455,@object      # @.str.455
.L.str.455:
	.asciz	"ink"
	.size	.L.str.455, 4

	.type	.L.str.456,@object      # @.str.456
.L.str.456:
	.asciz	"GIMP_UNDO_FOREGROUND_SELECT"
	.size	.L.str.456, 28

	.type	.L.str.457,@object      # @.str.457
.L.str.457:
	.asciz	"foreground-select"
	.size	.L.str.457, 18

	.type	.L.str.458,@object      # @.str.458
.L.str.458:
	.asciz	"GIMP_UNDO_PARASITE_ATTACH"
	.size	.L.str.458, 26

	.type	.L.str.459,@object      # @.str.459
.L.str.459:
	.asciz	"parasite-attach"
	.size	.L.str.459, 16

	.type	.L.str.460,@object      # @.str.460
.L.str.460:
	.asciz	"GIMP_UNDO_PARASITE_REMOVE"
	.size	.L.str.460, 26

	.type	.L.str.461,@object      # @.str.461
.L.str.461:
	.asciz	"parasite-remove"
	.size	.L.str.461, 16

	.type	.L.str.462,@object      # @.str.462
.L.str.462:
	.asciz	"GIMP_UNDO_CANT"
	.size	.L.str.462, 15

	.type	.L.str.463,@object      # @.str.463
.L.str.463:
	.asciz	"cant"
	.size	.L.str.463, 5

	.type	gimp_undo_type_get_type.descs,@object # @gimp_undo_type_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_undo_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.464
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.465
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.466
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.467
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.468
	.quad	0
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.469
	.quad	0
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.470
	.quad	0
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.471
	.quad	0
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.472
	.quad	0
	.long	9                       # 0x9
	.zero	4
	.quad	.L.str.473
	.quad	0
	.long	10                      # 0xa
	.zero	4
	.quad	.L.str.474
	.quad	0
	.long	11                      # 0xb
	.zero	4
	.quad	.L.str.475
	.quad	0
	.long	12                      # 0xc
	.zero	4
	.quad	.L.str.476
	.quad	0
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.477
	.quad	0
	.long	14                      # 0xe
	.zero	4
	.quad	.L.str.478
	.quad	0
	.long	15                      # 0xf
	.zero	4
	.quad	.L.str.479
	.quad	0
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.480
	.quad	0
	.long	17                      # 0x11
	.zero	4
	.quad	.L.str.481
	.quad	0
	.long	18                      # 0x12
	.zero	4
	.quad	.L.str.482
	.quad	0
	.long	19                      # 0x13
	.zero	4
	.quad	.L.str.483
	.quad	0
	.long	20                      # 0x14
	.zero	4
	.quad	.L.str.484
	.quad	0
	.long	21                      # 0x15
	.zero	4
	.quad	.L.str.485
	.quad	0
	.long	22                      # 0x16
	.zero	4
	.quad	.L.str.486
	.quad	0
	.long	23                      # 0x17
	.zero	4
	.quad	.L.str.487
	.quad	0
	.long	24                      # 0x18
	.zero	4
	.quad	.L.str.488
	.quad	0
	.long	25                      # 0x19
	.zero	4
	.quad	.L.str.489
	.quad	0
	.long	26                      # 0x1a
	.zero	4
	.quad	.L.str.490
	.quad	0
	.long	27                      # 0x1b
	.zero	4
	.quad	.L.str.491
	.quad	0
	.long	28                      # 0x1c
	.zero	4
	.quad	.L.str.492
	.quad	0
	.long	29                      # 0x1d
	.zero	4
	.quad	.L.str.493
	.quad	0
	.long	30                      # 0x1e
	.zero	4
	.quad	.L.str.494
	.quad	0
	.long	31                      # 0x1f
	.zero	4
	.quad	.L.str.495
	.quad	0
	.long	32                      # 0x20
	.zero	4
	.quad	.L.str.496
	.quad	0
	.long	33                      # 0x21
	.zero	4
	.quad	.L.str.497
	.quad	0
	.long	34                      # 0x22
	.zero	4
	.quad	.L.str.498
	.quad	0
	.long	35                      # 0x23
	.zero	4
	.quad	.L.str.499
	.quad	0
	.long	36                      # 0x24
	.zero	4
	.quad	.L.str.500
	.quad	0
	.long	37                      # 0x25
	.zero	4
	.quad	.L.str.501
	.quad	0
	.long	38                      # 0x26
	.zero	4
	.quad	.L.str.502
	.quad	0
	.long	39                      # 0x27
	.zero	4
	.quad	.L.str.503
	.quad	0
	.long	40                      # 0x28
	.zero	4
	.quad	.L.str.504
	.quad	0
	.long	41                      # 0x29
	.zero	4
	.quad	.L.str.475
	.quad	0
	.long	42                      # 0x2a
	.zero	4
	.quad	.L.str.505
	.quad	0
	.long	43                      # 0x2b
	.zero	4
	.quad	.L.str.476
	.quad	0
	.long	44                      # 0x2c
	.zero	4
	.quad	.L.str.477
	.quad	0
	.long	45                      # 0x2d
	.zero	4
	.quad	.L.str.478
	.quad	0
	.long	46                      # 0x2e
	.zero	4
	.quad	.L.str.479
	.quad	0
	.long	47                      # 0x2f
	.zero	4
	.quad	.L.str.480
	.quad	0
	.long	48                      # 0x30
	.zero	4
	.quad	.L.str.506
	.quad	0
	.long	49                      # 0x31
	.zero	4
	.quad	.L.str.507
	.quad	0
	.long	50                      # 0x32
	.zero	4
	.quad	.L.str.484
	.quad	0
	.long	51                      # 0x33
	.zero	4
	.quad	.L.str.481
	.quad	0
	.long	52                      # 0x34
	.zero	4
	.quad	.L.str.482
	.quad	0
	.long	53                      # 0x35
	.zero	4
	.quad	.L.str.508
	.quad	0
	.long	54                      # 0x36
	.zero	4
	.quad	.L.str.509
	.quad	0
	.long	55                      # 0x37
	.zero	4
	.quad	.L.str.510
	.quad	0
	.long	56                      # 0x38
	.zero	4
	.quad	.L.str.511
	.quad	0
	.long	57                      # 0x39
	.zero	4
	.quad	.L.str.512
	.quad	0
	.long	58                      # 0x3a
	.zero	4
	.quad	.L.str.513
	.quad	0
	.long	59                      # 0x3b
	.zero	4
	.quad	.L.str.514
	.quad	0
	.long	60                      # 0x3c
	.zero	4
	.quad	.L.str.515
	.quad	0
	.long	61                      # 0x3d
	.zero	4
	.quad	.L.str.516
	.quad	0
	.long	62                      # 0x3e
	.zero	4
	.quad	.L.str.517
	.quad	0
	.long	63                      # 0x3f
	.zero	4
	.quad	.L.str.488
	.quad	0
	.long	64                      # 0x40
	.zero	4
	.quad	.L.str.518
	.quad	0
	.long	65                      # 0x41
	.zero	4
	.quad	.L.str.489
	.quad	0
	.long	66                      # 0x42
	.zero	4
	.quad	.L.str.519
	.quad	0
	.long	67                      # 0x43
	.zero	4
	.quad	.L.str.520
	.quad	0
	.long	68                      # 0x44
	.zero	4
	.quad	.L.str.521
	.quad	0
	.long	69                      # 0x45
	.zero	4
	.quad	.L.str.522
	.quad	0
	.long	70                      # 0x46
	.zero	4
	.quad	.L.str.523
	.quad	0
	.long	71                      # 0x47
	.zero	4
	.quad	.L.str.524
	.quad	0
	.long	72                      # 0x48
	.zero	4
	.quad	.L.str.525
	.quad	0
	.long	73                      # 0x49
	.zero	4
	.quad	.L.str.490
	.quad	0
	.long	74                      # 0x4a
	.zero	4
	.quad	.L.str.496
	.quad	0
	.long	75                      # 0x4b
	.zero	4
	.quad	.L.str.497
	.quad	0
	.long	76                      # 0x4c
	.zero	4
	.quad	.L.str.526
	.quad	0
	.long	77                      # 0x4d
	.zero	4
	.quad	.L.str.527
	.quad	0
	.long	78                      # 0x4e
	.zero	4
	.quad	.L.str.498
	.quad	0
	.long	79                      # 0x4f
	.zero	4
	.quad	.L.str.499
	.quad	0
	.long	80                      # 0x50
	.zero	4
	.quad	.L.str.528
	.quad	0
	.zero	24
	.size	gimp_undo_type_get_type.descs, 1968

	.type	.L.str.464,@object      # @.str.464
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.464:
	.asciz	"<<invalid>>"
	.size	.L.str.464, 12

	.type	.L.str.465,@object      # @.str.465
.L.str.465:
	.asciz	"Scale image"
	.size	.L.str.465, 12

	.type	.L.str.466,@object      # @.str.466
.L.str.466:
	.asciz	"Resize image"
	.size	.L.str.466, 13

	.type	.L.str.467,@object      # @.str.467
.L.str.467:
	.asciz	"Flip image"
	.size	.L.str.467, 11

	.type	.L.str.468,@object      # @.str.468
.L.str.468:
	.asciz	"Rotate image"
	.size	.L.str.468, 13

	.type	.L.str.469,@object      # @.str.469
.L.str.469:
	.asciz	"Crop image"
	.size	.L.str.469, 11

	.type	.L.str.470,@object      # @.str.470
.L.str.470:
	.asciz	"Convert image"
	.size	.L.str.470, 14

	.type	.L.str.471,@object      # @.str.471
.L.str.471:
	.asciz	"Remove item"
	.size	.L.str.471, 12

	.type	.L.str.472,@object      # @.str.472
.L.str.472:
	.asciz	"Merge layers"
	.size	.L.str.472, 13

	.type	.L.str.473,@object      # @.str.473
.L.str.473:
	.asciz	"Merge paths"
	.size	.L.str.473, 12

	.type	.L.str.474,@object      # @.str.474
.L.str.474:
	.asciz	"Quick Mask"
	.size	.L.str.474, 11

	.type	.L.str.475,@object      # @.str.475
.L.str.475:
	.asciz	"Grid"
	.size	.L.str.475, 5

	.type	.L.str.476,@object      # @.str.476
.L.str.476:
	.asciz	"Guide"
	.size	.L.str.476, 6

	.type	.L.str.477,@object      # @.str.477
.L.str.477:
	.asciz	"Sample Point"
	.size	.L.str.477, 13

	.type	.L.str.478,@object      # @.str.478
.L.str.478:
	.asciz	"Layer/Channel"
	.size	.L.str.478, 14

	.type	.L.str.479,@object      # @.str.479
.L.str.479:
	.asciz	"Layer/Channel modification"
	.size	.L.str.479, 27

	.type	.L.str.480,@object      # @.str.480
.L.str.480:
	.asciz	"Selection mask"
	.size	.L.str.480, 15

	.type	.L.str.481,@object      # @.str.481
.L.str.481:
	.asciz	"Item visibility"
	.size	.L.str.481, 16

	.type	.L.str.482,@object      # @.str.482
.L.str.482:
	.asciz	"Link/Unlink item"
	.size	.L.str.482, 17

	.type	.L.str.483,@object      # @.str.483
.L.str.483:
	.asciz	"Item properties"
	.size	.L.str.483, 16

	.type	.L.str.484,@object      # @.str.484
.L.str.484:
	.asciz	"Move item"
	.size	.L.str.484, 10

	.type	.L.str.485,@object      # @.str.485
.L.str.485:
	.asciz	"Scale item"
	.size	.L.str.485, 11

	.type	.L.str.486,@object      # @.str.486
.L.str.486:
	.asciz	"Resize item"
	.size	.L.str.486, 12

	.type	.L.str.487,@object      # @.str.487
.L.str.487:
	.asciz	"Add layer"
	.size	.L.str.487, 10

	.type	.L.str.488,@object      # @.str.488
.L.str.488:
	.asciz	"Add layer mask"
	.size	.L.str.488, 15

	.type	.L.str.489,@object      # @.str.489
.L.str.489:
	.asciz	"Apply layer mask"
	.size	.L.str.489, 17

	.type	.L.str.490,@object      # @.str.490
.L.str.490:
	.asciz	"Floating selection to layer"
	.size	.L.str.490, 28

	.type	.L.str.491,@object      # @.str.491
.L.str.491:
	.asciz	"Float selection"
	.size	.L.str.491, 16

	.type	.L.str.492,@object      # @.str.492
.L.str.492:
	.asciz	"Anchor floating selection"
	.size	.L.str.492, 26

	.type	.L.str.493,@object      # @.str.493
.L.str.493:
	.asciz	"Paste"
	.size	.L.str.493, 6

	.type	.L.str.494,@object      # @.str.494
.L.str.494:
	.asciz	"Cut"
	.size	.L.str.494, 4

	.type	.L.str.495,@object      # @.str.495
.L.str.495:
	.asciz	"Text"
	.size	.L.str.495, 5

	.type	.L.str.496,@object      # @.str.496
.L.str.496:
	.asciz	"Transform"
	.size	.L.str.496, 10

	.type	.L.str.497,@object      # @.str.497
.L.str.497:
	.asciz	"Paint"
	.size	.L.str.497, 6

	.type	.L.str.498,@object      # @.str.498
.L.str.498:
	.asciz	"Attach parasite"
	.size	.L.str.498, 16

	.type	.L.str.499,@object      # @.str.499
.L.str.499:
	.asciz	"Remove parasite"
	.size	.L.str.499, 16

	.type	.L.str.500,@object      # @.str.500
.L.str.500:
	.asciz	"Import paths"
	.size	.L.str.500, 13

	.type	.L.str.501,@object      # @.str.501
.L.str.501:
	.asciz	"Plug-In"
	.size	.L.str.501, 8

	.type	.L.str.502,@object      # @.str.502
.L.str.502:
	.asciz	"Image type"
	.size	.L.str.502, 11

	.type	.L.str.503,@object      # @.str.503
.L.str.503:
	.asciz	"Image size"
	.size	.L.str.503, 11

	.type	.L.str.504,@object      # @.str.504
.L.str.504:
	.asciz	"Image resolution change"
	.size	.L.str.504, 24

	.type	.L.str.505,@object      # @.str.505
.L.str.505:
	.asciz	"Change indexed palette"
	.size	.L.str.505, 23

	.type	.L.str.506,@object      # @.str.506
.L.str.506:
	.asciz	"Reorder item"
	.size	.L.str.506, 13

	.type	.L.str.507,@object      # @.str.507
.L.str.507:
	.asciz	"Rename item"
	.size	.L.str.507, 12

	.type	.L.str.508,@object      # @.str.508
.L.str.508:
	.asciz	"New layer"
	.size	.L.str.508, 10

	.type	.L.str.509,@object      # @.str.509
.L.str.509:
	.asciz	"Delete layer"
	.size	.L.str.509, 13

	.type	.L.str.510,@object      # @.str.510
.L.str.510:
	.asciz	"Set layer mode"
	.size	.L.str.510, 15

	.type	.L.str.511,@object      # @.str.511
.L.str.511:
	.asciz	"Set layer opacity"
	.size	.L.str.511, 18

	.type	.L.str.512,@object      # @.str.512
.L.str.512:
	.asciz	"Lock/Unlock alpha channel"
	.size	.L.str.512, 26

	.type	.L.str.513,@object      # @.str.513
.L.str.513:
	.asciz	"Suspend group layer resize"
	.size	.L.str.513, 27

	.type	.L.str.514,@object      # @.str.514
.L.str.514:
	.asciz	"Resume group layer resize"
	.size	.L.str.514, 26

	.type	.L.str.515,@object      # @.str.515
.L.str.515:
	.asciz	"Convert group layer"
	.size	.L.str.515, 20

	.type	.L.str.516,@object      # @.str.516
.L.str.516:
	.asciz	"Text layer"
	.size	.L.str.516, 11

	.type	.L.str.517,@object      # @.str.517
.L.str.517:
	.asciz	"Text layer modification"
	.size	.L.str.517, 24

	.type	.L.str.518,@object      # @.str.518
.L.str.518:
	.asciz	"Delete layer mask"
	.size	.L.str.518, 18

	.type	.L.str.519,@object      # @.str.519
.L.str.519:
	.asciz	"Show layer mask"
	.size	.L.str.519, 16

	.type	.L.str.520,@object      # @.str.520
.L.str.520:
	.asciz	"New channel"
	.size	.L.str.520, 12

	.type	.L.str.521,@object      # @.str.521
.L.str.521:
	.asciz	"Delete channel"
	.size	.L.str.521, 15

	.type	.L.str.522,@object      # @.str.522
.L.str.522:
	.asciz	"Channel color"
	.size	.L.str.522, 14

	.type	.L.str.523,@object      # @.str.523
.L.str.523:
	.asciz	"New path"
	.size	.L.str.523, 9

	.type	.L.str.524,@object      # @.str.524
.L.str.524:
	.asciz	"Delete path"
	.size	.L.str.524, 12

	.type	.L.str.525,@object      # @.str.525
.L.str.525:
	.asciz	"Path modification"
	.size	.L.str.525, 18

	.type	.L.str.526,@object      # @.str.526
.L.str.526:
	.asciz	"Ink"
	.size	.L.str.526, 4

	.type	.L.str.527,@object      # @.str.527
.L.str.527:
	.asciz	"Select foreground"
	.size	.L.str.527, 18

	.type	.L.str.528,@object      # @.str.528
.L.str.528:
	.asciz	"Not undoable"
	.size	.L.str.528, 13

	.type	gimp_undo_type_get_type.type,@object # @gimp_undo_type_get_type.type
	.local	gimp_undo_type_get_type.type
	.comm	gimp_undo_type_get_type.type,8,8
	.type	.L.str.529,@object      # @.str.529
.L.str.529:
	.asciz	"GimpUndoType"
	.size	.L.str.529, 13

	.type	.L.str.530,@object      # @.str.530
.L.str.530:
	.asciz	"undo-type"
	.size	.L.str.530, 10

	.type	gimp_dirty_mask_get_type.values,@object # @gimp_dirty_mask_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_dirty_mask_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.531
	.quad	.L.str.35
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.532
	.quad	.L.str.85
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.533
	.quad	.L.str.381
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.534
	.quad	.L.str.535
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.536
	.quad	.L.str.537
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.538
	.quad	.L.str.539
	.long	32                      # 0x20
	.zero	4
	.quad	.L.str.540
	.quad	.L.str.541
	.long	64                      # 0x40
	.zero	4
	.quad	.L.str.542
	.quad	.L.str.393
	.long	128                     # 0x80
	.zero	4
	.quad	.L.str.543
	.quad	.L.str.544
	.long	256                     # 0x100
	.zero	4
	.quad	.L.str.545
	.quad	.L.str.87
	.long	512                     # 0x200
	.zero	4
	.quad	.L.str.546
	.quad	.L.str.547
	.long	65535                   # 0xffff
	.zero	4
	.quad	.L.str.548
	.quad	.L.str.213
	.zero	24
	.size	gimp_dirty_mask_get_type.values, 312

	.type	.L.str.531,@object      # @.str.531
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.531:
	.asciz	"GIMP_DIRTY_NONE"
	.size	.L.str.531, 16

	.type	.L.str.532,@object      # @.str.532
.L.str.532:
	.asciz	"GIMP_DIRTY_IMAGE"
	.size	.L.str.532, 17

	.type	.L.str.533,@object      # @.str.533
.L.str.533:
	.asciz	"GIMP_DIRTY_IMAGE_SIZE"
	.size	.L.str.533, 22

	.type	.L.str.534,@object      # @.str.534
.L.str.534:
	.asciz	"GIMP_DIRTY_IMAGE_META"
	.size	.L.str.534, 22

	.type	.L.str.535,@object      # @.str.535
.L.str.535:
	.asciz	"image-meta"
	.size	.L.str.535, 11

	.type	.L.str.536,@object      # @.str.536
.L.str.536:
	.asciz	"GIMP_DIRTY_IMAGE_STRUCTURE"
	.size	.L.str.536, 27

	.type	.L.str.537,@object      # @.str.537
.L.str.537:
	.asciz	"image-structure"
	.size	.L.str.537, 16

	.type	.L.str.538,@object      # @.str.538
.L.str.538:
	.asciz	"GIMP_DIRTY_ITEM"
	.size	.L.str.538, 16

	.type	.L.str.539,@object      # @.str.539
.L.str.539:
	.asciz	"item"
	.size	.L.str.539, 5

	.type	.L.str.540,@object      # @.str.540
.L.str.540:
	.asciz	"GIMP_DIRTY_ITEM_META"
	.size	.L.str.540, 21

	.type	.L.str.541,@object      # @.str.541
.L.str.541:
	.asciz	"item-meta"
	.size	.L.str.541, 10

	.type	.L.str.542,@object      # @.str.542
.L.str.542:
	.asciz	"GIMP_DIRTY_DRAWABLE"
	.size	.L.str.542, 20

	.type	.L.str.543,@object      # @.str.543
.L.str.543:
	.asciz	"GIMP_DIRTY_VECTORS"
	.size	.L.str.543, 19

	.type	.L.str.544,@object      # @.str.544
.L.str.544:
	.asciz	"vectors"
	.size	.L.str.544, 8

	.type	.L.str.545,@object      # @.str.545
.L.str.545:
	.asciz	"GIMP_DIRTY_SELECTION"
	.size	.L.str.545, 21

	.type	.L.str.546,@object      # @.str.546
.L.str.546:
	.asciz	"GIMP_DIRTY_ACTIVE_DRAWABLE"
	.size	.L.str.546, 27

	.type	.L.str.547,@object      # @.str.547
.L.str.547:
	.asciz	"active-drawable"
	.size	.L.str.547, 16

	.type	.L.str.548,@object      # @.str.548
.L.str.548:
	.asciz	"GIMP_DIRTY_ALL"
	.size	.L.str.548, 15

	.type	gimp_dirty_mask_get_type.descs,@object # @gimp_dirty_mask_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_dirty_mask_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.531
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.532
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.533
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.534
	.quad	0
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.536
	.quad	0
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.538
	.quad	0
	.long	32                      # 0x20
	.zero	4
	.quad	.L.str.540
	.quad	0
	.long	64                      # 0x40
	.zero	4
	.quad	.L.str.542
	.quad	0
	.long	128                     # 0x80
	.zero	4
	.quad	.L.str.543
	.quad	0
	.long	256                     # 0x100
	.zero	4
	.quad	.L.str.545
	.quad	0
	.long	512                     # 0x200
	.zero	4
	.quad	.L.str.546
	.quad	0
	.long	65535                   # 0xffff
	.zero	4
	.quad	.L.str.548
	.quad	0
	.zero	24
	.size	gimp_dirty_mask_get_type.descs, 312

	.type	gimp_dirty_mask_get_type.type,@object # @gimp_dirty_mask_get_type.type
	.local	gimp_dirty_mask_get_type.type
	.comm	gimp_dirty_mask_get_type.type,8,8
	.type	.L.str.549,@object      # @.str.549
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.549:
	.asciz	"GimpDirtyMask"
	.size	.L.str.549, 14

	.type	.L.str.550,@object      # @.str.550
.L.str.550:
	.asciz	"dirty-mask"
	.size	.L.str.550, 11

	.type	gimp_offset_type_get_type.values,@object # @gimp_offset_type_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_offset_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.551
	.quad	.L.str.552
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.553
	.quad	.L.str.554
	.zero	24
	.size	gimp_offset_type_get_type.values, 72

	.type	.L.str.551,@object      # @.str.551
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.551:
	.asciz	"GIMP_OFFSET_BACKGROUND"
	.size	.L.str.551, 23

	.type	.L.str.552,@object      # @.str.552
.L.str.552:
	.asciz	"background"
	.size	.L.str.552, 11

	.type	.L.str.553,@object      # @.str.553
.L.str.553:
	.asciz	"GIMP_OFFSET_TRANSPARENT"
	.size	.L.str.553, 24

	.type	.L.str.554,@object      # @.str.554
.L.str.554:
	.asciz	"transparent"
	.size	.L.str.554, 12

	.type	gimp_offset_type_get_type.descs,@object # @gimp_offset_type_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_offset_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.551
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.553
	.quad	0
	.zero	24
	.size	gimp_offset_type_get_type.descs, 72

	.type	gimp_offset_type_get_type.type,@object # @gimp_offset_type_get_type.type
	.local	gimp_offset_type_get_type.type
	.comm	gimp_offset_type_get_type.type,8,8
	.type	.L.str.555,@object      # @.str.555
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.555:
	.asciz	"GimpOffsetType"
	.size	.L.str.555, 15

	.type	.L.str.556,@object      # @.str.556
.L.str.556:
	.asciz	"offset-type"
	.size	.L.str.556, 12

	.type	gimp_gradient_color_get_type.values,@object # @gimp_gradient_color_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_gradient_color_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.557
	.quad	.L.str.558
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.559
	.quad	.L.str.560
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.561
	.quad	.L.str.562
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.563
	.quad	.L.str.552
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.564
	.quad	.L.str.565
	.zero	24
	.size	gimp_gradient_color_get_type.values, 144

	.type	.L.str.557,@object      # @.str.557
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.557:
	.asciz	"GIMP_GRADIENT_COLOR_FIXED"
	.size	.L.str.557, 26

	.type	.L.str.558,@object      # @.str.558
.L.str.558:
	.asciz	"fixed"
	.size	.L.str.558, 6

	.type	.L.str.559,@object      # @.str.559
.L.str.559:
	.asciz	"GIMP_GRADIENT_COLOR_FOREGROUND"
	.size	.L.str.559, 31

	.type	.L.str.560,@object      # @.str.560
.L.str.560:
	.asciz	"foreground"
	.size	.L.str.560, 11

	.type	.L.str.561,@object      # @.str.561
.L.str.561:
	.asciz	"GIMP_GRADIENT_COLOR_FOREGROUND_TRANSPARENT"
	.size	.L.str.561, 43

	.type	.L.str.562,@object      # @.str.562
.L.str.562:
	.asciz	"foreground-transparent"
	.size	.L.str.562, 23

	.type	.L.str.563,@object      # @.str.563
.L.str.563:
	.asciz	"GIMP_GRADIENT_COLOR_BACKGROUND"
	.size	.L.str.563, 31

	.type	.L.str.564,@object      # @.str.564
.L.str.564:
	.asciz	"GIMP_GRADIENT_COLOR_BACKGROUND_TRANSPARENT"
	.size	.L.str.564, 43

	.type	.L.str.565,@object      # @.str.565
.L.str.565:
	.asciz	"background-transparent"
	.size	.L.str.565, 23

	.type	gimp_gradient_color_get_type.descs,@object # @gimp_gradient_color_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_gradient_color_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.557
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.559
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.561
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.563
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.564
	.quad	0
	.zero	24
	.size	gimp_gradient_color_get_type.descs, 144

	.type	gimp_gradient_color_get_type.type,@object # @gimp_gradient_color_get_type.type
	.local	gimp_gradient_color_get_type.type
	.comm	gimp_gradient_color_get_type.type,8,8
	.type	.L.str.566,@object      # @.str.566
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.566:
	.asciz	"GimpGradientColor"
	.size	.L.str.566, 18

	.type	.L.str.567,@object      # @.str.567
.L.str.567:
	.asciz	"gradient-color"
	.size	.L.str.567, 15

	.type	gimp_gradient_segment_type_get_type.values,@object # @gimp_gradient_segment_type_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_gradient_segment_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.568
	.quad	.L.str.569
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.570
	.quad	.L.str.571
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.572
	.quad	.L.str.573
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.574
	.quad	.L.str.575
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.576
	.quad	.L.str.577
	.zero	24
	.size	gimp_gradient_segment_type_get_type.values, 144

	.type	.L.str.568,@object      # @.str.568
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.568:
	.asciz	"GIMP_GRADIENT_SEGMENT_LINEAR"
	.size	.L.str.568, 29

	.type	.L.str.569,@object      # @.str.569
.L.str.569:
	.asciz	"linear"
	.size	.L.str.569, 7

	.type	.L.str.570,@object      # @.str.570
.L.str.570:
	.asciz	"GIMP_GRADIENT_SEGMENT_CURVED"
	.size	.L.str.570, 29

	.type	.L.str.571,@object      # @.str.571
.L.str.571:
	.asciz	"curved"
	.size	.L.str.571, 7

	.type	.L.str.572,@object      # @.str.572
.L.str.572:
	.asciz	"GIMP_GRADIENT_SEGMENT_SINE"
	.size	.L.str.572, 27

	.type	.L.str.573,@object      # @.str.573
.L.str.573:
	.asciz	"sine"
	.size	.L.str.573, 5

	.type	.L.str.574,@object      # @.str.574
.L.str.574:
	.asciz	"GIMP_GRADIENT_SEGMENT_SPHERE_INCREASING"
	.size	.L.str.574, 40

	.type	.L.str.575,@object      # @.str.575
.L.str.575:
	.asciz	"sphere-increasing"
	.size	.L.str.575, 18

	.type	.L.str.576,@object      # @.str.576
.L.str.576:
	.asciz	"GIMP_GRADIENT_SEGMENT_SPHERE_DECREASING"
	.size	.L.str.576, 40

	.type	.L.str.577,@object      # @.str.577
.L.str.577:
	.asciz	"sphere-decreasing"
	.size	.L.str.577, 18

	.type	gimp_gradient_segment_type_get_type.descs,@object # @gimp_gradient_segment_type_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_gradient_segment_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.568
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.570
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.572
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.574
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.576
	.quad	0
	.zero	24
	.size	gimp_gradient_segment_type_get_type.descs, 144

	.type	gimp_gradient_segment_type_get_type.type,@object # @gimp_gradient_segment_type_get_type.type
	.local	gimp_gradient_segment_type_get_type.type
	.comm	gimp_gradient_segment_type_get_type.type,8,8
	.type	.L.str.578,@object      # @.str.578
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.578:
	.asciz	"GimpGradientSegmentType"
	.size	.L.str.578, 24

	.type	.L.str.579,@object      # @.str.579
.L.str.579:
	.asciz	"gradient-segment-type"
	.size	.L.str.579, 22

	.type	gimp_gradient_segment_color_get_type.values,@object # @gimp_gradient_segment_color_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_gradient_segment_color_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.580
	.quad	.L.str.581
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.582
	.quad	.L.str.583
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.584
	.quad	.L.str.585
	.zero	24
	.size	gimp_gradient_segment_color_get_type.values, 96

	.type	.L.str.580,@object      # @.str.580
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.580:
	.asciz	"GIMP_GRADIENT_SEGMENT_RGB"
	.size	.L.str.580, 26

	.type	.L.str.581,@object      # @.str.581
.L.str.581:
	.asciz	"rgb"
	.size	.L.str.581, 4

	.type	.L.str.582,@object      # @.str.582
.L.str.582:
	.asciz	"GIMP_GRADIENT_SEGMENT_HSV_CCW"
	.size	.L.str.582, 30

	.type	.L.str.583,@object      # @.str.583
.L.str.583:
	.asciz	"hsv-ccw"
	.size	.L.str.583, 8

	.type	.L.str.584,@object      # @.str.584
.L.str.584:
	.asciz	"GIMP_GRADIENT_SEGMENT_HSV_CW"
	.size	.L.str.584, 29

	.type	.L.str.585,@object      # @.str.585
.L.str.585:
	.asciz	"hsv-cw"
	.size	.L.str.585, 7

	.type	gimp_gradient_segment_color_get_type.descs,@object # @gimp_gradient_segment_color_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_gradient_segment_color_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.580
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.582
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.584
	.quad	0
	.zero	24
	.size	gimp_gradient_segment_color_get_type.descs, 96

	.type	gimp_gradient_segment_color_get_type.type,@object # @gimp_gradient_segment_color_get_type.type
	.local	gimp_gradient_segment_color_get_type.type
	.comm	gimp_gradient_segment_color_get_type.type,8,8
	.type	.L.str.586,@object      # @.str.586
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.586:
	.asciz	"GimpGradientSegmentColor"
	.size	.L.str.586, 25

	.type	.L.str.587,@object      # @.str.587
.L.str.587:
	.asciz	"gradient-segment-color"
	.size	.L.str.587, 23

	.type	gimp_mask_apply_mode_get_type.values,@object # @gimp_mask_apply_mode_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_mask_apply_mode_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.588
	.quad	.L.str.589
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.590
	.quad	.L.str.591
	.zero	24
	.size	gimp_mask_apply_mode_get_type.values, 72

	.type	.L.str.588,@object      # @.str.588
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.588:
	.asciz	"GIMP_MASK_APPLY"
	.size	.L.str.588, 16

	.type	.L.str.589,@object      # @.str.589
.L.str.589:
	.asciz	"apply"
	.size	.L.str.589, 6

	.type	.L.str.590,@object      # @.str.590
.L.str.590:
	.asciz	"GIMP_MASK_DISCARD"
	.size	.L.str.590, 18

	.type	.L.str.591,@object      # @.str.591
.L.str.591:
	.asciz	"discard"
	.size	.L.str.591, 8

	.type	gimp_mask_apply_mode_get_type.descs,@object # @gimp_mask_apply_mode_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_mask_apply_mode_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.588
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.590
	.quad	0
	.zero	24
	.size	gimp_mask_apply_mode_get_type.descs, 72

	.type	gimp_mask_apply_mode_get_type.type,@object # @gimp_mask_apply_mode_get_type.type
	.local	gimp_mask_apply_mode_get_type.type
	.comm	gimp_mask_apply_mode_get_type.type,8,8
	.type	.L.str.592,@object      # @.str.592
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.592:
	.asciz	"GimpMaskApplyMode"
	.size	.L.str.592, 18

	.type	.L.str.593,@object      # @.str.593
.L.str.593:
	.asciz	"mask-apply-mode"
	.size	.L.str.593, 16

	.type	gimp_merge_type_get_type.values,@object # @gimp_merge_type_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_merge_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.594
	.quad	.L.str.595
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.596
	.quad	.L.str.597
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.598
	.quad	.L.str.599
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.600
	.quad	.L.str.601
	.zero	24
	.size	gimp_merge_type_get_type.values, 120

	.type	.L.str.594,@object      # @.str.594
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.594:
	.asciz	"GIMP_EXPAND_AS_NECESSARY"
	.size	.L.str.594, 25

	.type	.L.str.595,@object      # @.str.595
.L.str.595:
	.asciz	"expand-as-necessary"
	.size	.L.str.595, 20

	.type	.L.str.596,@object      # @.str.596
.L.str.596:
	.asciz	"GIMP_CLIP_TO_IMAGE"
	.size	.L.str.596, 19

	.type	.L.str.597,@object      # @.str.597
.L.str.597:
	.asciz	"clip-to-image"
	.size	.L.str.597, 14

	.type	.L.str.598,@object      # @.str.598
.L.str.598:
	.asciz	"GIMP_CLIP_TO_BOTTOM_LAYER"
	.size	.L.str.598, 26

	.type	.L.str.599,@object      # @.str.599
.L.str.599:
	.asciz	"clip-to-bottom-layer"
	.size	.L.str.599, 21

	.type	.L.str.600,@object      # @.str.600
.L.str.600:
	.asciz	"GIMP_FLATTEN_IMAGE"
	.size	.L.str.600, 19

	.type	.L.str.601,@object      # @.str.601
.L.str.601:
	.asciz	"flatten-image"
	.size	.L.str.601, 14

	.type	gimp_merge_type_get_type.descs,@object # @gimp_merge_type_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_merge_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.594
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.596
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.598
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.600
	.quad	0
	.zero	24
	.size	gimp_merge_type_get_type.descs, 120

	.type	gimp_merge_type_get_type.type,@object # @gimp_merge_type_get_type.type
	.local	gimp_merge_type_get_type.type
	.comm	gimp_merge_type_get_type.type,8,8
	.type	.L.str.602,@object      # @.str.602
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.602:
	.asciz	"GimpMergeType"
	.size	.L.str.602, 14

	.type	.L.str.603,@object      # @.str.603
.L.str.603:
	.asciz	"merge-type"
	.size	.L.str.603, 11

	.type	gimp_select_criterion_get_type.values,@object # @gimp_select_criterion_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_select_criterion_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.604
	.quad	.L.str.605
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.606
	.quad	.L.str.607
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.608
	.quad	.L.str.609
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.610
	.quad	.L.str.611
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.612
	.quad	.L.str.613
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.614
	.quad	.L.str.615
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.616
	.quad	.L.str.617
	.zero	24
	.size	gimp_select_criterion_get_type.values, 192

	.type	.L.str.604,@object      # @.str.604
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.604:
	.asciz	"GIMP_SELECT_CRITERION_COMPOSITE"
	.size	.L.str.604, 32

	.type	.L.str.605,@object      # @.str.605
.L.str.605:
	.asciz	"composite"
	.size	.L.str.605, 10

	.type	.L.str.606,@object      # @.str.606
.L.str.606:
	.asciz	"GIMP_SELECT_CRITERION_R"
	.size	.L.str.606, 24

	.type	.L.str.607,@object      # @.str.607
.L.str.607:
	.asciz	"r"
	.size	.L.str.607, 2

	.type	.L.str.608,@object      # @.str.608
.L.str.608:
	.asciz	"GIMP_SELECT_CRITERION_G"
	.size	.L.str.608, 24

	.type	.L.str.609,@object      # @.str.609
.L.str.609:
	.asciz	"g"
	.size	.L.str.609, 2

	.type	.L.str.610,@object      # @.str.610
.L.str.610:
	.asciz	"GIMP_SELECT_CRITERION_B"
	.size	.L.str.610, 24

	.type	.L.str.611,@object      # @.str.611
.L.str.611:
	.asciz	"b"
	.size	.L.str.611, 2

	.type	.L.str.612,@object      # @.str.612
.L.str.612:
	.asciz	"GIMP_SELECT_CRITERION_H"
	.size	.L.str.612, 24

	.type	.L.str.613,@object      # @.str.613
.L.str.613:
	.asciz	"h"
	.size	.L.str.613, 2

	.type	.L.str.614,@object      # @.str.614
.L.str.614:
	.asciz	"GIMP_SELECT_CRITERION_S"
	.size	.L.str.614, 24

	.type	.L.str.615,@object      # @.str.615
.L.str.615:
	.asciz	"s"
	.size	.L.str.615, 2

	.type	.L.str.616,@object      # @.str.616
.L.str.616:
	.asciz	"GIMP_SELECT_CRITERION_V"
	.size	.L.str.616, 24

	.type	.L.str.617,@object      # @.str.617
.L.str.617:
	.asciz	"v"
	.size	.L.str.617, 2

	.type	gimp_select_criterion_get_type.descs,@object # @gimp_select_criterion_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_select_criterion_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.618
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.619
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.620
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.621
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.622
	.quad	0
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.623
	.quad	0
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.624
	.quad	0
	.zero	24
	.size	gimp_select_criterion_get_type.descs, 192

	.type	.L.str.618,@object      # @.str.618
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.618:
	.asciz	"Composite"
	.size	.L.str.618, 10

	.type	.L.str.619,@object      # @.str.619
.L.str.619:
	.asciz	"Red"
	.size	.L.str.619, 4

	.type	.L.str.620,@object      # @.str.620
.L.str.620:
	.asciz	"Green"
	.size	.L.str.620, 6

	.type	.L.str.621,@object      # @.str.621
.L.str.621:
	.asciz	"Blue"
	.size	.L.str.621, 5

	.type	.L.str.622,@object      # @.str.622
.L.str.622:
	.asciz	"Hue"
	.size	.L.str.622, 4

	.type	.L.str.623,@object      # @.str.623
.L.str.623:
	.asciz	"Saturation"
	.size	.L.str.623, 11

	.type	.L.str.624,@object      # @.str.624
.L.str.624:
	.asciz	"Value"
	.size	.L.str.624, 6

	.type	gimp_select_criterion_get_type.type,@object # @gimp_select_criterion_get_type.type
	.local	gimp_select_criterion_get_type.type
	.comm	gimp_select_criterion_get_type.type,8,8
	.type	.L.str.625,@object      # @.str.625
.L.str.625:
	.asciz	"GimpSelectCriterion"
	.size	.L.str.625, 20

	.type	.L.str.626,@object      # @.str.626
.L.str.626:
	.asciz	"select-criterion"
	.size	.L.str.626, 17

	.type	gimp_message_severity_get_type.values,@object # @gimp_message_severity_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_message_severity_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.627
	.quad	.L.str.628
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.629
	.quad	.L.str.630
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.631
	.quad	.L.str.632
	.zero	24
	.size	gimp_message_severity_get_type.values, 96

	.type	.L.str.627,@object      # @.str.627
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.627:
	.asciz	"GIMP_MESSAGE_INFO"
	.size	.L.str.627, 18

	.type	.L.str.628,@object      # @.str.628
.L.str.628:
	.asciz	"info"
	.size	.L.str.628, 5

	.type	.L.str.629,@object      # @.str.629
.L.str.629:
	.asciz	"GIMP_MESSAGE_WARNING"
	.size	.L.str.629, 21

	.type	.L.str.630,@object      # @.str.630
.L.str.630:
	.asciz	"warning"
	.size	.L.str.630, 8

	.type	.L.str.631,@object      # @.str.631
.L.str.631:
	.asciz	"GIMP_MESSAGE_ERROR"
	.size	.L.str.631, 19

	.type	.L.str.632,@object      # @.str.632
.L.str.632:
	.asciz	"error"
	.size	.L.str.632, 6

	.type	gimp_message_severity_get_type.descs,@object # @gimp_message_severity_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_message_severity_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.633
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.634
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.635
	.quad	0
	.zero	24
	.size	gimp_message_severity_get_type.descs, 96

	.type	.L.str.633,@object      # @.str.633
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.633:
	.asciz	"Message"
	.size	.L.str.633, 8

	.type	.L.str.634,@object      # @.str.634
.L.str.634:
	.asciz	"Warning"
	.size	.L.str.634, 8

	.type	.L.str.635,@object      # @.str.635
.L.str.635:
	.asciz	"Error"
	.size	.L.str.635, 6

	.type	gimp_message_severity_get_type.type,@object # @gimp_message_severity_get_type.type
	.local	gimp_message_severity_get_type.type
	.comm	gimp_message_severity_get_type.type,8,8
	.type	.L.str.636,@object      # @.str.636
.L.str.636:
	.asciz	"GimpMessageSeverity"
	.size	.L.str.636, 20

	.type	.L.str.637,@object      # @.str.637
.L.str.637:
	.asciz	"message-severity"
	.size	.L.str.637, 17

	.type	gimp_color_profile_policy_get_type.values,@object # @gimp_color_profile_policy_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_color_profile_policy_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.638
	.quad	.L.str.639
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.640
	.quad	.L.str.641
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.642
	.quad	.L.str.643
	.zero	24
	.size	gimp_color_profile_policy_get_type.values, 96

	.type	.L.str.638,@object      # @.str.638
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.638:
	.asciz	"GIMP_COLOR_PROFILE_POLICY_ASK"
	.size	.L.str.638, 30

	.type	.L.str.639,@object      # @.str.639
.L.str.639:
	.asciz	"ask"
	.size	.L.str.639, 4

	.type	.L.str.640,@object      # @.str.640
.L.str.640:
	.asciz	"GIMP_COLOR_PROFILE_POLICY_KEEP"
	.size	.L.str.640, 31

	.type	.L.str.641,@object      # @.str.641
.L.str.641:
	.asciz	"keep"
	.size	.L.str.641, 5

	.type	.L.str.642,@object      # @.str.642
.L.str.642:
	.asciz	"GIMP_COLOR_PROFILE_POLICY_CONVERT"
	.size	.L.str.642, 34

	.type	.L.str.643,@object      # @.str.643
.L.str.643:
	.asciz	"convert"
	.size	.L.str.643, 8

	.type	gimp_color_profile_policy_get_type.descs,@object # @gimp_color_profile_policy_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_color_profile_policy_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.644
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.645
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.646
	.quad	0
	.zero	24
	.size	gimp_color_profile_policy_get_type.descs, 96

	.type	.L.str.644,@object      # @.str.644
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.644:
	.asciz	"Ask what to do"
	.size	.L.str.644, 15

	.type	.L.str.645,@object      # @.str.645
.L.str.645:
	.asciz	"Keep embedded profile"
	.size	.L.str.645, 22

	.type	.L.str.646,@object      # @.str.646
.L.str.646:
	.asciz	"Convert to RGB workspace"
	.size	.L.str.646, 25

	.type	gimp_color_profile_policy_get_type.type,@object # @gimp_color_profile_policy_get_type.type
	.local	gimp_color_profile_policy_get_type.type
	.comm	gimp_color_profile_policy_get_type.type,8,8
	.type	.L.str.647,@object      # @.str.647
.L.str.647:
	.asciz	"GimpColorProfilePolicy"
	.size	.L.str.647, 23

	.type	.L.str.648,@object      # @.str.648
.L.str.648:
	.asciz	"color-profile-policy"
	.size	.L.str.648, 21

	.type	gimp_dynamics_output_type_get_type.values,@object # @gimp_dynamics_output_type_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_dynamics_output_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.649
	.quad	.L.str.650
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.651
	.quad	.L.str.652
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.653
	.quad	.L.str.654
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.655
	.quad	.L.str.656
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.657
	.quad	.L.str.658
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.659
	.quad	.L.str.660
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.661
	.quad	.L.str.662
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.663
	.quad	.L.str.664
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.665
	.quad	.L.str.666
	.long	9                       # 0x9
	.zero	4
	.quad	.L.str.667
	.quad	.L.str.668
	.long	10                      # 0xa
	.zero	4
	.quad	.L.str.669
	.quad	.L.str.670
	.zero	24
	.size	gimp_dynamics_output_type_get_type.values, 288

	.type	.L.str.649,@object      # @.str.649
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.649:
	.asciz	"GIMP_DYNAMICS_OUTPUT_OPACITY"
	.size	.L.str.649, 29

	.type	.L.str.650,@object      # @.str.650
.L.str.650:
	.asciz	"opacity"
	.size	.L.str.650, 8

	.type	.L.str.651,@object      # @.str.651
.L.str.651:
	.asciz	"GIMP_DYNAMICS_OUTPUT_SIZE"
	.size	.L.str.651, 26

	.type	.L.str.652,@object      # @.str.652
.L.str.652:
	.asciz	"size"
	.size	.L.str.652, 5

	.type	.L.str.653,@object      # @.str.653
.L.str.653:
	.asciz	"GIMP_DYNAMICS_OUTPUT_ANGLE"
	.size	.L.str.653, 27

	.type	.L.str.654,@object      # @.str.654
.L.str.654:
	.asciz	"angle"
	.size	.L.str.654, 6

	.type	.L.str.655,@object      # @.str.655
.L.str.655:
	.asciz	"GIMP_DYNAMICS_OUTPUT_COLOR"
	.size	.L.str.655, 27

	.type	.L.str.656,@object      # @.str.656
.L.str.656:
	.asciz	"color"
	.size	.L.str.656, 6

	.type	.L.str.657,@object      # @.str.657
.L.str.657:
	.asciz	"GIMP_DYNAMICS_OUTPUT_HARDNESS"
	.size	.L.str.657, 30

	.type	.L.str.658,@object      # @.str.658
.L.str.658:
	.asciz	"hardness"
	.size	.L.str.658, 9

	.type	.L.str.659,@object      # @.str.659
.L.str.659:
	.asciz	"GIMP_DYNAMICS_OUTPUT_FORCE"
	.size	.L.str.659, 27

	.type	.L.str.660,@object      # @.str.660
.L.str.660:
	.asciz	"force"
	.size	.L.str.660, 6

	.type	.L.str.661,@object      # @.str.661
.L.str.661:
	.asciz	"GIMP_DYNAMICS_OUTPUT_ASPECT_RATIO"
	.size	.L.str.661, 34

	.type	.L.str.662,@object      # @.str.662
.L.str.662:
	.asciz	"aspect-ratio"
	.size	.L.str.662, 13

	.type	.L.str.663,@object      # @.str.663
.L.str.663:
	.asciz	"GIMP_DYNAMICS_OUTPUT_SPACING"
	.size	.L.str.663, 29

	.type	.L.str.664,@object      # @.str.664
.L.str.664:
	.asciz	"spacing"
	.size	.L.str.664, 8

	.type	.L.str.665,@object      # @.str.665
.L.str.665:
	.asciz	"GIMP_DYNAMICS_OUTPUT_RATE"
	.size	.L.str.665, 26

	.type	.L.str.666,@object      # @.str.666
.L.str.666:
	.asciz	"rate"
	.size	.L.str.666, 5

	.type	.L.str.667,@object      # @.str.667
.L.str.667:
	.asciz	"GIMP_DYNAMICS_OUTPUT_FLOW"
	.size	.L.str.667, 26

	.type	.L.str.668,@object      # @.str.668
.L.str.668:
	.asciz	"flow"
	.size	.L.str.668, 5

	.type	.L.str.669,@object      # @.str.669
.L.str.669:
	.asciz	"GIMP_DYNAMICS_OUTPUT_JITTER"
	.size	.L.str.669, 28

	.type	.L.str.670,@object      # @.str.670
.L.str.670:
	.asciz	"jitter"
	.size	.L.str.670, 7

	.type	gimp_dynamics_output_type_get_type.descs,@object # @gimp_dynamics_output_type_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_dynamics_output_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.671
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.672
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.673
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.674
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.675
	.quad	0
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.676
	.quad	0
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.677
	.quad	0
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.678
	.quad	0
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.679
	.quad	0
	.long	9                       # 0x9
	.zero	4
	.quad	.L.str.680
	.quad	0
	.long	10                      # 0xa
	.zero	4
	.quad	.L.str.681
	.quad	0
	.zero	24
	.size	gimp_dynamics_output_type_get_type.descs, 288

	.type	.L.str.671,@object      # @.str.671
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.671:
	.asciz	"Opacity"
	.size	.L.str.671, 8

	.type	.L.str.672,@object      # @.str.672
.L.str.672:
	.asciz	"Size"
	.size	.L.str.672, 5

	.type	.L.str.673,@object      # @.str.673
.L.str.673:
	.asciz	"Angle"
	.size	.L.str.673, 6

	.type	.L.str.674,@object      # @.str.674
.L.str.674:
	.asciz	"Color"
	.size	.L.str.674, 6

	.type	.L.str.675,@object      # @.str.675
.L.str.675:
	.asciz	"Hardness"
	.size	.L.str.675, 9

	.type	.L.str.676,@object      # @.str.676
.L.str.676:
	.asciz	"Force"
	.size	.L.str.676, 6

	.type	.L.str.677,@object      # @.str.677
.L.str.677:
	.asciz	"Aspect ratio"
	.size	.L.str.677, 13

	.type	.L.str.678,@object      # @.str.678
.L.str.678:
	.asciz	"Spacing"
	.size	.L.str.678, 8

	.type	.L.str.679,@object      # @.str.679
.L.str.679:
	.asciz	"Rate"
	.size	.L.str.679, 5

	.type	.L.str.680,@object      # @.str.680
.L.str.680:
	.asciz	"Flow"
	.size	.L.str.680, 5

	.type	.L.str.681,@object      # @.str.681
.L.str.681:
	.asciz	"Jitter"
	.size	.L.str.681, 7

	.type	gimp_dynamics_output_type_get_type.type,@object # @gimp_dynamics_output_type_get_type.type
	.local	gimp_dynamics_output_type_get_type.type
	.comm	gimp_dynamics_output_type_get_type.type,8,8
	.type	.L.str.682,@object      # @.str.682
.L.str.682:
	.asciz	"GimpDynamicsOutputType"
	.size	.L.str.682, 23

	.type	.L.str.683,@object      # @.str.683
.L.str.683:
	.asciz	"dynamics-output-type"
	.size	.L.str.683, 21


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
