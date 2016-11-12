	.text
	.file	"base-enums.bc"
	.globl	gimp_curve_type_get_type
	.align	16, 0x90
	.type	gimp_curve_type_get_type,@function
gimp_curve_type_get_type:               # @gimp_curve_type_get_type
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
	cmpq	$0, gimp_curve_type_get_type.type
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.6, %rdi
	movabsq	$gimp_curve_type_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.7, %rsi
	movq	%rax, gimp_curve_type_get_type.type
	movq	gimp_curve_type_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_curve_type_get_type.descs, %rsi
	movq	gimp_curve_type_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB0_2:                                # %if.end
	movq	gimp_curve_type_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_curve_type_get_type, .Lfunc_end0-gimp_curve_type_get_type
	.cfi_endproc

	.globl	gimp_histogram_channel_get_type
	.align	16, 0x90
	.type	gimp_histogram_channel_get_type,@function
gimp_histogram_channel_get_type:        # @gimp_histogram_channel_get_type
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
	cmpq	$0, gimp_histogram_channel_get_type.type
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.26, %rdi
	movabsq	$gimp_histogram_channel_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.27, %rsi
	movq	%rax, gimp_histogram_channel_get_type.type
	movq	gimp_histogram_channel_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_histogram_channel_get_type.descs, %rsi
	movq	gimp_histogram_channel_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB1_2:                                # %if.end
	movq	gimp_histogram_channel_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_histogram_channel_get_type, .Lfunc_end1-gimp_histogram_channel_get_type
	.cfi_endproc

	.globl	gimp_layer_mode_effects_get_type
	.align	16, 0x90
	.type	gimp_layer_mode_effects_get_type,@function
gimp_layer_mode_effects_get_type:       # @gimp_layer_mode_effects_get_type
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
	cmpq	$0, gimp_layer_mode_effects_get_type.type
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.105, %rdi
	movabsq	$gimp_layer_mode_effects_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.106, %rsi
	movq	%rax, gimp_layer_mode_effects_get_type.type
	movq	gimp_layer_mode_effects_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_layer_mode_effects_get_type.descs, %rsi
	movq	gimp_layer_mode_effects_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB2_2:                                # %if.end
	movq	gimp_layer_mode_effects_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_layer_mode_effects_get_type, .Lfunc_end2-gimp_layer_mode_effects_get_type
	.cfi_endproc

	.globl	gimp_hue_range_get_type
	.align	16, 0x90
	.type	gimp_hue_range_get_type,@function
