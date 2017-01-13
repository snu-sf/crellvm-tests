	.text
	.file	"gimpenums.bc"
	.globl	gimp_brush_application_mode_get_type
	.align	16, 0x90
	.type	gimp_brush_application_mode_get_type,@function
gimp_brush_application_mode_get_type:   # @gimp_brush_application_mode_get_type
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
	cmpq	$0, gimp_brush_application_mode_get_type.type(%rip)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	leaq	.L.str.4(%rip), %rdi
	leaq	gimp_brush_application_mode_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.5(%rip), %rsi
	movq	%rax, gimp_brush_application_mode_get_type.type(%rip)
	movq	gimp_brush_application_mode_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.6(%rip), %rsi
	movq	gimp_brush_application_mode_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_brush_application_mode_get_type.descs(%rip), %rsi
	movq	gimp_brush_application_mode_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB0_2:                                # %if.end
	movq	gimp_brush_application_mode_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_brush_application_mode_get_type, .Lfunc_end0-gimp_brush_application_mode_get_type
	.cfi_endproc

	.globl	gimp_brush_generated_shape_get_type
	.align	16, 0x90
	.type	gimp_brush_generated_shape_get_type,@function
gimp_brush_generated_shape_get_type:    # @gimp_brush_generated_shape_get_type
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
	cmpq	$0, gimp_brush_generated_shape_get_type.type(%rip)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	leaq	.L.str.13(%rip), %rdi
	leaq	gimp_brush_generated_shape_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.5(%rip), %rsi
	movq	%rax, gimp_brush_generated_shape_get_type.type(%rip)
	movq	gimp_brush_generated_shape_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.14(%rip), %rsi
	movq	gimp_brush_generated_shape_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_brush_generated_shape_get_type.descs(%rip), %rsi
	movq	gimp_brush_generated_shape_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB1_2:                                # %if.end
	movq	gimp_brush_generated_shape_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_brush_generated_shape_get_type, .Lfunc_end1-gimp_brush_generated_shape_get_type
	.cfi_endproc

	.globl	gimp_convert_dither_type_get_type
	.align	16, 0x90
	.type	gimp_convert_dither_type_get_type,@function
gimp_convert_dither_type_get_type:      # @gimp_convert_dither_type_get_type
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
	cmpq	$0, gimp_convert_dither_type_get_type.type(%rip)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	leaq	.L.str.23(%rip), %rdi
	leaq	gimp_convert_dither_type_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.5(%rip), %rsi
	movq	%rax, gimp_convert_dither_type_get_type.type(%rip)
	movq	gimp_convert_dither_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.24(%rip), %rsi
	movq	gimp_convert_dither_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_convert_dither_type_get_type.descs(%rip), %rsi
	movq	gimp_convert_dither_type_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB2_2:                                # %if.end
	movq	gimp_convert_dither_type_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_convert_dither_type_get_type, .Lfunc_end2-gimp_convert_dither_type_get_type
	.cfi_endproc

	.globl	gimp_convert_palette_type_get_type
	.align	16, 0x90
	.type	gimp_convert_palette_type_get_type,@function
gimp_convert_palette_type_get_type:     # @gimp_convert_palette_type_get_type
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
	cmpq	$0, gimp_convert_palette_type_get_type.type(%rip)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	leaq	.L.str.35(%rip), %rdi
	leaq	gimp_convert_palette_type_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.5(%rip), %rsi
	movq	%rax, gimp_convert_palette_type_get_type.type(%rip)
	movq	gimp_convert_palette_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.36(%rip), %rsi
	movq	gimp_convert_palette_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_convert_palette_type_get_type.descs(%rip), %rsi
	movq	gimp_convert_palette_type_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB3_2:                                # %if.end
	movq	gimp_convert_palette_type_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_convert_palette_type_get_type, .Lfunc_end3-gimp_convert_palette_type_get_type
	.cfi_endproc

	.globl	gimp_convolution_type_get_type
	.align	16, 0x90
	.type	gimp_convolution_type_get_type,@function
gimp_convolution_type_get_type:         # @gimp_convolution_type_get_type
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
	cmpq	$0, gimp_convolution_type_get_type.type(%rip)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	leaq	.L.str.43(%rip), %rdi
	leaq	gimp_convolution_type_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.5(%rip), %rsi
	movq	%rax, gimp_convolution_type_get_type.type(%rip)
	movq	gimp_convolution_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.44(%rip), %rsi
	movq	gimp_convolution_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_convolution_type_get_type.descs(%rip), %rsi
	movq	gimp_convolution_type_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB4_2:                                # %if.end
	movq	gimp_convolution_type_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_convolution_type_get_type, .Lfunc_end4-gimp_convolution_type_get_type
	.cfi_endproc

	.globl	gimp_convolve_type_get_type
	.align	16, 0x90
	.type	gimp_convolve_type_get_type,@function
gimp_convolve_type_get_type:            # @gimp_convolve_type_get_type
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
	cmpq	$0, gimp_convolve_type_get_type.type(%rip)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	leaq	.L.str.49(%rip), %rdi
	leaq	gimp_convolve_type_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.5(%rip), %rsi
	movq	%rax, gimp_convolve_type_get_type.type(%rip)
	movq	gimp_convolve_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.50(%rip), %rsi
	movq	gimp_convolve_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_convolve_type_get_type.descs(%rip), %rsi
	movq	gimp_convolve_type_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB5_2:                                # %if.end
	movq	gimp_convolve_type_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_convolve_type_get_type, .Lfunc_end5-gimp_convolve_type_get_type
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
	cmpq	$0, gimp_fill_type_get_type.type(%rip)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	leaq	.L.str.61(%rip), %rdi
	leaq	gimp_fill_type_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.5(%rip), %rsi
	movq	%rax, gimp_fill_type_get_type.type(%rip)
	movq	gimp_fill_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.62(%rip), %rsi
	movq	gimp_fill_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_fill_type_get_type.descs(%rip), %rsi
	movq	gimp_fill_type_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB6_2:                                # %if.end
	movq	gimp_fill_type_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_fill_type_get_type, .Lfunc_end6-gimp_fill_type_get_type
	.cfi_endproc

	.globl	gimp_gradient_segment_color_get_type
	.align	16, 0x90
	.type	gimp_gradient_segment_color_get_type,@function
gimp_gradient_segment_color_get_type:   # @gimp_gradient_segment_color_get_type
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
	cmpq	$0, gimp_gradient_segment_color_get_type.type(%rip)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	leaq	.L.str.69(%rip), %rdi
	leaq	gimp_gradient_segment_color_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.5(%rip), %rsi
	movq	%rax, gimp_gradient_segment_color_get_type.type(%rip)
	movq	gimp_gradient_segment_color_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.70(%rip), %rsi
	movq	gimp_gradient_segment_color_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_gradient_segment_color_get_type.descs(%rip), %rsi
	movq	gimp_gradient_segment_color_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB7_2:                                # %if.end
	movq	gimp_gradient_segment_color_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_gradient_segment_color_get_type, .Lfunc_end7-gimp_gradient_segment_color_get_type
	.cfi_endproc

	.globl	gimp_gradient_segment_type_get_type
	.align	16, 0x90
	.type	gimp_gradient_segment_type_get_type,@function
gimp_gradient_segment_type_get_type:    # @gimp_gradient_segment_type_get_type
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
	cmpq	$0, gimp_gradient_segment_type_get_type.type(%rip)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	leaq	.L.str.81(%rip), %rdi
	leaq	gimp_gradient_segment_type_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.5(%rip), %rsi
	movq	%rax, gimp_gradient_segment_type_get_type.type(%rip)
	movq	gimp_gradient_segment_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.82(%rip), %rsi
	movq	gimp_gradient_segment_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_gradient_segment_type_get_type.descs(%rip), %rsi
	movq	gimp_gradient_segment_type_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB8_2:                                # %if.end
	movq	gimp_gradient_segment_type_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_gradient_segment_type_get_type, .Lfunc_end8-gimp_gradient_segment_type_get_type
	.cfi_endproc

	.globl	gimp_histogram_channel_get_type
	.align	16, 0x90
	.type	gimp_histogram_channel_get_type,@function
