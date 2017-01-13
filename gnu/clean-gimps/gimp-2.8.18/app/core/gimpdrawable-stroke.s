	.text
	.file	"gimpdrawable-stroke.bc"
	.globl	gimp_drawable_fill_boundary
	.align	16, 0x90
	.type	gimp_drawable_fill_boundary,@function
gimp_drawable_fill_boundary:            # @gimp_drawable_fill_boundary
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
	subq	$112, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	%eax, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_fill_boundary, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_43
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB0_15
# BB#14:                                # %if.then.16
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.17
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_fill_boundary, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_43
.LBB0_16:                               # %if.end.18
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.19
	jmp	.LBB0_18
.LBB0_18:                               # %do.body.20
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_stroke_options_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB0_20
# BB#19:                                # %if.then.29
	movl	$0, -92(%rbp)
	jmp	.LBB0_25
.LBB0_20:                               # %if.else.30
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_23
# BB#21:                                # %land.lhs.true.33
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB0_23
# BB#22:                                # %if.then.37
	movl	$1, -92(%rbp)
	jmp	.LBB0_24
.LBB0_23:                               # %if.else.38
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB0_24:                               # %if.end.40
	jmp	.LBB0_25
.LBB0_25:                               # %if.end.41
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB0_27
# BB#26:                                # %if.then.44
	jmp	.LBB0_28
.LBB0_27:                               # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_fill_boundary, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_43
.LBB0_28:                               # %if.end.46
	jmp	.LBB0_29
.LBB0_29:                               # %do.end.47
	jmp	.LBB0_30
.LBB0_30:                               # %do.body.48
	cmpq	$0, -24(%rbp)
	je	.LBB0_32
# BB#31:                                # %lor.lhs.false
	cmpl	$0, -28(%rbp)
	je	.LBB0_33
.LBB0_32:                               # %if.then.51
	jmp	.LBB0_34
.LBB0_33:                               # %if.else.52
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_fill_boundary, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_43
.LBB0_34:                               # %if.end.53
	jmp	.LBB0_35
.LBB0_35:                               # %do.end.54
	jmp	.LBB0_36
.LBB0_36:                               # %do.body.55
	movq	-16(%rbp), %rdi
	callq	gimp_fill_options_get_style
	cmpl	$1, %eax
	jne	.LBB0_38
# BB#37:                                # %lor.lhs.false.58
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_context_get_pattern
	cmpq	$0, %rax
	je	.LBB0_39
.LBB0_38:                               # %if.then.63
	jmp	.LBB0_40
.LBB0_39:                               # %if.else.64
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_fill_boundary, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_43
.LBB0_40:                               # %if.end.65
	jmp	.LBB0_41
.LBB0_41:                               # %do.end.66
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movl	-36(%rbp), %r8d
	callq	gimp_drawable_render_boundary
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB0_43
# BB#42:                                # %if.then.69
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movl	-40(%rbp), %r8d
	callq	gimp_drawable_stroke_scan_convert
	movq	-48(%rbp), %rdi
	callq	gimp_scan_convert_free