gimp_hue_range_get_type:                # @gimp_hue_range_get_type
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
	cmpq	$0, gimp_hue_range_get_type.type
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.121, %rdi
	movabsq	$gimp_hue_range_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.122, %rsi
	movq	%rax, gimp_hue_range_get_type.type
	movq	gimp_hue_range_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_hue_range_get_type.descs, %rsi
	movq	gimp_hue_range_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB3_2:                                # %if.end
	movq	gimp_hue_range_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_hue_range_get_type, .Lfunc_end3-gimp_hue_range_get_type
	.cfi_endproc

	.type	gimp_curve_type_get_type.values,@object # @gimp_curve_type_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_curve_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.3
	.zero	24
	.size	gimp_curve_type_get_type.values, 72

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GIMP_CURVE_SMOOTH"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"smooth"
	.size	.L.str.1, 7

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_CURVE_FREE"
	.size	.L.str.2, 16

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"free"
	.size	.L.str.3, 5

	.type	gimp_curve_type_get_type.descs,@object # @gimp_curve_type_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_curve_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.4
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.5
	.quad	0
	.zero	24
	.size	gimp_curve_type_get_type.descs, 72

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"Smooth"
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Freehand"
	.size	.L.str.5, 9

	.type	gimp_curve_type_get_type.type,@object # @gimp_curve_type_get_type.type
	.local	gimp_curve_type_get_type.type
	.comm	gimp_curve_type_get_type.type,8,8
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GimpCurveType"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"curve-type"
	.size	.L.str.7, 11

	.type	gimp_histogram_channel_get_type.values,@object # @gimp_histogram_channel_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_histogram_channel_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.9
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.10
	.quad	.L.str.11
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.12
	.quad	.L.str.13
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.14
	.quad	.L.str.15
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.16
	.quad	.L.str.17
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.18
	.quad	.L.str.19
	.zero	24
	.size	gimp_histogram_channel_get_type.values, 168

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"GIMP_HISTOGRAM_VALUE"
	.size	.L.str.8, 21

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"value"
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"GIMP_HISTOGRAM_RED"
	.size	.L.str.10, 19

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"red"
	.size	.L.str.11, 4

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"GIMP_HISTOGRAM_GREEN"
	.size	.L.str.12, 21

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"green"
	.size	.L.str.13, 6

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"GIMP_HISTOGRAM_BLUE"
	.size	.L.str.14, 20

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"blue"
	.size	.L.str.15, 5

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"GIMP_HISTOGRAM_ALPHA"
	.size	.L.str.16, 21

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"alpha"
	.size	.L.str.17, 6

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"GIMP_HISTOGRAM_RGB"
	.size	.L.str.18, 19

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"rgb"
	.size	.L.str.19, 4

	.type	gimp_histogram_channel_get_type.descs,@object # @gimp_histogram_channel_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_histogram_channel_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.20
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.21
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.22
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.23
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.24
	.quad	0
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.25
	.quad	0
	.zero	24
	.size	gimp_histogram_channel_get_type.descs, 168

	.type	.L.str.20,@object       # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"Value"
	.size	.L.str.20, 6

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Red"
	.size	.L.str.21, 4

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Green"
	.size	.L.str.22, 6

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Blue"
	.size	.L.str.23, 5

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Alpha"
	.size	.L.str.24, 6

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"RGB"
	.size	.L.str.25, 4

	.type	gimp_histogram_channel_get_type.type,@object # @gimp_histogram_channel_get_type.type
	.local	gimp_histogram_channel_get_type.type
	.comm	gimp_histogram_channel_get_type.type,8,8
	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"GimpHistogramChannel"
	.size	.L.str.26, 21

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"histogram-channel"
	.size	.L.str.27, 18

	.type	gimp_layer_mode_effects_get_type.values,@object # @gimp_layer_mode_effects_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_layer_mode_effects_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.28
	.quad	.L.str.29
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.30
	.quad	.L.str.31
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.32
	.quad	.L.str.33
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.34
	.quad	.L.str.35
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.36
	.quad	.L.str.37
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.38
	.quad	.L.str.39
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.40
	.quad	.L.str.41
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.42
	.quad	.L.str.43
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.44
	.quad	.L.str.45
	.long	9                       # 0x9
	.zero	4
	.quad	.L.str.46
	.quad	.L.str.47
	.long	10                      # 0xa
	.zero	4
	.quad	.L.str.48
	.quad	.L.str.49
	.long	11                      # 0xb
	.zero	4
	.quad	.L.str.50
	.quad	.L.str.51
	.long	12                      # 0xc
	.zero	4
	.quad	.L.str.52
	.quad	.L.str.53
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.54
	.quad	.L.str.55
	.long	14                      # 0xe
	.zero	4
	.quad	.L.str.56
	.quad	.L.str.57
	.long	15                      # 0xf
	.zero	4
	.quad	.L.str.58
	.quad	.L.str.59
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.60
	.quad	.L.str.61
	.long	17                      # 0x11
	.zero	4
	.quad	.L.str.62
	.quad	.L.str.63
	.long	18                      # 0x12
	.zero	4
	.quad	.L.str.64
	.quad	.L.str.65
	.long	19                      # 0x13
	.zero	4
	.quad	.L.str.66
	.quad	.L.str.67
	.long	20                      # 0x14
	.zero	4
	.quad	.L.str.68
	.quad	.L.str.69
	.long	21                      # 0x15
	.zero	4
	.quad	.L.str.70
	.quad	.L.str.71
	.long	22                      # 0x16
	.zero	4
	.quad	.L.str.72
	.quad	.L.str.73
	.long	23                      # 0x17
	.zero	4
	.quad	.L.str.74
	.quad	.L.str.75
	.long	24                      # 0x18
	.zero	4
	.quad	.L.str.76
	.quad	.L.str.77
	.long	25                      # 0x19
	.zero	4
	.quad	.L.str.78
	.quad	.L.str.79
	.zero	24
	.size	gimp_layer_mode_effects_get_type.values, 648

	.type	.L.str.28,@object       # @.str.28
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	"GIMP_NORMAL_MODE"
	.size	.L.str.28, 17

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"normal-mode"
	.size	.L.str.29, 12

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"GIMP_DISSOLVE_MODE"
	.size	.L.str.30, 19

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"dissolve-mode"
	.size	.L.str.31, 14

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"GIMP_BEHIND_MODE"
	.size	.L.str.32, 17

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"behind-mode"
	.size	.L.str.33, 12

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"GIMP_MULTIPLY_MODE"
	.size	.L.str.34, 19

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"multiply-mode"
	.size	.L.str.35, 14

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"GIMP_SCREEN_MODE"
	.size	.L.str.36, 17

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"screen-mode"
	.size	.L.str.37, 12

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"GIMP_OVERLAY_MODE"
	.size	.L.str.38, 18

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"overlay-mode"
	.size	.L.str.39, 13

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"GIMP_DIFFERENCE_MODE"
	.size	.L.str.40, 21

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"difference-mode"
	.size	.L.str.41, 16

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"GIMP_ADDITION_MODE"
	.size	.L.str.42, 19

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"addition-mode"
	.size	.L.str.43, 14

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"GIMP_SUBTRACT_MODE"
	.size	.L.str.44, 19

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"subtract-mode"
	.size	.L.str.45, 14

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"GIMP_DARKEN_ONLY_MODE"
	.size	.L.str.46, 22

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"darken-only-mode"
	.size	.L.str.47, 17

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"GIMP_LIGHTEN_ONLY_MODE"
	.size	.L.str.48, 23

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"lighten-only-mode"
	.size	.L.str.49, 18

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"GIMP_HUE_MODE"
	.size	.L.str.50, 14

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"hue-mode"
	.size	.L.str.51, 9

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"GIMP_SATURATION_MODE"
	.size	.L.str.52, 21

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"saturation-mode"
	.size	.L.str.53, 16

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"GIMP_COLOR_MODE"
	.size	.L.str.54, 16

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"color-mode"
	.size	.L.str.55, 11

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"GIMP_VALUE_MODE"
	.size	.L.str.56, 16

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"value-mode"
	.size	.L.str.57, 11

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"GIMP_DIVIDE_MODE"
	.size	.L.str.58, 17

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"divide-mode"
	.size	.L.str.59, 12

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"GIMP_DODGE_MODE"
	.size	.L.str.60, 16

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"dodge-mode"
	.size	.L.str.61, 11

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"GIMP_BURN_MODE"
	.size	.L.str.62, 15

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"burn-mode"
	.size	.L.str.63, 10

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"GIMP_HARDLIGHT_MODE"
	.size	.L.str.64, 20

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"hardlight-mode"
	.size	.L.str.65, 15

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"GIMP_SOFTLIGHT_MODE"
	.size	.L.str.66, 20

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"softlight-mode"
	.size	.L.str.67, 15

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"GIMP_GRAIN_EXTRACT_MODE"
	.size	.L.str.68, 24

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"grain-extract-mode"
	.size	.L.str.69, 19

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"GIMP_GRAIN_MERGE_MODE"
	.size	.L.str.70, 22

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"grain-merge-mode"
	.size	.L.str.71, 17

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"GIMP_COLOR_ERASE_MODE"
	.size	.L.str.72, 22

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"color-erase-mode"
	.size	.L.str.73, 17

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"GIMP_ERASE_MODE"
	.size	.L.str.74, 16

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"erase-mode"
	.size	.L.str.75, 11

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"GIMP_REPLACE_MODE"
	.size	.L.str.76, 18

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"replace-mode"
	.size	.L.str.77, 13

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"GIMP_ANTI_ERASE_MODE"
	.size	.L.str.78, 21

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"anti-erase-mode"
	.size	.L.str.79, 16

	.type	gimp_layer_mode_effects_get_type.descs,@object # @gimp_layer_mode_effects_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_layer_mode_effects_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.80
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.81
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.82
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.83
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.84
	.quad	0
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.85
	.quad	0
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.86
	.quad	0
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.87
	.quad	0
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.88
	.quad	0
	.long	9                       # 0x9
	.zero	4
	.quad	.L.str.89
	.quad	0
	.long	10                      # 0xa
	.zero	4
	.quad	.L.str.90
	.quad	0
	.long	11                      # 0xb
	.zero	4
	.quad	.L.str.91
	.quad	0
	.long	12                      # 0xc
	.zero	4
	.quad	.L.str.92
	.quad	0
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.93
	.quad	0
	.long	14                      # 0xe
	.zero	4
	.quad	.L.str.20
	.quad	0
	.long	15                      # 0xf
	.zero	4
	.quad	.L.str.94
	.quad	0
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.95
	.quad	0
	.long	17                      # 0x11
	.zero	4
	.quad	.L.str.96
	.quad	0
	.long	18                      # 0x12
	.zero	4
	.quad	.L.str.97
	.quad	0
	.long	19                      # 0x13
	.zero	4
	.quad	.L.str.98
	.quad	0
	.long	20                      # 0x14
	.zero	4
	.quad	.L.str.99
	.quad	0
	.long	21                      # 0x15
	.zero	4
	.quad	.L.str.100
	.quad	0
	.long	22                      # 0x16
	.zero	4
	.quad	.L.str.101
	.quad	0
	.long	23                      # 0x17
	.zero	4
	.quad	.L.str.102
	.quad	0
	.long	24                      # 0x18
	.zero	4
	.quad	.L.str.103
	.quad	0
	.long	25                      # 0x19
	.zero	4
	.quad	.L.str.104
	.quad	0
	.zero	24
	.size	gimp_layer_mode_effects_get_type.descs, 648

	.type	.L.str.80,@object       # @.str.80
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.80:
	.asciz	"Normal"
	.size	.L.str.80, 7

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"Dissolve"
	.size	.L.str.81, 9

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"Behind"
	.size	.L.str.82, 7

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"Multiply"
	.size	.L.str.83, 9

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"Screen"
	.size	.L.str.84, 7

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"Overlay"
	.size	.L.str.85, 8

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"Difference"
	.size	.L.str.86, 11

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"Addition"
	.size	.L.str.87, 9

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"Subtract"
	.size	.L.str.88, 9

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"Darken only"
	.size	.L.str.89, 12

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"Lighten only"
	.size	.L.str.90, 13

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"Hue"
	.size	.L.str.91, 4

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"Saturation"
	.size	.L.str.92, 11

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"Color"
	.size	.L.str.93, 6

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"Divide"
	.size	.L.str.94, 7

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"Dodge"
	.size	.L.str.95, 6

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"Burn"
	.size	.L.str.96, 5

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"Hard light"
	.size	.L.str.97, 11

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"Soft light"
	.size	.L.str.98, 11

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"Grain extract"
	.size	.L.str.99, 14

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"Grain merge"
	.size	.L.str.100, 12

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"Color erase"
	.size	.L.str.101, 12

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"Erase"
	.size	.L.str.102, 6

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"Replace"
	.size	.L.str.103, 8

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"Anti erase"
	.size	.L.str.104, 11

	.type	gimp_layer_mode_effects_get_type.type,@object # @gimp_layer_mode_effects_get_type.type
	.local	gimp_layer_mode_effects_get_type.type
	.comm	gimp_layer_mode_effects_get_type.type,8,8
	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"GimpLayerModeEffects"
	.size	.L.str.105, 21

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"layer-mode-effects"
	.size	.L.str.106, 19

	.type	gimp_hue_range_get_type.values,@object # @gimp_hue_range_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_hue_range_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.107
	.quad	.L.str.108
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.109
	.quad	.L.str.110
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.111
	.quad	.L.str.112
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.113
	.quad	.L.str.114
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.115
	.quad	.L.str.116
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.117
	.quad	.L.str.118
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.119
	.quad	.L.str.120
	.zero	24
	.size	gimp_hue_range_get_type.values, 192

	.type	.L.str.107,@object      # @.str.107
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.107:
	.asciz	"GIMP_ALL_HUES"
	.size	.L.str.107, 14

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"all-hues"
	.size	.L.str.108, 9

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"GIMP_RED_HUES"
	.size	.L.str.109, 14

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"red-hues"
	.size	.L.str.110, 9

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"GIMP_YELLOW_HUES"
	.size	.L.str.111, 17

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"yellow-hues"
	.size	.L.str.112, 12

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"GIMP_GREEN_HUES"
	.size	.L.str.113, 16

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"green-hues"
	.size	.L.str.114, 11

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"GIMP_CYAN_HUES"
	.size	.L.str.115, 15

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"cyan-hues"
	.size	.L.str.116, 10

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"GIMP_BLUE_HUES"
	.size	.L.str.117, 15

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"blue-hues"
	.size	.L.str.118, 10

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"GIMP_MAGENTA_HUES"
	.size	.L.str.119, 18

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"magenta-hues"
	.size	.L.str.120, 13

	.type	gimp_hue_range_get_type.descs,@object # @gimp_hue_range_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_hue_range_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.107
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.109
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.111
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.113
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.115
	.quad	0
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.117
	.quad	0
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.119
	.quad	0
	.zero	24
	.size	gimp_hue_range_get_type.descs, 192

	.type	gimp_hue_range_get_type.type,@object # @gimp_hue_range_get_type.type
	.local	gimp_hue_range_get_type.type
	.comm	gimp_hue_range_get_type.type,8,8
	.type	.L.str.121,@object      # @.str.121
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.121:
	.asciz	"GimpHueRange"
	.size	.L.str.121, 13

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"hue-range"
	.size	.L.str.122, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