gimp_histogram_channel_get_type:        # @gimp_histogram_channel_get_type
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
	cmpq	$0, gimp_histogram_channel_get_type.type(%rip)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	leaq	.L.str.93(%rip), %rdi
	leaq	gimp_histogram_channel_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.5(%rip), %rsi
	movq	%rax, gimp_histogram_channel_get_type.type(%rip)
	movq	gimp_histogram_channel_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.94(%rip), %rsi
	movq	gimp_histogram_channel_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_histogram_channel_get_type.descs(%rip), %rsi
	movq	gimp_histogram_channel_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB9_2:                                # %if.end
	movq	gimp_histogram_channel_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_histogram_channel_get_type, .Lfunc_end9-gimp_histogram_channel_get_type
	.cfi_endproc

	.globl	gimp_hue_range_get_type
	.align	16, 0x90
	.type	gimp_hue_range_get_type,@function
gimp_hue_range_get_type:                # @gimp_hue_range_get_type
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
	cmpq	$0, gimp_hue_range_get_type.type(%rip)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	leaq	.L.str.109(%rip), %rdi
	leaq	gimp_hue_range_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.5(%rip), %rsi
	movq	%rax, gimp_hue_range_get_type.type(%rip)
	movq	gimp_hue_range_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.110(%rip), %rsi
	movq	gimp_hue_range_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_hue_range_get_type.descs(%rip), %rsi
	movq	gimp_hue_range_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB10_2:                               # %if.end
	movq	gimp_hue_range_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_hue_range_get_type, .Lfunc_end10-gimp_hue_range_get_type
	.cfi_endproc

	.globl	gimp_ink_blob_type_get_type
	.align	16, 0x90
	.type	gimp_ink_blob_type_get_type,@function
gimp_ink_blob_type_get_type:            # @gimp_ink_blob_type_get_type
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
	cmpq	$0, gimp_ink_blob_type_get_type.type(%rip)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	leaq	.L.str.114(%rip), %rdi
	leaq	gimp_ink_blob_type_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.5(%rip), %rsi
	movq	%rax, gimp_ink_blob_type_get_type.type(%rip)
	movq	gimp_ink_blob_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.115(%rip), %rsi
	movq	gimp_ink_blob_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_ink_blob_type_get_type.descs(%rip), %rsi
	movq	gimp_ink_blob_type_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB11_2:                               # %if.end
	movq	gimp_ink_blob_type_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_ink_blob_type_get_type, .Lfunc_end11-gimp_ink_blob_type_get_type
	.cfi_endproc

	.globl	gimp_layer_mode_effects_get_type
	.align	16, 0x90
	.type	gimp_layer_mode_effects_get_type,@function
gimp_layer_mode_effects_get_type:       # @gimp_layer_mode_effects_get_type
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
	cmpq	$0, gimp_layer_mode_effects_get_type.type(%rip)
	jne	.LBB12_2
# BB#1:                                 # %if.then
	leaq	.L.str.162(%rip), %rdi
	leaq	gimp_layer_mode_effects_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.5(%rip), %rsi
	movq	%rax, gimp_layer_mode_effects_get_type.type(%rip)
	movq	gimp_layer_mode_effects_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.163(%rip), %rsi
	movq	gimp_layer_mode_effects_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_layer_mode_effects_get_type.descs(%rip), %rsi
	movq	gimp_layer_mode_effects_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB12_2:                               # %if.end
	movq	gimp_layer_mode_effects_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_layer_mode_effects_get_type, .Lfunc_end12-gimp_layer_mode_effects_get_type
	.cfi_endproc

	.globl	gimp_mask_apply_mode_get_type
	.align	16, 0x90
	.type	gimp_mask_apply_mode_get_type,@function
gimp_mask_apply_mode_get_type:          # @gimp_mask_apply_mode_get_type
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
	cmpq	$0, gimp_mask_apply_mode_get_type.type(%rip)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	leaq	.L.str.168(%rip), %rdi
	leaq	gimp_mask_apply_mode_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.5(%rip), %rsi
	movq	%rax, gimp_mask_apply_mode_get_type.type(%rip)
	movq	gimp_mask_apply_mode_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.169(%rip), %rsi
	movq	gimp_mask_apply_mode_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_mask_apply_mode_get_type.descs(%rip), %rsi
	movq	gimp_mask_apply_mode_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB13_2:                               # %if.end
	movq	gimp_mask_apply_mode_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_mask_apply_mode_get_type, .Lfunc_end13-gimp_mask_apply_mode_get_type
	.cfi_endproc

	.globl	gimp_merge_type_get_type
	.align	16, 0x90
	.type	gimp_merge_type_get_type,@function
gimp_merge_type_get_type:               # @gimp_merge_type_get_type
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
	cmpq	$0, gimp_merge_type_get_type.type(%rip)
	jne	.LBB14_2
# BB#1:                                 # %if.then
	leaq	.L.str.178(%rip), %rdi
	leaq	gimp_merge_type_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.5(%rip), %rsi
	movq	%rax, gimp_merge_type_get_type.type(%rip)
	movq	gimp_merge_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.179(%rip), %rsi
	movq	gimp_merge_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_merge_type_get_type.descs(%rip), %rsi
	movq	gimp_merge_type_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB14_2:                               # %if.end
	movq	gimp_merge_type_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_merge_type_get_type, .Lfunc_end14-gimp_merge_type_get_type
	.cfi_endproc

	.globl	gimp_offset_type_get_type
	.align	16, 0x90
	.type	gimp_offset_type_get_type,@function
gimp_offset_type_get_type:              # @gimp_offset_type_get_type
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
	cmpq	$0, gimp_offset_type_get_type.type(%rip)
	jne	.LBB15_2
# BB#1:                                 # %if.then
	leaq	.L.str.184(%rip), %rdi
	leaq	gimp_offset_type_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.5(%rip), %rsi
	movq	%rax, gimp_offset_type_get_type.type(%rip)
	movq	gimp_offset_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.185(%rip), %rsi
	movq	gimp_offset_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_offset_type_get_type.descs(%rip), %rsi
	movq	gimp_offset_type_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB15_2:                               # %if.end
	movq	gimp_offset_type_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_offset_type_get_type, .Lfunc_end15-gimp_offset_type_get_type
	.cfi_endproc

	.globl	gimp_orientation_type_get_type
	.align	16, 0x90
	.type	gimp_orientation_type_get_type,@function
gimp_orientation_type_get_type:         # @gimp_orientation_type_get_type
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
	cmpq	$0, gimp_orientation_type_get_type.type(%rip)
	jne	.LBB16_2
# BB#1:                                 # %if.then
	leaq	.L.str.192(%rip), %rdi
	leaq	gimp_orientation_type_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.5(%rip), %rsi
	movq	%rax, gimp_orientation_type_get_type.type(%rip)
	movq	gimp_orientation_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.193(%rip), %rsi
	movq	gimp_orientation_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_orientation_type_get_type.descs(%rip), %rsi
	movq	gimp_orientation_type_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB16_2:                               # %if.end
	movq	gimp_orientation_type_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_orientation_type_get_type, .Lfunc_end16-gimp_orientation_type_get_type
	.cfi_endproc

	.globl	gimp_rotation_type_get_type
	.align	16, 0x90
	.type	gimp_rotation_type_get_type,@function
gimp_rotation_type_get_type:            # @gimp_rotation_type_get_type
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
	cmpq	$0, gimp_rotation_type_get_type.type(%rip)
	jne	.LBB17_2
# BB#1:                                 # %if.then
	leaq	.L.str.200(%rip), %rdi
	leaq	gimp_rotation_type_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.5(%rip), %rsi
	movq	%rax, gimp_rotation_type_get_type.type(%rip)
	movq	gimp_rotation_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.201(%rip), %rsi
	movq	gimp_rotation_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_rotation_type_get_type.descs(%rip), %rsi
	movq	gimp_rotation_type_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB17_2:                               # %if.end
	movq	gimp_rotation_type_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_rotation_type_get_type, .Lfunc_end17-gimp_rotation_type_get_type
	.cfi_endproc

	.globl	gimp_select_criterion_get_type
	.align	16, 0x90
	.type	gimp_select_criterion_get_type,@function
gimp_select_criterion_get_type:         # @gimp_select_criterion_get_type
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
	cmpq	$0, gimp_select_criterion_get_type.type(%rip)
	jne	.LBB18_2