.LBB0_43:                               # %if.end.70
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_drawable_fill_boundary, .Lfunc_end0-gimp_drawable_fill_boundary
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_render_boundary,@function
gimp_drawable_render_boundary:          # @gimp_drawable_render_boundary
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB1_6
# BB#1:                                 # %if.then
	leaq	-52(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	boundary_sort
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB1_5
# BB#2:                                 # %if.then.2
	movq	-48(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-52(%rbp), %edx
	callq	gimp_bezier_desc_new_from_bound_segs
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	cmpq	$0, -64(%rbp)
	je	.LBB1_4
# BB#3:                                 # %if.then.5
	callq	gimp_scan_convert_new
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rdi
	cvtsi2sdl	-32(%rbp), %xmm0
	cvtsi2sdl	-36(%rbp), %xmm1
	callq	gimp_bezier_desc_translate
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_scan_convert_add_bezier
	movq	-64(%rbp), %rdi
	callq	gimp_bezier_desc_free
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_7
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %if.end.8
	jmp	.LBB1_6
.LBB1_6:                                # %if.end.9
	movq	$0, -8(%rbp)
.LBB1_7:                                # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_drawable_render_boundary, .Lfunc_end1-gimp_drawable_render_boundary
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_stroke_scan_convert,@function
gimp_drawable_stroke_scan_convert:      # @gimp_drawable_stroke_scan_convert
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
	subq	$576, %rsp              # imm = 0x240
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -304(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	xorl	%esi, %esi
	movl	$1, %ecx
	movl	%ecx, %edx
	leaq	-93(%rbp), %rdi
	movq	%rax, -48(%rbp)
	callq	memset
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	je	.LBB2_2
# BB#1:                                 # %if.then
	movl	$0, -68(%rbp)
	movl	$0, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	%eax, -76(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -328(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	%eax, -80(%rbp)
	jmp	.LBB2_5
.LBB2_2:                                # %if.else
	movq	-8(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-68(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	leaq	-76(%rbp), %rcx
	leaq	-80(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_item_mask_intersect
	cmpl	$0, %eax
	jne	.LBB2_4
# BB#3:                                 # %if.then.17
	jmp	.LBB2_15
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %if.end.18
	cmpl	$0, -28(%rbp)
	je	.LBB2_9
# BB#6:                                 # %if.then.20
	movq	-16(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gimp_stroke_options_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rdi
	callq	gimp_stroke_options_get_width
	movsd	%xmm0, -240(%rbp)
	movq	-232(%rbp), %rdi
	callq	gimp_stroke_options_get_unit
	movl	%eax, -244(%rbp)
	cmpl	$0, -244(%rbp)
	je	.LBB2_8
# BB#7:                                 # %if.then.25
	leaq	-256(%rbp), %rsi
	leaq	-264(%rbp), %rdx
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_resolution
	movq	-24(%rbp), %rdi
	movsd	-264(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-256(%rbp), %xmm0
	callq	gimp_scan_convert_set_pixel_ratio
	movsd	-240(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-244(%rbp), %edi
	movsd	-264(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_units_to_pixels
	movsd	%xmm0, -240(%rbp)
.LBB2_8:                                # %if.end.27
	movq	-24(%rbp), %rdi
	movsd	-240(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-232(%rbp), %rax
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movsd	%xmm0, -360(%rbp)       # 8-byte Spill
	callq	gimp_stroke_options_get_join_style
	movq	-232(%rbp), %rdi
	movl	%eax, -364(%rbp)        # 4-byte Spill
	callq	gimp_stroke_options_get_cap_style
	movq	-232(%rbp), %rdi
	movl	%eax, -368(%rbp)        # 4-byte Spill
	callq	gimp_stroke_options_get_miter_limit
	movq	-232(%rbp), %rdi
	movsd	%xmm0, -376(%rbp)       # 8-byte Spill
	callq	gimp_stroke_options_get_dash_offset
	movq	-232(%rbp), %rdi
	movsd	%xmm0, -384(%rbp)       # 8-byte Spill
	callq	gimp_stroke_options_get_dash_info
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movsd	-360(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	-364(%rbp), %esi        # 4-byte Reload
	movl	-368(%rbp), %edx        # 4-byte Reload
	movsd	-376(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-384(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%rax, %rcx
	callq	gimp_scan_convert_stroke
.LBB2_9:                                # %if.end.33
	movl	-76(%rbp), %edi
	movl	-80(%rbp), %esi
	movl	$1, %edx
	callq	tile_manager_new
	movq	%rax, -64(%rbp)
	movl	-76(%rbp), %r8d
	movl	-80(%rbp), %r9d
	movq	%rsp, %rcx
	movl	$1, (%rcx)
	leaq	-160(%rbp), %rcx
	xorl	%edx, %edx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movl	%edx, -388(%rbp)        # 4-byte Spill
	movl	-388(%rbp), %r10d       # 4-byte Reload
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	callq	pixel_region_init
	leaq	-93(%rbp), %rsi
	movq	-400(%rbp), %rdi        # 8-byte Reload
	callq	color_region
	movq	-8(%rbp), %rdi
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-88(%rbp), %rsi
	leaq	-92(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	-68(%rbp), %ecx
	movl	-88(%rbp), %r8d
	addl	%r8d, %ecx
	movl	-72(%rbp), %r8d
	movl	-92(%rbp), %r9d
	addl	%r9d, %r8d
	movq	-16(%rbp), %rax
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%r8d, -420(%rbp)        # 4-byte Spill
	movq	%rsi, -432(%rbp)        # 8-byte Spill
	movl	%ecx, -436(%rbp)        # 4-byte Spill
	callq	gimp_fill_options_get_antialias
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	-432(%rbp), %rsi        # 8-byte Reload
	movl	-436(%rbp), %edx        # 4-byte Reload
	movl	-420(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_scan_convert_render
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_bytes_with_alpha
	movl	%eax, -84(%rbp)
	movl	-76(%rbp), %edi
	movl	-80(%rbp), %esi
	movl	%eax, %edx
	callq	tile_manager_new
	movq	%rax, -56(%rbp)
	movl	-76(%rbp), %r8d
	movl	-80(%rbp), %r9d
	movq	%rsp, %r11
	movl	$1, (%r11)
	leaq	-224(%rbp), %rdi
	movq	%rax, %rsi
	movl	-388(%rbp), %edx        # 4-byte Reload
	movl	-388(%rbp), %ecx        # 4-byte Reload
	callq	pixel_region_init
	movq	-64(%rbp), %rsi
	movl	-76(%rbp), %r8d
	movl	-80(%rbp), %r9d
	movq	%rsp, %rax
	movl	$0, (%rax)
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movl	-388(%rbp), %edx        # 4-byte Reload
	movl	-388(%rbp), %ecx        # 4-byte Reload
	callq	pixel_region_init
	movq	-16(%rbp), %rdi
	callq	gimp_fill_options_get_style
	movl	%eax, %ecx
	testl	%eax, %eax
	movl	%ecx, -440(%rbp)        # 4-byte Spill
	je	.LBB2_10
	jmp	.LBB2_16
.LBB2_16:                               # %if.end.33
	movl	-440(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -444(%rbp)        # 4-byte Spill
	je	.LBB2_11
	jmp	.LBB2_14
.LBB2_10:                               # %sw.bb
	leaq	-268(%rbp), %rax
	xorl	%ecx, %ecx
	movl	$4, %edx
	movl	%edx, %esi
	leaq	-272(%rbp), %rdi
	movq	%rax, %r8
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rsi, -464(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movq	-464(%rbp), %rdx        # 8-byte Reload
	movq	%rax, -472(%rbp)        # 8-byte Spill
	movl	%ecx, -476(%rbp)        # 4-byte Spill
	callq	memset
	movq	-456(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	movl	-476(%rbp), %esi        # 4-byte Reload
	movq	-464(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movq	-40(%rbp), %rax
	addq	$104, %rax
	movq	-472(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	-472(%rbp), %rdi        # 8-byte Reload
	addq	$2, %rdi
	movq	%rdi, -488(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-472(%rbp), %rsi        # 8-byte Reload
	movq	-488(%rbp), %rcx        # 8-byte Reload
	callq	gimp_rgb_get_uchar
	movq	-48(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -496(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_drawable_type
	xorl	%ecx, %ecx
	leaq	-268(%rbp), %r8
	leaq	-272(%rbp), %rdx
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_image_transform_color
	leaq	-224(%rbp), %rdi
	leaq	-160(%rbp), %rsi
	leaq	-272(%rbp), %rdx
	movl	-84(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %r8
	movb	$-1, -272(%rbp,%r8)
	callq	color_region_mask
	jmp	.LBB2_14
.LBB2_11:                               # %sw.bb.49
	movq	-40(%rbp), %rdi
	callq	gimp_context_get_pattern
	movq	%rax, -280(%rbp)
	movq	-48(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -504(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_drawable_type
	leaq	-292(%rbp), %rcx
	movq	-280(%rbp), %rdi
	movq	32(%rdi), %rdx
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_image_transform_temp_buf
	leaq	-224(%rbp), %rdi
	leaq	-160(%rbp), %rsi
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rdx
	movl	-68(%rbp), %ecx
	movl	-72(%rbp), %r8d
	callq	pattern_region
	cmpl	$0, -292(%rbp)
	je	.LBB2_13
# BB#12:                                # %if.then.55
	movq	-288(%rbp), %rdi
	callq	temp_buf_free
.LBB2_13:                               # %if.end.56
	jmp	.LBB2_14
.LBB2_14:                               # %sw.epilog
	leaq	-224(%rbp), %rdi
	xorl	%eax, %eax
	movq	-56(%rbp), %rsi
	movl	-76(%rbp), %r8d
	movl	-80(%rbp), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	$0, (%rsp)
	callq	pixel_region_init
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.12, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %r10
	movl	-32(%rbp), %eax
	movl	%eax, -508(%rbp)        # 4-byte Spill
	movq	%r10, -520(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movq	-40(%rbp), %rdi
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gimp_context_get_opacity
	movq	-40(%rbp), %rdi
	movsd	%xmm0, -536(%rbp)       # 8-byte Spill
	callq	gimp_context_get_paint_mode
	leaq	-224(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	movl	-68(%rbp), %ecx
	movl	-72(%rbp), %r8d
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movl	-508(%rbp), %edx        # 4-byte Reload
	movq	-528(%rbp), %r10        # 8-byte Reload
	movl	%ecx, -540(%rbp)        # 4-byte Spill
	movq	%r10, %rcx
	movsd	-536(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	%r8d, -544(%rbp)        # 4-byte Spill
	movl	%eax, %r8d
	movq	$0, (%rsp)
	movl	-540(%rbp), %eax        # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	-544(%rbp), %eax        # 4-byte Reload
	movl	%eax, 16(%rsp)
	callq	gimp_drawable_apply_region
	movq	-64(%rbp), %rdi
	callq	tile_manager_unref
	movq	-56(%rbp), %rdi
	callq	tile_manager_unref
	movq	-8(%rbp), %rdi
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %edx
	movl	-76(%rbp), %ecx
	movl	-80(%rbp), %r8d
	callq	gimp_drawable_update
.LBB2_15:                               # %return
	addq	$576, %rsp              # imm = 0x240
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_drawable_stroke_scan_convert, .Lfunc_end2-gimp_drawable_stroke_scan_convert
	.cfi_endproc

	.globl	gimp_drawable_stroke_boundary
	.align	16, 0x90
	.type	gimp_drawable_stroke_boundary,@function
gimp_drawable_stroke_boundary:          # @gimp_drawable_stroke_boundary
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
	subq	$144, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	%eax, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_stroke_boundary, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_43
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB3_15
# BB#14:                                # %if.then.16
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.17
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_stroke_boundary, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_43
.LBB3_16:                               # %if.end.18
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.19
	jmp	.LBB3_18
.LBB3_18:                               # %do.body.20
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_stroke_options_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB3_20
# BB#19:                                # %if.then.29
	movl	$0, -92(%rbp)
	jmp	.LBB3_25
.LBB3_20:                               # %if.else.30
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_23
# BB#21:                                # %land.lhs.true.33
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB3_23
# BB#22:                                # %if.then.37
	movl	$1, -92(%rbp)
	jmp	.LBB3_24
.LBB3_23:                               # %if.else.38
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB3_24:                               # %if.end.40
	jmp	.LBB3_25
.LBB3_25:                               # %if.end.41
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB3_27
# BB#26:                                # %if.then.44
	jmp	.LBB3_28
.LBB3_27:                               # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_stroke_boundary, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_43
.LBB3_28:                               # %if.end.46
	jmp	.LBB3_29
.LBB3_29:                               # %do.end.47
	jmp	.LBB3_30
.LBB3_30:                               # %do.body.48
	cmpq	$0, -24(%rbp)
	je	.LBB3_32
# BB#31:                                # %lor.lhs.false
	cmpl	$0, -28(%rbp)
	je	.LBB3_33
.LBB3_32:                               # %if.then.51
	jmp	.LBB3_34
.LBB3_33:                               # %if.else.52
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_stroke_boundary, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_43
.LBB3_34:                               # %if.end.53
	jmp	.LBB3_35
.LBB3_35:                               # %do.end.54
	jmp	.LBB3_36
.LBB3_36:                               # %do.body.55
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_fill_options_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_fill_options_get_style
	cmpl	$1, %eax
	jne	.LBB3_38
# BB#37:                                # %lor.lhs.false.60
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_context_get_pattern
	cmpq	$0, %rax
	je	.LBB3_39
.LBB3_38:                               # %if.then.65
	jmp	.LBB3_40
.LBB3_39:                               # %if.else.66
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_stroke_boundary, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_43
.LBB3_40:                               # %if.end.67
	jmp	.LBB3_41
.LBB3_41:                               # %do.end.68
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movl	-36(%rbp), %r8d
	callq	gimp_drawable_render_boundary
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB3_43
# BB#42:                                # %if.then.71
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_fill_options_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movq	-48(%rbp), %rdx
	movl	-40(%rbp), %r8d
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_drawable_stroke_scan_convert
	movq	-48(%rbp), %rdi
	callq	gimp_scan_convert_free
.LBB3_43:                               # %if.end.74
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_drawable_stroke_boundary, .Lfunc_end3-gimp_drawable_stroke_boundary
	.cfi_endproc

	.globl	gimp_drawable_fill_vectors
	.align	16, 0x90
	.type	gimp_drawable_fill_vectors,@function
gimp_drawable_fill_vectors:             # @gimp_drawable_fill_vectors
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_fill_vectors, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB4_56
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB4_15
# BB#14:                                # %if.then.16
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.17
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_fill_vectors, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB4_56
.LBB4_16:                               # %if.end.18
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.19
	jmp	.LBB4_18
.LBB4_18:                               # %do.body.20
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_fill_options_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB4_20
# BB#19:                                # %if.then.29
	movl	$0, -100(%rbp)
	jmp	.LBB4_25
.LBB4_20:                               # %if.else.30
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_23
# BB#21:                                # %land.lhs.true.33
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB4_23
# BB#22:                                # %if.then.37
	movl	$1, -100(%rbp)
	jmp	.LBB4_24
.LBB4_23:                               # %if.else.38
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB4_24:                               # %if.end.40
	jmp	.LBB4_25
.LBB4_25:                               # %if.end.41
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB4_27
# BB#26:                                # %if.then.44
	jmp	.LBB4_28
.LBB4_27:                               # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_fill_vectors, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB4_56
.LBB4_28:                               # %if.end.46
	jmp	.LBB4_29
.LBB4_29:                               # %do.end.47
	jmp	.LBB4_30
.LBB4_30:                               # %do.body.48
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_vectors_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB4_32
# BB#31:                                # %if.then.57
	movl	$0, -124(%rbp)
	jmp	.LBB4_37
.LBB4_32:                               # %if.else.58
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_35
# BB#33:                                # %land.lhs.true.61
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB4_35
# BB#34:                                # %if.then.65
	movl	$1, -124(%rbp)
	jmp	.LBB4_36
.LBB4_35:                               # %if.else.66
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB4_36:                               # %if.end.68
	jmp	.LBB4_37
.LBB4_37:                               # %if.end.69
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB4_39
# BB#38:                                # %if.then.72
	jmp	.LBB4_40
.LBB4_39:                               # %if.else.73
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_fill_vectors, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB4_56
.LBB4_40:                               # %if.end.74
	jmp	.LBB4_41
.LBB4_41:                               # %do.end.75
	jmp	.LBB4_42
.LBB4_42:                               # %do.body.76
	movq	-24(%rbp), %rdi
	callq	gimp_fill_options_get_style
	cmpl	$1, %eax
	jne	.LBB4_44
# BB#43:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_context_get_pattern
	cmpq	$0, %rax
	je	.LBB4_45
.LBB4_44:                               # %if.then.83
	jmp	.LBB4_46
.LBB4_45:                               # %if.else.84
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_fill_vectors, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB4_56
.LBB4_46:                               # %if.end.85
	jmp	.LBB4_47
.LBB4_47:                               # %do.end.86
	jmp	.LBB4_48
.LBB4_48:                               # %do.body.87
	cmpq	$0, -48(%rbp)
	je	.LBB4_50
# BB#49:                                # %lor.lhs.false.89
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB4_51
.LBB4_50:                               # %if.then.91
	jmp	.LBB4_52
.LBB4_51:                               # %if.else.92
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_fill_vectors, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB4_56
.LBB4_52:                               # %if.end.93
	jmp	.LBB4_53
.LBB4_53:                               # %do.end.94
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rcx
	callq	gimp_drawable_render_vectors
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB4_55
# BB#54:                                # %if.then.97
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movl	-36(%rbp), %r8d
	callq	gimp_drawable_stroke_scan_convert
	movq	-56(%rbp), %rdi
	callq	gimp_scan_convert_free
	movl	$1, -4(%rbp)
	jmp	.LBB4_56
.LBB4_55:                               # %if.end.98
	movl	$0, -4(%rbp)
.LBB4_56:                               # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_drawable_fill_vectors, .Lfunc_end4-gimp_drawable_fill_vectors
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_render_vectors,@function
gimp_drawable_render_vectors:           # @gimp_drawable_render_vectors
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_vectors_get_bezier
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB5_5
# BB#1:                                 # %land.lhs.true
	cmpl	$0, -28(%rbp)
	je	.LBB5_3
# BB#2:                                 # %cond.true
	movq	-48(%rbp), %rax
	cmpl	$2, 16(%rax)
	jge	.LBB5_4
	jmp	.LBB5_5
.LBB5_3:                                # %cond.false
	movq	-48(%rbp), %rax
	cmpl	$4, 16(%rax)
	jle	.LBB5_5
.LBB5_4:                                # %if.then
	callq	gimp_scan_convert_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_scan_convert_add_bezier
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_9
.LBB5_5:                                # %if.end
	movq	-40(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_error_quark
	cmpl	$0, -28(%rbp)
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB5_7
# BB#6:                                 # %cond.true.7
	movabsq	$.L.str.10, %rdi
	callq	gettext
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB5_8
.LBB5_7:                                # %cond.false.9
	movabsq	$.L.str.11, %rdi
	callq	gettext
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB5_8:                                # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	xorl	%edx, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	-68(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movq	$0, -8(%rbp)
.LBB5_9:                                # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_drawable_render_vectors, .Lfunc_end5-gimp_drawable_render_vectors
	.cfi_endproc

	.globl	gimp_drawable_stroke_vectors
	.align	16, 0x90
	.type	gimp_drawable_stroke_vectors,@function
gimp_drawable_stroke_vectors:           # @gimp_drawable_stroke_vectors
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
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_stroke_vectors, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_56
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB6_15
# BB#14:                                # %if.then.16
	jmp	.LBB6_16
.LBB6_15:                               # %if.else.17
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_stroke_vectors, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_56
.LBB6_16:                               # %if.end.18
	jmp	.LBB6_17
.LBB6_17:                               # %do.end.19
	jmp	.LBB6_18
.LBB6_18:                               # %do.body.20
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_stroke_options_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB6_20
# BB#19:                                # %if.then.29
	movl	$0, -100(%rbp)
	jmp	.LBB6_25
.LBB6_20:                               # %if.else.30
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_23
# BB#21:                                # %land.lhs.true.33
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB6_23
# BB#22:                                # %if.then.37
	movl	$1, -100(%rbp)
	jmp	.LBB6_24
.LBB6_23:                               # %if.else.38
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB6_24:                               # %if.end.40
	jmp	.LBB6_25
.LBB6_25:                               # %if.end.41
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB6_27
# BB#26:                                # %if.then.44
	jmp	.LBB6_28
.LBB6_27:                               # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_stroke_vectors, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_56
.LBB6_28:                               # %if.end.46
	jmp	.LBB6_29
.LBB6_29:                               # %do.end.47
	jmp	.LBB6_30
.LBB6_30:                               # %do.body.48
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_vectors_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB6_32
# BB#31:                                # %if.then.57
	movl	$0, -124(%rbp)
	jmp	.LBB6_37
.LBB6_32:                               # %if.else.58
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_35
# BB#33:                                # %land.lhs.true.61
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB6_35
# BB#34:                                # %if.then.65
	movl	$1, -124(%rbp)
	jmp	.LBB6_36
.LBB6_35:                               # %if.else.66
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB6_36:                               # %if.end.68
	jmp	.LBB6_37
.LBB6_37:                               # %if.end.69
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB6_39
# BB#38:                                # %if.then.72
	jmp	.LBB6_40
.LBB6_39:                               # %if.else.73
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_stroke_vectors, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_56
.LBB6_40:                               # %if.end.74
	jmp	.LBB6_41
.LBB6_41:                               # %do.end.75
	jmp	.LBB6_42
.LBB6_42:                               # %do.body.76
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_fill_options_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_fill_options_get_style
	cmpl	$1, %eax
	jne	.LBB6_44
# BB#43:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_context_get_pattern
	cmpq	$0, %rax
	je	.LBB6_45
.LBB6_44:                               # %if.then.85
	jmp	.LBB6_46
.LBB6_45:                               # %if.else.86
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_stroke_vectors, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_56
.LBB6_46:                               # %if.end.87
	jmp	.LBB6_47
.LBB6_47:                               # %do.end.88
	jmp	.LBB6_48
.LBB6_48:                               # %do.body.89
	cmpq	$0, -48(%rbp)
	je	.LBB6_50
# BB#49:                                # %lor.lhs.false.91
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB6_51
.LBB6_50:                               # %if.then.93
	jmp	.LBB6_52
.LBB6_51:                               # %if.else.94
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_stroke_vectors, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_56
.LBB6_52:                               # %if.end.95
	jmp	.LBB6_53
.LBB6_53:                               # %do.end.96
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rcx
	callq	gimp_drawable_render_vectors
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB6_55
# BB#54:                                # %if.then.99
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_fill_options_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movq	-56(%rbp), %rdx
	movl	-36(%rbp), %r8d
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_drawable_stroke_scan_convert
	movq	-56(%rbp), %rdi
	callq	gimp_scan_convert_free
	movl	$1, -4(%rbp)
	jmp	.LBB6_56
.LBB6_55:                               # %if.end.102
	movl	$0, -4(%rbp)
.LBB6_56:                               # %return
	movl	-4(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_drawable_stroke_vectors, .Lfunc_end6-gimp_drawable_stroke_vectors
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_drawable_fill_boundary,@object # @__func__.gimp_drawable_fill_boundary
.L__func__.gimp_drawable_fill_boundary:
	.asciz	"gimp_drawable_fill_boundary"
	.size	.L__func__.gimp_drawable_fill_boundary, 28

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_DRAWABLE (drawable)"
	.size	.L.str.1, 28

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp_item_is_attached (GIMP_ITEM (drawable))"
	.size	.L.str.2, 45

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_STROKE_OPTIONS (options)"
	.size	.L.str.3, 33

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"bound_segs == NULL || n_bound_segs != 0"
	.size	.L.str.4, 40

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp_fill_options_get_style (options) != GIMP_FILL_STYLE_PATTERN || gimp_context_get_pattern (GIMP_CONTEXT (options)) != NULL"
	.size	.L.str.5, 126

	.type	.L__func__.gimp_drawable_stroke_boundary,@object # @__func__.gimp_drawable_stroke_boundary
.L__func__.gimp_drawable_stroke_boundary:
	.asciz	"gimp_drawable_stroke_boundary"
	.size	.L__func__.gimp_drawable_stroke_boundary, 30

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp_fill_options_get_style (GIMP_FILL_OPTIONS (options)) != GIMP_FILL_STYLE_PATTERN || gimp_context_get_pattern (GIMP_CONTEXT (options)) != NULL"
	.size	.L.str.6, 146

	.type	.L__func__.gimp_drawable_fill_vectors,@object # @__func__.gimp_drawable_fill_vectors
.L__func__.gimp_drawable_fill_vectors:
	.asciz	"gimp_drawable_fill_vectors"
	.size	.L__func__.gimp_drawable_fill_vectors, 27

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GIMP_IS_FILL_OPTIONS (options)"
	.size	.L.str.7, 31

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_IS_VECTORS (vectors)"
	.size	.L.str.8, 26

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.9, 32

	.type	.L__func__.gimp_drawable_stroke_vectors,@object # @__func__.gimp_drawable_stroke_vectors
.L__func__.gimp_drawable_stroke_vectors:
	.asciz	"gimp_drawable_stroke_vectors"
	.size	.L__func__.gimp_drawable_stroke_vectors, 29

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Not enough points to stroke"
	.size	.L.str.10, 28

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Not enough points to fill"
	.size	.L.str.11, 26

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"undo-type\004Render Stroke"
	.size	.L.str.12, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
