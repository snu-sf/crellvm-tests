	.text
	.file	"gimp-gegl.bc"
	.globl	gimp_gegl_init
	.align	16, 0x90
	.type	gimp_gegl_init,@function
gimp_gegl_init:                         # @gimp_gegl_init
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
	pushq	%rbx
	subq	$440, %rsp              # imm = 0x1B8
.Ltmp3:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_gegl_init, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_16
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_base_config_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	callq	gegl_config
	movq	-24(%rbp), %rsi
	cmpq	$2147483647, 48(%rsi)   # imm = 0x7FFFFFFF
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jae	.LBB0_14
# BB#13:                                # %cond.true
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB0_15
.LBB0_14:                               # %cond.false
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB0_15
.LBB0_15:                               # %cond.end
	movq	-72(%rbp), %rax         # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	$64, %ecx
	movabsq	$.L.str.3, %rdx
	movabsq	$.L.str.4, %r9
	xorl	%edi, %edi
	movl	%edi, %r8d
	movl	%eax, %edi
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	%edi, -76(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movl	%ecx, %edx
	movq	-88(%rbp), %r10         # 8-byte Reload
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movq	%r10, %rcx
	movl	-92(%rbp), %r11d        # 4-byte Reload
	movq	%r8, -104(%rbp)         # 8-byte Spill
	movl	%r11d, %r8d
	movl	-76(%rbp), %ebx         # 4-byte Reload
	movl	%ebx, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	g_object_set
	movabsq	$.L.str.5, %rsi
	movabsq	$gimp_gegl_notify_tile_cache_size, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	-24(%rbp), %r10
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rcx, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_operation_tile_sink_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_operation_tile_source_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_operation_brightness_contrast_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_operation_cage_coef_calc_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_operation_cage_transform_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_operation_color_balance_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_operation_colorize_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_operation_curves_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_operation_desaturate_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_operation_hue_saturation_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_operation_levels_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_operation_posterize_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_operation_threshold_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_operation_point_layer_mode_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_operation_dissolve_mode_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_operation_behind_mode_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_operation_multiply_mode_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_operation_screen_mode_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_operation_overlay_mode_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_operation_difference_mode_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_operation_addition_mode_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_operation_subtract_mode_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_operation_darken_only_mode_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_operation_lighten_only_mode_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_operation_hue_mode_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gimp_operation_saturation_mode_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gimp_operation_color_mode_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gimp_operation_value_mode_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gimp_operation_divide_mode_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gimp_operation_dodge_mode_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gimp_operation_burn_mode_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gimp_operation_hardlight_mode_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gimp_operation_softlight_mode_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gimp_operation_grain_extract_mode_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gimp_operation_grain_merge_mode_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gimp_operation_color_erase_mode_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gimp_operation_erase_mode_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gimp_operation_replace_mode_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gimp_operation_anti_erase_mode_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -432(%rbp)        # 8-byte Spill
.LBB0_16:                               # %return
	addq	$440, %rsp              # imm = 0x1B8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_gegl_init, .Lfunc_end0-gimp_gegl_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gegl_notify_tile_cache_size,@function
gimp_gegl_notify_tile_cache_size:       # @gimp_gegl_notify_tile_cache_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
.Ltmp5:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp6:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	callq	gegl_config
	movq	-8(%rbp), %rdi
	cmpq	$2147483647, 48(%rdi)   # imm = 0x7FFFFFFF
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jae	.LBB1_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB1_3
.LBB1_2:                                # %cond.false
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	jmp	.LBB1_3
.LBB1_3:                                # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movabsq	$.L.str.4, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movl	%eax, %edx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movb	$0, %al
	callq	g_object_set
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_gegl_notify_tile_cache_size, .Lfunc_end1-gimp_gegl_notify_tile_cache_size
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-GEGL"
	.size	.L.str, 10

	.type	.L__func__.gimp_gegl_init,@object # @__func__.gimp_gegl_init
.L__func__.gimp_gegl_init:
	.asciz	"gimp_gegl_init"
	.size	.L__func__.gimp_gegl_init, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"tile-width"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"tile-height"
	.size	.L.str.3, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"cache-size"
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"notify::tile-cache-size"
	.size	.L.str.5, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