# BB#1:                                 # %if.then
	leaq	.L.str.216(%rip), %rdi
	leaq	gimp_select_criterion_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.5(%rip), %rsi
	movq	%rax, gimp_select_criterion_get_type.type(%rip)
	movq	gimp_select_criterion_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.217(%rip), %rsi
	movq	gimp_select_criterion_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_select_criterion_get_type.descs(%rip), %rsi
	movq	gimp_select_criterion_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB18_2:                               # %if.end
	movq	gimp_select_criterion_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_select_criterion_get_type, .Lfunc_end18-gimp_select_criterion_get_type
	.cfi_endproc

	.globl	gimp_enums_init
	.align	16, 0x90
	.type	gimp_enums_init,@function
gimp_enums_init:                        # @gimp_enums_init
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
	subq	$32, %rsp
	leaq	get_type_funcs(%rip), %rax
	movq	%rax, -8(%rbp)
	cmpl	$0, enums_initialized(%rip)
	je	.LBB19_2
# BB#1:                                 # %if.then
	jmp	.LBB19_7
.LBB19_2:                               # %if.end
	movl	$0, -12(%rbp)
.LBB19_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-12(%rbp), %rax
	cmpq	$53, %rax
	jae	.LBB19_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB19_3 Depth=1
	movq	-8(%rbp), %rax
	callq	*(%rax)
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_type_class_ref@PLT
	movq	%rax, -32(%rbp)         # 8-byte Spill
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB19_3 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, -8(%rbp)
	jmp	.LBB19_3
.LBB19_6:                               # %for.end
	movl	$1, enums_initialized(%rip)
.LBB19_7:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_enums_init, .Lfunc_end19-gimp_enums_init
	.cfi_endproc

	.globl	gimp_enums_get_type_names
	.align	16, 0x90
	.type	gimp_enums_get_type_names,@function
gimp_enums_get_type_names:              # @gimp_enums_get_type_names
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB20_3
# BB#2:                                 # %if.then
	jmp	.LBB20_4
.LBB20_3:                               # %if.else
	leaq	.L.str.218(%rip), %rdi
	leaq	.L__func__.gimp_enums_get_type_names(%rip), %rsi
	leaq	.L.str.219(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB20_6
.LBB20_4:                               # %if.end
	jmp	.LBB20_5
.LBB20_5:                               # %do.end
	leaq	type_names(%rip), %rax
	movq	-16(%rbp), %rcx
	movl	$53, (%rcx)
	movq	%rax, -8(%rbp)
.LBB20_6:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_enums_get_type_names, .Lfunc_end20-gimp_enums_get_type_names
	.cfi_endproc

	.type	gimp_brush_application_mode_get_type.values,@object # @gimp_brush_application_mode_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_brush_application_mode_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.3
	.zero	24
	.size	gimp_brush_application_mode_get_type.values, 72

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GIMP_BRUSH_HARD"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"hard"
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_BRUSH_SOFT"
	.size	.L.str.2, 16

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"soft"
	.size	.L.str.3, 5

	.type	gimp_brush_application_mode_get_type.descs,@object # @gimp_brush_application_mode_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_brush_application_mode_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.2
	.quad	0
	.zero	24
	.size	gimp_brush_application_mode_get_type.descs, 72

	.type	gimp_brush_application_mode_get_type.type,@object # @gimp_brush_application_mode_get_type.type
	.local	gimp_brush_application_mode_get_type.type
	.comm	gimp_brush_application_mode_get_type.type,8,8
	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"GimpBrushApplicationMode"
	.size	.L.str.4, 25

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp20-libgimp"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"brush-application-mode"
	.size	.L.str.6, 23

	.type	gimp_brush_generated_shape_get_type.values,@object # @gimp_brush_generated_shape_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_brush_generated_shape_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.7
	.quad	.L.str.8
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.9
	.quad	.L.str.10
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.11
	.quad	.L.str.12
	.zero	24
	.size	gimp_brush_generated_shape_get_type.values, 96

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"GIMP_BRUSH_GENERATED_CIRCLE"
	.size	.L.str.7, 28

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"circle"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GIMP_BRUSH_GENERATED_SQUARE"
	.size	.L.str.9, 28

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"square"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"GIMP_BRUSH_GENERATED_DIAMOND"
	.size	.L.str.11, 29

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"diamond"
	.size	.L.str.12, 8

	.type	gimp_brush_generated_shape_get_type.descs,@object # @gimp_brush_generated_shape_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_brush_generated_shape_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.7
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.9
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.11
	.quad	0
	.zero	24
	.size	gimp_brush_generated_shape_get_type.descs, 96

	.type	gimp_brush_generated_shape_get_type.type,@object # @gimp_brush_generated_shape_get_type.type
	.local	gimp_brush_generated_shape_get_type.type
	.comm	gimp_brush_generated_shape_get_type.type,8,8
	.type	.L.str.13,@object       # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"GimpBrushGeneratedShape"
	.size	.L.str.13, 24

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"brush-generated-shape"
	.size	.L.str.14, 22

	.type	gimp_convert_dither_type_get_type.values,@object # @gimp_convert_dither_type_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_convert_dither_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.15
	.quad	.L.str.16
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.17
	.quad	.L.str.18
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.19
	.quad	.L.str.20
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.21
	.quad	.L.str.22
	.zero	24
	.size	gimp_convert_dither_type_get_type.values, 120

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"GIMP_NO_DITHER"
	.size	.L.str.15, 15

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"no-dither"
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"GIMP_FS_DITHER"
	.size	.L.str.17, 15

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"fs-dither"
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"GIMP_FSLOWBLEED_DITHER"
	.size	.L.str.19, 23

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"fslowbleed-dither"
	.size	.L.str.20, 18

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"GIMP_FIXED_DITHER"
	.size	.L.str.21, 18

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"fixed-dither"
	.size	.L.str.22, 13

	.type	gimp_convert_dither_type_get_type.descs,@object # @gimp_convert_dither_type_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_convert_dither_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.15
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.17
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.19
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.21
	.quad	0
	.zero	24
	.size	gimp_convert_dither_type_get_type.descs, 120

	.type	gimp_convert_dither_type_get_type.type,@object # @gimp_convert_dither_type_get_type.type
	.local	gimp_convert_dither_type_get_type.type
	.comm	gimp_convert_dither_type_get_type.type,8,8
	.type	.L.str.23,@object       # @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"GimpConvertDitherType"
	.size	.L.str.23, 22

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"convert-dither-type"
	.size	.L.str.24, 20

	.type	gimp_convert_palette_type_get_type.values,@object # @gimp_convert_palette_type_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_convert_palette_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.25
	.quad	.L.str.26
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.27
	.quad	.L.str.28
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.29
	.quad	.L.str.30
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.31
	.quad	.L.str.32
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.33
	.quad	.L.str.34
	.zero	24
	.size	gimp_convert_palette_type_get_type.values, 144

	.type	.L.str.25,@object       # @.str.25
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.25:
	.asciz	"GIMP_MAKE_PALETTE"
	.size	.L.str.25, 18

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"make-palette"
	.size	.L.str.26, 13

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"GIMP_REUSE_PALETTE"
	.size	.L.str.27, 19

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"reuse-palette"
	.size	.L.str.28, 14

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"GIMP_WEB_PALETTE"
	.size	.L.str.29, 17

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"web-palette"
	.size	.L.str.30, 12

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"GIMP_MONO_PALETTE"
	.size	.L.str.31, 18

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"mono-palette"
	.size	.L.str.32, 13

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"GIMP_CUSTOM_PALETTE"
	.size	.L.str.33, 20

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"custom-palette"
	.size	.L.str.34, 15

	.type	gimp_convert_palette_type_get_type.descs,@object # @gimp_convert_palette_type_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_convert_palette_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.25
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.27
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.29
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.31
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.33
	.quad	0
	.zero	24
	.size	gimp_convert_palette_type_get_type.descs, 144

	.type	gimp_convert_palette_type_get_type.type,@object # @gimp_convert_palette_type_get_type.type
	.local	gimp_convert_palette_type_get_type.type
	.comm	gimp_convert_palette_type_get_type.type,8,8
	.type	.L.str.35,@object       # @.str.35
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.35:
	.asciz	"GimpConvertPaletteType"
	.size	.L.str.35, 23

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"convert-palette-type"
	.size	.L.str.36, 21

	.type	gimp_convolution_type_get_type.values,@object # @gimp_convolution_type_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_convolution_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.37
	.quad	.L.str.38
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.39
	.quad	.L.str.40
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.41
	.quad	.L.str.42
	.zero	24
	.size	gimp_convolution_type_get_type.values, 96

	.type	.L.str.37,@object       # @.str.37
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.37:
	.asciz	"GIMP_NORMAL_CONVOL"
	.size	.L.str.37, 19

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"normal-convol"
	.size	.L.str.38, 14

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"GIMP_ABSOLUTE_CONVOL"
	.size	.L.str.39, 21

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"absolute-convol"
	.size	.L.str.40, 16

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"GIMP_NEGATIVE_CONVOL"
	.size	.L.str.41, 21

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"negative-convol"
	.size	.L.str.42, 16

	.type	gimp_convolution_type_get_type.descs,@object # @gimp_convolution_type_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_convolution_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.37
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.39
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.41
	.quad	0
	.zero	24
	.size	gimp_convolution_type_get_type.descs, 96

	.type	gimp_convolution_type_get_type.type,@object # @gimp_convolution_type_get_type.type
	.local	gimp_convolution_type_get_type.type
	.comm	gimp_convolution_type_get_type.type,8,8
	.type	.L.str.43,@object       # @.str.43
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.43:
	.asciz	"GimpConvolutionType"
	.size	.L.str.43, 20

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"convolution-type"
	.size	.L.str.44, 17

	.type	gimp_convolve_type_get_type.values,@object # @gimp_convolve_type_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_convolve_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.45
	.quad	.L.str.46
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.47
	.quad	.L.str.48
	.zero	24
	.size	gimp_convolve_type_get_type.values, 72

	.type	.L.str.45,@object       # @.str.45
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.45:
	.asciz	"GIMP_BLUR_CONVOLVE"
	.size	.L.str.45, 19

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"blur-convolve"
	.size	.L.str.46, 14

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"GIMP_SHARPEN_CONVOLVE"
	.size	.L.str.47, 22

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"sharpen-convolve"
	.size	.L.str.48, 17

	.type	gimp_convolve_type_get_type.descs,@object # @gimp_convolve_type_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_convolve_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.45
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.47
	.quad	0
	.zero	24
	.size	gimp_convolve_type_get_type.descs, 72

	.type	gimp_convolve_type_get_type.type,@object # @gimp_convolve_type_get_type.type
	.local	gimp_convolve_type_get_type.type
	.comm	gimp_convolve_type_get_type.type,8,8
	.type	.L.str.49,@object       # @.str.49
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.49:
	.asciz	"GimpConvolveType"
	.size	.L.str.49, 17

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"convolve-type"
	.size	.L.str.50, 14

	.type	gimp_fill_type_get_type.values,@object # @gimp_fill_type_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_fill_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.51
	.quad	.L.str.52
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.53
	.quad	.L.str.54
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.55
	.quad	.L.str.56
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.57
	.quad	.L.str.58
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.59
	.quad	.L.str.60
	.zero	24
	.size	gimp_fill_type_get_type.values, 144

	.type	.L.str.51,@object       # @.str.51
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.51:
	.asciz	"GIMP_FOREGROUND_FILL"
	.size	.L.str.51, 21

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"foreground-fill"
	.size	.L.str.52, 16

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"GIMP_BACKGROUND_FILL"
	.size	.L.str.53, 21

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"background-fill"
	.size	.L.str.54, 16

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"GIMP_WHITE_FILL"
	.size	.L.str.55, 16

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"white-fill"
	.size	.L.str.56, 11

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"GIMP_TRANSPARENT_FILL"
	.size	.L.str.57, 22

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"transparent-fill"
	.size	.L.str.58, 17

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"GIMP_PATTERN_FILL"
	.size	.L.str.59, 18

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"pattern-fill"
	.size	.L.str.60, 13

	.type	gimp_fill_type_get_type.descs,@object # @gimp_fill_type_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_fill_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.51
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.53
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.55
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.57
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.59
	.quad	0
	.zero	24
	.size	gimp_fill_type_get_type.descs, 144

	.type	gimp_fill_type_get_type.type,@object # @gimp_fill_type_get_type.type
	.local	gimp_fill_type_get_type.type
	.comm	gimp_fill_type_get_type.type,8,8
	.type	.L.str.61,@object       # @.str.61
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.61:
	.asciz	"GimpFillType"
	.size	.L.str.61, 13

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"fill-type"
	.size	.L.str.62, 10

	.type	gimp_gradient_segment_color_get_type.values,@object # @gimp_gradient_segment_color_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_gradient_segment_color_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.63
	.quad	.L.str.64
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.65
	.quad	.L.str.66
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.67
	.quad	.L.str.68
	.zero	24
	.size	gimp_gradient_segment_color_get_type.values, 96

	.type	.L.str.63,@object       # @.str.63
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.63:
	.asciz	"GIMP_GRADIENT_SEGMENT_RGB"
	.size	.L.str.63, 26

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"rgb"
	.size	.L.str.64, 4

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"GIMP_GRADIENT_SEGMENT_HSV_CCW"
	.size	.L.str.65, 30

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"hsv-ccw"
	.size	.L.str.66, 8

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"GIMP_GRADIENT_SEGMENT_HSV_CW"
	.size	.L.str.67, 29

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"hsv-cw"
	.size	.L.str.68, 7

	.type	gimp_gradient_segment_color_get_type.descs,@object # @gimp_gradient_segment_color_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_gradient_segment_color_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.63
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.65
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.67
	.quad	0
	.zero	24
	.size	gimp_gradient_segment_color_get_type.descs, 96

	.type	gimp_gradient_segment_color_get_type.type,@object # @gimp_gradient_segment_color_get_type.type
	.local	gimp_gradient_segment_color_get_type.type
	.comm	gimp_gradient_segment_color_get_type.type,8,8
	.type	.L.str.69,@object       # @.str.69
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.69:
	.asciz	"GimpGradientSegmentColor"
	.size	.L.str.69, 25

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"gradient-segment-color"
	.size	.L.str.70, 23

	.type	gimp_gradient_segment_type_get_type.values,@object # @gimp_gradient_segment_type_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_gradient_segment_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.71
	.quad	.L.str.72
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.73
	.quad	.L.str.74
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.75
	.quad	.L.str.76
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.77
	.quad	.L.str.78
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.79
	.quad	.L.str.80
	.zero	24
	.size	gimp_gradient_segment_type_get_type.values, 144

	.type	.L.str.71,@object       # @.str.71
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.71:
	.asciz	"GIMP_GRADIENT_SEGMENT_LINEAR"
	.size	.L.str.71, 29

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"linear"
	.size	.L.str.72, 7

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"GIMP_GRADIENT_SEGMENT_CURVED"
	.size	.L.str.73, 29

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"curved"
	.size	.L.str.74, 7

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"GIMP_GRADIENT_SEGMENT_SINE"
	.size	.L.str.75, 27

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"sine"
	.size	.L.str.76, 5

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"GIMP_GRADIENT_SEGMENT_SPHERE_INCREASING"
	.size	.L.str.77, 40

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"sphere-increasing"
	.size	.L.str.78, 18

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"GIMP_GRADIENT_SEGMENT_SPHERE_DECREASING"
	.size	.L.str.79, 40

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"sphere-decreasing"
	.size	.L.str.80, 18

	.type	gimp_gradient_segment_type_get_type.descs,@object # @gimp_gradient_segment_type_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_gradient_segment_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.71
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.73
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.75
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.77
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.79
	.quad	0
	.zero	24
	.size	gimp_gradient_segment_type_get_type.descs, 144

	.type	gimp_gradient_segment_type_get_type.type,@object # @gimp_gradient_segment_type_get_type.type
	.local	gimp_gradient_segment_type_get_type.type
	.comm	gimp_gradient_segment_type_get_type.type,8,8
	.type	.L.str.81,@object       # @.str.81
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.81:
	.asciz	"GimpGradientSegmentType"
	.size	.L.str.81, 24

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"gradient-segment-type"
	.size	.L.str.82, 22

	.type	gimp_histogram_channel_get_type.values,@object # @gimp_histogram_channel_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_histogram_channel_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.83
	.quad	.L.str.84
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.85
	.quad	.L.str.86
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.87
	.quad	.L.str.88
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.89
	.quad	.L.str.90
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.91
	.quad	.L.str.92
	.zero	24
	.size	gimp_histogram_channel_get_type.values, 144

	.type	.L.str.83,@object       # @.str.83
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.83:
	.asciz	"GIMP_HISTOGRAM_VALUE"
	.size	.L.str.83, 21

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"value"
	.size	.L.str.84, 6

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"GIMP_HISTOGRAM_RED"
	.size	.L.str.85, 19

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"red"
	.size	.L.str.86, 4

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"GIMP_HISTOGRAM_GREEN"
	.size	.L.str.87, 21

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"green"
	.size	.L.str.88, 6

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"GIMP_HISTOGRAM_BLUE"
	.size	.L.str.89, 20

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"blue"
	.size	.L.str.90, 5

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"GIMP_HISTOGRAM_ALPHA"
	.size	.L.str.91, 21

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"alpha"
	.size	.L.str.92, 6

	.type	gimp_histogram_channel_get_type.descs,@object # @gimp_histogram_channel_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_histogram_channel_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.83
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.85
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.87
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.89
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.91
	.quad	0
	.zero	24
	.size	gimp_histogram_channel_get_type.descs, 144

	.type	gimp_histogram_channel_get_type.type,@object # @gimp_histogram_channel_get_type.type
	.local	gimp_histogram_channel_get_type.type
	.comm	gimp_histogram_channel_get_type.type,8,8
	.type	.L.str.93,@object       # @.str.93
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.93:
	.asciz	"GimpHistogramChannel"
	.size	.L.str.93, 21

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"histogram-channel"
	.size	.L.str.94, 18

	.type	gimp_hue_range_get_type.values,@object # @gimp_hue_range_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_hue_range_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.95
	.quad	.L.str.96
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.97
	.quad	.L.str.98
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.99
	.quad	.L.str.100
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.101
	.quad	.L.str.102
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.103
	.quad	.L.str.104
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.105
	.quad	.L.str.106
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.107
	.quad	.L.str.108
	.zero	24
	.size	gimp_hue_range_get_type.values, 192

	.type	.L.str.95,@object       # @.str.95
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.95:
	.asciz	"GIMP_ALL_HUES"
	.size	.L.str.95, 14

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"all-hues"
	.size	.L.str.96, 9

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"GIMP_RED_HUES"
	.size	.L.str.97, 14

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"red-hues"
	.size	.L.str.98, 9

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"GIMP_YELLOW_HUES"
	.size	.L.str.99, 17

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"yellow-hues"
	.size	.L.str.100, 12

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"GIMP_GREEN_HUES"
	.size	.L.str.101, 16

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"green-hues"
	.size	.L.str.102, 11

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"GIMP_CYAN_HUES"
	.size	.L.str.103, 15

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"cyan-hues"
	.size	.L.str.104, 10

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"GIMP_BLUE_HUES"
	.size	.L.str.105, 15

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"blue-hues"
	.size	.L.str.106, 10

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"GIMP_MAGENTA_HUES"
	.size	.L.str.107, 18

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"magenta-hues"
	.size	.L.str.108, 13

	.type	gimp_hue_range_get_type.descs,@object # @gimp_hue_range_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_hue_range_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.95
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.97
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.99
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.101
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.103
	.quad	0
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.105
	.quad	0
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.107
	.quad	0
	.zero	24
	.size	gimp_hue_range_get_type.descs, 192

	.type	gimp_hue_range_get_type.type,@object # @gimp_hue_range_get_type.type
	.local	gimp_hue_range_get_type.type
	.comm	gimp_hue_range_get_type.type,8,8
	.type	.L.str.109,@object      # @.str.109
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.109:
	.asciz	"GimpHueRange"
	.size	.L.str.109, 13

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"hue-range"
	.size	.L.str.110, 10

	.type	gimp_ink_blob_type_get_type.values,@object # @gimp_ink_blob_type_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_ink_blob_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.111
	.quad	.L.str.8
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.112
	.quad	.L.str.10
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.113
	.quad	.L.str.12
	.zero	24
	.size	gimp_ink_blob_type_get_type.values, 96

	.type	.L.str.111,@object      # @.str.111
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.111:
	.asciz	"GIMP_INK_BLOB_TYPE_CIRCLE"
	.size	.L.str.111, 26

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"GIMP_INK_BLOB_TYPE_SQUARE"
	.size	.L.str.112, 26

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"GIMP_INK_BLOB_TYPE_DIAMOND"
	.size	.L.str.113, 27

	.type	gimp_ink_blob_type_get_type.descs,@object # @gimp_ink_blob_type_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_ink_blob_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.111
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.112
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.113
	.quad	0
	.zero	24
	.size	gimp_ink_blob_type_get_type.descs, 96

	.type	gimp_ink_blob_type_get_type.type,@object # @gimp_ink_blob_type_get_type.type
	.local	gimp_ink_blob_type_get_type.type
	.comm	gimp_ink_blob_type_get_type.type,8,8
	.type	.L.str.114,@object      # @.str.114
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.114:
	.asciz	"GimpInkBlobType"
	.size	.L.str.114, 16

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"ink-blob-type"
	.size	.L.str.115, 14

	.type	gimp_layer_mode_effects_get_type.values,@object # @gimp_layer_mode_effects_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_layer_mode_effects_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.116
	.quad	.L.str.117
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.118
	.quad	.L.str.119
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.120
	.quad	.L.str.121
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.122
	.quad	.L.str.123
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.124
	.quad	.L.str.125
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.126
	.quad	.L.str.127
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.128
	.quad	.L.str.129
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.130
	.quad	.L.str.131
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.132
	.quad	.L.str.133
	.long	9                       # 0x9
	.zero	4
	.quad	.L.str.134
	.quad	.L.str.135
	.long	10                      # 0xa
	.zero	4
	.quad	.L.str.136
	.quad	.L.str.137
	.long	11                      # 0xb
	.zero	4
	.quad	.L.str.138
	.quad	.L.str.139
	.long	12                      # 0xc
	.zero	4
	.quad	.L.str.140
	.quad	.L.str.141
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.142
	.quad	.L.str.143
	.long	14                      # 0xe
	.zero	4
	.quad	.L.str.144
	.quad	.L.str.145
	.long	15                      # 0xf
	.zero	4
	.quad	.L.str.146
	.quad	.L.str.147
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.148
	.quad	.L.str.149
	.long	17                      # 0x11
	.zero	4
	.quad	.L.str.150
	.quad	.L.str.151
	.long	18                      # 0x12
	.zero	4
	.quad	.L.str.152
	.quad	.L.str.153
	.long	19                      # 0x13
	.zero	4
	.quad	.L.str.154
	.quad	.L.str.155
	.long	20                      # 0x14
	.zero	4
	.quad	.L.str.156
	.quad	.L.str.157
	.long	21                      # 0x15
	.zero	4
	.quad	.L.str.158
	.quad	.L.str.159
	.long	22                      # 0x16
	.zero	4
	.quad	.L.str.160
	.quad	.L.str.161
	.zero	24
	.size	gimp_layer_mode_effects_get_type.values, 576

	.type	.L.str.116,@object      # @.str.116
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.116:
	.asciz	"GIMP_NORMAL_MODE"
	.size	.L.str.116, 17

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"normal-mode"
	.size	.L.str.117, 12

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"GIMP_DISSOLVE_MODE"
	.size	.L.str.118, 19

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"dissolve-mode"
	.size	.L.str.119, 14

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"GIMP_BEHIND_MODE"
	.size	.L.str.120, 17

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"behind-mode"
	.size	.L.str.121, 12

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"GIMP_MULTIPLY_MODE"
	.size	.L.str.122, 19

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"multiply-mode"
	.size	.L.str.123, 14

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"GIMP_SCREEN_MODE"
	.size	.L.str.124, 17

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"screen-mode"
	.size	.L.str.125, 12

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"GIMP_OVERLAY_MODE"
	.size	.L.str.126, 18

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"overlay-mode"
	.size	.L.str.127, 13

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"GIMP_DIFFERENCE_MODE"
	.size	.L.str.128, 21

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"difference-mode"
	.size	.L.str.129, 16

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"GIMP_ADDITION_MODE"
	.size	.L.str.130, 19

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"addition-mode"
	.size	.L.str.131, 14

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"GIMP_SUBTRACT_MODE"
	.size	.L.str.132, 19

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"subtract-mode"
	.size	.L.str.133, 14

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"GIMP_DARKEN_ONLY_MODE"
	.size	.L.str.134, 22

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"darken-only-mode"
	.size	.L.str.135, 17

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"GIMP_LIGHTEN_ONLY_MODE"
	.size	.L.str.136, 23

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"lighten-only-mode"
	.size	.L.str.137, 18

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"GIMP_HUE_MODE"
	.size	.L.str.138, 14

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"hue-mode"
	.size	.L.str.139, 9

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"GIMP_SATURATION_MODE"
	.size	.L.str.140, 21

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"saturation-mode"
	.size	.L.str.141, 16

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"GIMP_COLOR_MODE"
	.size	.L.str.142, 16

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"color-mode"
	.size	.L.str.143, 11

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"GIMP_VALUE_MODE"
	.size	.L.str.144, 16

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"value-mode"
	.size	.L.str.145, 11

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"GIMP_DIVIDE_MODE"
	.size	.L.str.146, 17

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"divide-mode"
	.size	.L.str.147, 12

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"GIMP_DODGE_MODE"
	.size	.L.str.148, 16

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"dodge-mode"
	.size	.L.str.149, 11

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"GIMP_BURN_MODE"
	.size	.L.str.150, 15

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"burn-mode"
	.size	.L.str.151, 10

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"GIMP_HARDLIGHT_MODE"
	.size	.L.str.152, 20

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"hardlight-mode"
	.size	.L.str.153, 15

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"GIMP_SOFTLIGHT_MODE"
	.size	.L.str.154, 20

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"softlight-mode"
	.size	.L.str.155, 15

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"GIMP_GRAIN_EXTRACT_MODE"
	.size	.L.str.156, 24

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"grain-extract-mode"
	.size	.L.str.157, 19

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"GIMP_GRAIN_MERGE_MODE"
	.size	.L.str.158, 22

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"grain-merge-mode"
	.size	.L.str.159, 17

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"GIMP_COLOR_ERASE_MODE"
	.size	.L.str.160, 22

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"color-erase-mode"
	.size	.L.str.161, 17

	.type	gimp_layer_mode_effects_get_type.descs,@object # @gimp_layer_mode_effects_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_layer_mode_effects_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.116
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.118
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.120
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.122
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.124
	.quad	0
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.126
	.quad	0
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.128
	.quad	0
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.130
	.quad	0
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.132
	.quad	0
	.long	9                       # 0x9
	.zero	4
	.quad	.L.str.134
	.quad	0
	.long	10                      # 0xa
	.zero	4
	.quad	.L.str.136
	.quad	0
	.long	11                      # 0xb
	.zero	4
	.quad	.L.str.138
	.quad	0
	.long	12                      # 0xc
	.zero	4
	.quad	.L.str.140
	.quad	0
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.142
	.quad	0
	.long	14                      # 0xe
	.zero	4
	.quad	.L.str.144
	.quad	0
	.long	15                      # 0xf
	.zero	4
	.quad	.L.str.146
	.quad	0
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.148
	.quad	0
	.long	17                      # 0x11
	.zero	4
	.quad	.L.str.150
	.quad	0
	.long	18                      # 0x12
	.zero	4
	.quad	.L.str.152
	.quad	0
	.long	19                      # 0x13
	.zero	4
	.quad	.L.str.154
	.quad	0
	.long	20                      # 0x14
	.zero	4
	.quad	.L.str.156
	.quad	0
	.long	21                      # 0x15
	.zero	4
	.quad	.L.str.158
	.quad	0
	.long	22                      # 0x16
	.zero	4
	.quad	.L.str.160
	.quad	0
	.zero	24
	.size	gimp_layer_mode_effects_get_type.descs, 576

	.type	gimp_layer_mode_effects_get_type.type,@object # @gimp_layer_mode_effects_get_type.type
	.local	gimp_layer_mode_effects_get_type.type
	.comm	gimp_layer_mode_effects_get_type.type,8,8
	.type	.L.str.162,@object      # @.str.162
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.162:
	.asciz	"GimpLayerModeEffects"
	.size	.L.str.162, 21

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"layer-mode-effects"
	.size	.L.str.163, 19

	.type	gimp_mask_apply_mode_get_type.values,@object # @gimp_mask_apply_mode_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_mask_apply_mode_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.164
	.quad	.L.str.165
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.166
	.quad	.L.str.167
	.zero	24
	.size	gimp_mask_apply_mode_get_type.values, 72

	.type	.L.str.164,@object      # @.str.164
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.164:
	.asciz	"GIMP_MASK_APPLY"
	.size	.L.str.164, 16

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"apply"
	.size	.L.str.165, 6

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"GIMP_MASK_DISCARD"
	.size	.L.str.166, 18

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"discard"
	.size	.L.str.167, 8

	.type	gimp_mask_apply_mode_get_type.descs,@object # @gimp_mask_apply_mode_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_mask_apply_mode_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.164
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.166
	.quad	0
	.zero	24
	.size	gimp_mask_apply_mode_get_type.descs, 72

	.type	gimp_mask_apply_mode_get_type.type,@object # @gimp_mask_apply_mode_get_type.type
	.local	gimp_mask_apply_mode_get_type.type
	.comm	gimp_mask_apply_mode_get_type.type,8,8
	.type	.L.str.168,@object      # @.str.168
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.168:
	.asciz	"GimpMaskApplyMode"
	.size	.L.str.168, 18

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"mask-apply-mode"
	.size	.L.str.169, 16

	.type	gimp_merge_type_get_type.values,@object # @gimp_merge_type_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_merge_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.170
	.quad	.L.str.171
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.172
	.quad	.L.str.173
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.174
	.quad	.L.str.175
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.176
	.quad	.L.str.177
	.zero	24
	.size	gimp_merge_type_get_type.values, 120

	.type	.L.str.170,@object      # @.str.170
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.170:
	.asciz	"GIMP_EXPAND_AS_NECESSARY"
	.size	.L.str.170, 25

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"expand-as-necessary"
	.size	.L.str.171, 20

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"GIMP_CLIP_TO_IMAGE"
	.size	.L.str.172, 19

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"clip-to-image"
	.size	.L.str.173, 14

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"GIMP_CLIP_TO_BOTTOM_LAYER"
	.size	.L.str.174, 26

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"clip-to-bottom-layer"
	.size	.L.str.175, 21

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"GIMP_FLATTEN_IMAGE"
	.size	.L.str.176, 19

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"flatten-image"
	.size	.L.str.177, 14

	.type	gimp_merge_type_get_type.descs,@object # @gimp_merge_type_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_merge_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.170
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.172
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.174
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.176
	.quad	0
	.zero	24
	.size	gimp_merge_type_get_type.descs, 120

	.type	gimp_merge_type_get_type.type,@object # @gimp_merge_type_get_type.type
	.local	gimp_merge_type_get_type.type
	.comm	gimp_merge_type_get_type.type,8,8
	.type	.L.str.178,@object      # @.str.178
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.178:
	.asciz	"GimpMergeType"
	.size	.L.str.178, 14

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"merge-type"
	.size	.L.str.179, 11

	.type	gimp_offset_type_get_type.values,@object # @gimp_offset_type_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_offset_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.180
	.quad	.L.str.181
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.182
	.quad	.L.str.183
	.zero	24
	.size	gimp_offset_type_get_type.values, 72

	.type	.L.str.180,@object      # @.str.180
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.180:
	.asciz	"GIMP_OFFSET_BACKGROUND"
	.size	.L.str.180, 23

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"background"
	.size	.L.str.181, 11

	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	"GIMP_OFFSET_TRANSPARENT"
	.size	.L.str.182, 24

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"transparent"
	.size	.L.str.183, 12

	.type	gimp_offset_type_get_type.descs,@object # @gimp_offset_type_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_offset_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.180
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.182
	.quad	0
	.zero	24
	.size	gimp_offset_type_get_type.descs, 72

	.type	gimp_offset_type_get_type.type,@object # @gimp_offset_type_get_type.type
	.local	gimp_offset_type_get_type.type
	.comm	gimp_offset_type_get_type.type,8,8
	.type	.L.str.184,@object      # @.str.184
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.184:
	.asciz	"GimpOffsetType"
	.size	.L.str.184, 15

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	"offset-type"
	.size	.L.str.185, 12

	.type	gimp_orientation_type_get_type.values,@object # @gimp_orientation_type_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_orientation_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.186
	.quad	.L.str.187
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.188
	.quad	.L.str.189
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.190
	.quad	.L.str.191
	.zero	24
	.size	gimp_orientation_type_get_type.values, 96

	.type	.L.str.186,@object      # @.str.186
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.186:
	.asciz	"GIMP_ORIENTATION_HORIZONTAL"
	.size	.L.str.186, 28

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"horizontal"
	.size	.L.str.187, 11

	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	"GIMP_ORIENTATION_VERTICAL"
	.size	.L.str.188, 26

	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	"vertical"
	.size	.L.str.189, 9

	.type	.L.str.190,@object      # @.str.190
.L.str.190:
	.asciz	"GIMP_ORIENTATION_UNKNOWN"
	.size	.L.str.190, 25

	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	"unknown"
	.size	.L.str.191, 8

	.type	gimp_orientation_type_get_type.descs,@object # @gimp_orientation_type_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_orientation_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.186
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.188
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.190
	.quad	0
	.zero	24
	.size	gimp_orientation_type_get_type.descs, 96

	.type	gimp_orientation_type_get_type.type,@object # @gimp_orientation_type_get_type.type
	.local	gimp_orientation_type_get_type.type
	.comm	gimp_orientation_type_get_type.type,8,8
	.type	.L.str.192,@object      # @.str.192
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.192:
	.asciz	"GimpOrientationType"
	.size	.L.str.192, 20

	.type	.L.str.193,@object      # @.str.193
.L.str.193:
	.asciz	"orientation-type"
	.size	.L.str.193, 17

	.type	gimp_rotation_type_get_type.values,@object # @gimp_rotation_type_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_rotation_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.194
	.quad	.L.str.195
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.196
	.quad	.L.str.197
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.198
	.quad	.L.str.199
	.zero	24
	.size	gimp_rotation_type_get_type.values, 96

	.type	.L.str.194,@object      # @.str.194
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.194:
	.asciz	"GIMP_ROTATE_90"
	.size	.L.str.194, 15

	.type	.L.str.195,@object      # @.str.195
.L.str.195:
	.asciz	"90"
	.size	.L.str.195, 3

	.type	.L.str.196,@object      # @.str.196
.L.str.196:
	.asciz	"GIMP_ROTATE_180"
	.size	.L.str.196, 16

	.type	.L.str.197,@object      # @.str.197
.L.str.197:
	.asciz	"180"
	.size	.L.str.197, 4

	.type	.L.str.198,@object      # @.str.198
.L.str.198:
	.asciz	"GIMP_ROTATE_270"
	.size	.L.str.198, 16

	.type	.L.str.199,@object      # @.str.199
.L.str.199:
	.asciz	"270"
	.size	.L.str.199, 4

	.type	gimp_rotation_type_get_type.descs,@object # @gimp_rotation_type_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_rotation_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.194
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.196
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.198
	.quad	0
	.zero	24
	.size	gimp_rotation_type_get_type.descs, 96

	.type	gimp_rotation_type_get_type.type,@object # @gimp_rotation_type_get_type.type
	.local	gimp_rotation_type_get_type.type
	.comm	gimp_rotation_type_get_type.type,8,8
	.type	.L.str.200,@object      # @.str.200
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.200:
	.asciz	"GimpRotationType"
	.size	.L.str.200, 17

	.type	.L.str.201,@object      # @.str.201
.L.str.201:
	.asciz	"rotation-type"
	.size	.L.str.201, 14

	.type	gimp_select_criterion_get_type.values,@object # @gimp_select_criterion_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_select_criterion_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.202
	.quad	.L.str.203
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.204
	.quad	.L.str.205
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.206
	.quad	.L.str.207
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.208
	.quad	.L.str.209
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.210
	.quad	.L.str.211
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.212
	.quad	.L.str.213
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.214
	.quad	.L.str.215
	.zero	24
	.size	gimp_select_criterion_get_type.values, 192

	.type	.L.str.202,@object      # @.str.202
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.202:
	.asciz	"GIMP_SELECT_CRITERION_COMPOSITE"
	.size	.L.str.202, 32

	.type	.L.str.203,@object      # @.str.203
.L.str.203:
	.asciz	"composite"
	.size	.L.str.203, 10

	.type	.L.str.204,@object      # @.str.204
.L.str.204:
	.asciz	"GIMP_SELECT_CRITERION_R"
	.size	.L.str.204, 24

	.type	.L.str.205,@object      # @.str.205
.L.str.205:
	.asciz	"r"
	.size	.L.str.205, 2

	.type	.L.str.206,@object      # @.str.206
.L.str.206:
	.asciz	"GIMP_SELECT_CRITERION_G"
	.size	.L.str.206, 24

	.type	.L.str.207,@object      # @.str.207
.L.str.207:
	.asciz	"g"
	.size	.L.str.207, 2

	.type	.L.str.208,@object      # @.str.208
.L.str.208:
	.asciz	"GIMP_SELECT_CRITERION_B"
	.size	.L.str.208, 24

	.type	.L.str.209,@object      # @.str.209
.L.str.209:
	.asciz	"b"
	.size	.L.str.209, 2

	.type	.L.str.210,@object      # @.str.210
.L.str.210:
	.asciz	"GIMP_SELECT_CRITERION_H"
	.size	.L.str.210, 24

	.type	.L.str.211,@object      # @.str.211
.L.str.211:
	.asciz	"h"
	.size	.L.str.211, 2

	.type	.L.str.212,@object      # @.str.212
.L.str.212:
	.asciz	"GIMP_SELECT_CRITERION_S"
	.size	.L.str.212, 24

	.type	.L.str.213,@object      # @.str.213
.L.str.213:
	.asciz	"s"
	.size	.L.str.213, 2

	.type	.L.str.214,@object      # @.str.214
.L.str.214:
	.asciz	"GIMP_SELECT_CRITERION_V"
	.size	.L.str.214, 24

	.type	.L.str.215,@object      # @.str.215
.L.str.215:
	.asciz	"v"
	.size	.L.str.215, 2

	.type	gimp_select_criterion_get_type.descs,@object # @gimp_select_criterion_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_select_criterion_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.202
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.204
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.206
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.208
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.210
	.quad	0
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.212
	.quad	0
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.214
	.quad	0
	.zero	24
	.size	gimp_select_criterion_get_type.descs, 192

	.type	gimp_select_criterion_get_type.type,@object # @gimp_select_criterion_get_type.type
	.local	gimp_select_criterion_get_type.type
	.comm	gimp_select_criterion_get_type.type,8,8
	.type	.L.str.216,@object      # @.str.216
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.216:
	.asciz	"GimpSelectCriterion"
	.size	.L.str.216, 20

	.type	.L.str.217,@object      # @.str.217
.L.str.217:
	.asciz	"select-criterion"
	.size	.L.str.217, 17

	.type	get_type_funcs,@object  # @get_type_funcs
	.section	.data.rel.ro,"aw",@progbits
	.align	16
get_type_funcs:
	.quad	gimp_add_mask_type_get_type
	.quad	gimp_blend_mode_get_type
	.quad	gimp_brush_application_mode_get_type
	.quad	gimp_brush_generated_shape_get_type
	.quad	gimp_bucket_fill_mode_get_type
	.quad	gimp_channel_ops_get_type
	.quad	gimp_channel_type_get_type
	.quad	gimp_clone_type_get_type
	.quad	gimp_convert_dither_type_get_type
	.quad	gimp_convert_palette_type_get_type
	.quad	gimp_convolution_type_get_type
	.quad	gimp_convolve_type_get_type
	.quad	gimp_desaturate_mode_get_type
	.quad	gimp_dodge_burn_type_get_type
	.quad	gimp_fill_type_get_type
	.quad	gimp_foreground_extract_mode_get_type
	.quad	gimp_gradient_segment_color_get_type
	.quad	gimp_gradient_segment_type_get_type
	.quad	gimp_gradient_type_get_type
	.quad	gimp_grid_style_get_type
	.quad	gimp_histogram_channel_get_type
	.quad	gimp_hue_range_get_type
	.quad	gimp_icon_type_get_type
	.quad	gimp_image_base_type_get_type
	.quad	gimp_image_type_get_type
	.quad	gimp_ink_blob_type_get_type
	.quad	gimp_interpolation_type_get_type
	.quad	gimp_layer_mode_effects_get_type
	.quad	gimp_mask_apply_mode_get_type
	.quad	gimp_merge_type_get_type
	.quad	gimp_message_handler_type_get_type
	.quad	gimp_offset_type_get_type
	.quad	gimp_orientation_type_get_type
	.quad	gimp_pdb_arg_type_get_type
	.quad	gimp_pdb_error_handler_get_type
	.quad	gimp_pdb_proc_type_get_type
	.quad	gimp_pdb_status_type_get_type
	.quad	gimp_paint_application_mode_get_type
	.quad	gimp_progress_command_get_type
	.quad	gimp_repeat_mode_get_type
	.quad	gimp_rotation_type_get_type
	.quad	gimp_run_mode_get_type
	.quad	gimp_select_criterion_get_type
	.quad	gimp_size_type_get_type
	.quad	gimp_stack_trace_mode_get_type
	.quad	gimp_text_direction_get_type
	.quad	gimp_text_hint_style_get_type
	.quad	gimp_text_justification_get_type
	.quad	gimp_transfer_mode_get_type
	.quad	gimp_transform_direction_get_type
	.quad	gimp_transform_resize_get_type
	.quad	gimp_user_directory_get_type
	.quad	gimp_vectors_stroke_type_get_type
	.size	get_type_funcs, 424

	.type	enums_initialized,@object # @enums_initialized
	.local	enums_initialized
	.comm	enums_initialized,4,4
	.type	.L.str.218,@object      # @.str.218
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.218:
	.asciz	"LibGimp"
	.size	.L.str.218, 8

	.type	.L__func__.gimp_enums_get_type_names,@object # @__func__.gimp_enums_get_type_names
.L__func__.gimp_enums_get_type_names:
	.asciz	"gimp_enums_get_type_names"
	.size	.L__func__.gimp_enums_get_type_names, 26

	.type	.L.str.219,@object      # @.str.219
.L.str.219:
	.asciz	"n_type_names != NULL"
	.size	.L.str.219, 21

	.type	type_names,@object      # @type_names
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
type_names:
	.quad	.L.str.220
	.quad	.L.str.221
	.quad	.L.str.4
	.quad	.L.str.13
	.quad	.L.str.222
	.quad	.L.str.223
	.quad	.L.str.224
	.quad	.L.str.225
	.quad	.L.str.23
	.quad	.L.str.35
	.quad	.L.str.43
	.quad	.L.str.49
	.quad	.L.str.226
	.quad	.L.str.227
	.quad	.L.str.61
	.quad	.L.str.228
	.quad	.L.str.69
	.quad	.L.str.81
	.quad	.L.str.229
	.quad	.L.str.230
	.quad	.L.str.93
	.quad	.L.str.109
	.quad	.L.str.231
	.quad	.L.str.232
	.quad	.L.str.233
	.quad	.L.str.114
	.quad	.L.str.234
	.quad	.L.str.162
	.quad	.L.str.168
	.quad	.L.str.178
	.quad	.L.str.235
	.quad	.L.str.184
	.quad	.L.str.192
	.quad	.L.str.236
	.quad	.L.str.237
	.quad	.L.str.238
	.quad	.L.str.239
	.quad	.L.str.240
	.quad	.L.str.241
	.quad	.L.str.242
	.quad	.L.str.200
	.quad	.L.str.243
	.quad	.L.str.216
	.quad	.L.str.244
	.quad	.L.str.245
	.quad	.L.str.246
	.quad	.L.str.247
	.quad	.L.str.248
	.quad	.L.str.249
	.quad	.L.str.250
	.quad	.L.str.251
	.quad	.L.str.252
	.quad	.L.str.253
	.size	type_names, 424

	.type	.L.str.220,@object      # @.str.220
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.220:
	.asciz	"GimpAddMaskType"
	.size	.L.str.220, 16

	.type	.L.str.221,@object      # @.str.221
.L.str.221:
	.asciz	"GimpBlendMode"
	.size	.L.str.221, 14

	.type	.L.str.222,@object      # @.str.222
.L.str.222:
	.asciz	"GimpBucketFillMode"
	.size	.L.str.222, 19

	.type	.L.str.223,@object      # @.str.223
.L.str.223:
	.asciz	"GimpChannelOps"
	.size	.L.str.223, 15

	.type	.L.str.224,@object      # @.str.224
.L.str.224:
	.asciz	"GimpChannelType"
	.size	.L.str.224, 16

	.type	.L.str.225,@object      # @.str.225
.L.str.225:
	.asciz	"GimpCloneType"
	.size	.L.str.225, 14

	.type	.L.str.226,@object      # @.str.226
.L.str.226:
	.asciz	"GimpDesaturateMode"
	.size	.L.str.226, 19

	.type	.L.str.227,@object      # @.str.227
.L.str.227:
	.asciz	"GimpDodgeBurnType"
	.size	.L.str.227, 18

	.type	.L.str.228,@object      # @.str.228
.L.str.228:
	.asciz	"GimpForegroundExtractMode"
	.size	.L.str.228, 26

	.type	.L.str.229,@object      # @.str.229
.L.str.229:
	.asciz	"GimpGradientType"
	.size	.L.str.229, 17

	.type	.L.str.230,@object      # @.str.230
.L.str.230:
	.asciz	"GimpGridStyle"
	.size	.L.str.230, 14

	.type	.L.str.231,@object      # @.str.231
.L.str.231:
	.asciz	"GimpIconType"
	.size	.L.str.231, 13

	.type	.L.str.232,@object      # @.str.232
.L.str.232:
	.asciz	"GimpImageBaseType"
	.size	.L.str.232, 18

	.type	.L.str.233,@object      # @.str.233
.L.str.233:
	.asciz	"GimpImageType"
	.size	.L.str.233, 14

	.type	.L.str.234,@object      # @.str.234
.L.str.234:
	.asciz	"GimpInterpolationType"
	.size	.L.str.234, 22

	.type	.L.str.235,@object      # @.str.235
.L.str.235:
	.asciz	"GimpMessageHandlerType"
	.size	.L.str.235, 23

	.type	.L.str.236,@object      # @.str.236
.L.str.236:
	.asciz	"GimpPDBArgType"
	.size	.L.str.236, 15

	.type	.L.str.237,@object      # @.str.237
.L.str.237:
	.asciz	"GimpPDBErrorHandler"
	.size	.L.str.237, 20

	.type	.L.str.238,@object      # @.str.238
.L.str.238:
	.asciz	"GimpPDBProcType"
	.size	.L.str.238, 16

	.type	.L.str.239,@object      # @.str.239
.L.str.239:
	.asciz	"GimpPDBStatusType"
	.size	.L.str.239, 18

	.type	.L.str.240,@object      # @.str.240
.L.str.240:
	.asciz	"GimpPaintApplicationMode"
	.size	.L.str.240, 25

	.type	.L.str.241,@object      # @.str.241
.L.str.241:
	.asciz	"GimpProgressCommand"
	.size	.L.str.241, 20

	.type	.L.str.242,@object      # @.str.242
.L.str.242:
	.asciz	"GimpRepeatMode"
	.size	.L.str.242, 15

	.type	.L.str.243,@object      # @.str.243
.L.str.243:
	.asciz	"GimpRunMode"
	.size	.L.str.243, 12

	.type	.L.str.244,@object      # @.str.244
.L.str.244:
	.asciz	"GimpSizeType"
	.size	.L.str.244, 13

	.type	.L.str.245,@object      # @.str.245
.L.str.245:
	.asciz	"GimpStackTraceMode"
	.size	.L.str.245, 19

	.type	.L.str.246,@object      # @.str.246
.L.str.246:
	.asciz	"GimpTextDirection"
	.size	.L.str.246, 18

	.type	.L.str.247,@object      # @.str.247
.L.str.247:
	.asciz	"GimpTextHintStyle"
	.size	.L.str.247, 18

	.type	.L.str.248,@object      # @.str.248
.L.str.248:
	.asciz	"GimpTextJustification"
	.size	.L.str.248, 22

	.type	.L.str.249,@object      # @.str.249
.L.str.249:
	.asciz	"GimpTransferMode"
	.size	.L.str.249, 17

	.type	.L.str.250,@object      # @.str.250
.L.str.250:
	.asciz	"GimpTransformDirection"
	.size	.L.str.250, 23

	.type	.L.str.251,@object      # @.str.251
.L.str.251:
	.asciz	"GimpTransformResize"
	.size	.L.str.251, 20

	.type	.L.str.252,@object      # @.str.252
.L.str.252:
	.asciz	"GimpUserDirectory"
	.size	.L.str.252, 18

	.type	.L.str.253,@object      # @.str.253
.L.str.253:
	.asciz	"GimpVectorsStrokeType"
	.size	.L.str.253, 22


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
