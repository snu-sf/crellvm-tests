	.text
	.file	"color-selector-water.bc"
	.globl	colorsel_water_get_type
	.align	16, 0x90
	.type	colorsel_water_get_type,@function
colorsel_water_get_type:                # @colorsel_water_get_type
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
	movq	colorsel_water_type_id(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	colorsel_water_get_type, .Lfunc_end0-colorsel_water_get_type
	.cfi_endproc

	.globl	gimp_module_query
	.align	16, 0x90
	.type	gimp_module_query,@function
gimp_module_query:                      # @gimp_module_query
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
	leaq	colorsel_water_info(%rip), %rax
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_module_query, .Lfunc_end1-gimp_module_query
	.cfi_endproc

	.globl	gimp_module_register
	.align	16, 0x90
	.type	gimp_module_register,@function
gimp_module_register:                   # @gimp_module_register
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	colorsel_water_register_type
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_module_register, .Lfunc_end2-gimp_module_register
	.cfi_endproc

	.align	16, 0x90
	.type	colorsel_water_register_type,@function
colorsel_water_register_type:           # @colorsel_water_register_type
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_color_selector_get_type@PLT
	leaq	.L.str.5(%rip), %rdx
	leaq	colorsel_water_register_type.g_define_type_info(%rip), %rcx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_module_register_type@PLT
	movq	%rax, colorsel_water_type_id(%rip)
	movq	colorsel_water_type_id(%rip), %rax
	movq	%rax, -16(%rbp)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	colorsel_water_register_type, .Lfunc_end3-colorsel_water_register_type
	.cfi_endproc

	.align	16, 0x90
	.type	colorsel_water_class_intern_init,@function
colorsel_water_class_intern_init:       # @colorsel_water_class_intern_init
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_class_peek_parent@PLT
	movq	%rax, colorsel_water_parent_class(%rip)
	cmpl	$0, ColorselWater_private_offset(%rip)
	je	.LBB4_2
# BB#1:                                 # %if.then
	leaq	ColorselWater_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB4_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	colorsel_water_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	colorsel_water_class_intern_init, .Lfunc_end4-colorsel_water_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	colorsel_water_class_finalize,@function
colorsel_water_class_finalize:          # @colorsel_water_class_finalize
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end5:
	.size	colorsel_water_class_finalize, .Lfunc_end5-colorsel_water_class_finalize
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4641240890982006784     # double 200
.LCPI6_1:
	.quad	4607182418800017408     # double 1
.LCPI6_2:
	.quad	4636737291354636288     # double 100
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI6_3:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	colorsel_water_init,@function
colorsel_water_init:                    # @colorsel_water_init
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
	subq	$224, %rsp
	xorl	%eax, %eax
	movl	$2, %esi
	movss	.LCPI6_3(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movss	%xmm0, 232(%rdi)
	movl	%eax, %edi
	callq	gtk_box_new@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_frame_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_frame_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start@PLT
	callq	gtk_drawing_area_new@PLT
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	leaq	.L.str.10(%rip), %rsi
	leaq	select_area_expose(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-24(%rbp), %r10
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	callq	g_signal_connect_data@PLT
	leaq	.L.str.11(%rip), %rsi
	leaq	motion_notify_event(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data@PLT
	leaq	.L.str.12(%rip), %rsi
	leaq	button_press_event(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data@PLT
	leaq	.L.str.13(%rip), %rsi
	leaq	proximity_out_event(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data@PLT
	movl	$533772, %esi           # imm = 0x8250C
	movq	-24(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_widget_add_events@PLT
	movl	$1, %esi
	movq	-24(%rbp), %rdi
	callq	gtk_widget_set_extension_events@PLT
	movq	-24(%rbp), %rdi
	callq	gtk_widget_grab_focus@PLT
	xorps	%xmm0, %xmm0
	movsd	.LCPI6_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI6_1(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI6_2(%rip), %xmm3   # xmm3 = mem[0],zero
	movq	-8(%rbp), %rax
	cvtss2sd	232(%rax), %xmm4
	mulsd	%xmm3, %xmm4
	movaps	%xmm1, %xmm3
	subsd	%xmm4, %xmm3
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-152(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -160(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-160(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm2, -168(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm2
	movsd	-168(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-168(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-152(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	callq	gtk_adjustment_new@PLT
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type@PLT
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.14(%rip), %rsi
	leaq	pressure_adjust_update(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-184(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movl	$1, %edi
	movq	-40(%rbp), %rsi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_scale_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_scale_get_type@PLT
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_scale_set_digits@PLT
	movq	-48(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_scale_get_type@PLT
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_scale_set_draw_value@PLT
	leaq	.L.str.6(%rip), %rdi
	leaq	.L.str.15(%rip), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start@PLT
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show_all@PLT
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	colorsel_water_init, .Lfunc_end6-colorsel_water_init
	.cfi_endproc

	.align	16, 0x90
	.type	colorsel_water_class_init,@function
colorsel_water_class_init:              # @colorsel_water_class_init
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_color_selector_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	leaq	.L.str.6(%rip), %rdi
	leaq	.L.str.7(%rip), %rsi
	movq	%rax, -16(%rbp)
	callq	dgettext@PLT
	leaq	.L.str.9(%rip), %rsi
	leaq	.L.str.8(%rip), %rdi
	movq	-16(%rbp), %rcx
	movq	%rax, 824(%rcx)
	movq	-16(%rbp), %rax
	movq	%rdi, 832(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 840(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	colorsel_water_class_init, .Lfunc_end7-colorsel_water_class_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4607182418800017408     # double 1
.LCPI8_1:
	.quad	4642648265865560064     # double 240
.LCPI8_2:
	.quad	4638144666238189568     # double 120
	.text
	.align	16, 0x90
	.type	select_area_expose,@function
select_area_expose:                     # @select_area_expose
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rdi
	callq	gdk_cairo_create@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gdk_cairo_region@PLT
	movq	-24(%rbp), %rdi
	callq	cairo_clip@PLT
	leaq	-40(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_allocation@PLT
	movl	$1, %edi
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm1
	movaps	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	movsd	%xmm2, -48(%rbp)
	cvtsi2sdl	-28(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movq	-16(%rbp), %rax
	movl	28(%rax), %esi
	movq	-16(%rbp), %rax
	movl	32(%rax), %edx
	callq	cairo_image_surface_create@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	cairo_image_surface_get_data@PLT
	movq	%rax, -72(%rbp)
	movl	$0, -84(%rbp)
	movq	-16(%rbp), %rax
	movl	24(%rax), %eax
	cltd
	idivl	-28(%rbp)
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -80(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_3 Depth 2
	movl	-84(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jge	.LBB8_28
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	xorps	%xmm0, %xmm0
	movq	-72(%rbp), %rax
	movq	%rax, -96(%rbp)
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	movsd	-160(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	calc
	xorps	%xmm1, %xmm1
	movsd	.LCPI8_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	%xmm0, -104(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-168(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	calc
	xorps	%xmm1, %xmm1
	movsd	.LCPI8_1(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-176(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	calc
	xorps	%xmm2, %xmm2
	movsd	%xmm0, -120(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	calc
	movsd	.LCPI8_2(%rip), %xmm2   # xmm2 = mem[0],zero
	subsd	-104(%rbp), %xmm0
	movsd	%xmm0, -128(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	calc
	movsd	.LCPI8_1(%rip), %xmm2   # xmm2 = mem[0],zero
	subsd	-112(%rbp), %xmm0
	movsd	%xmm0, -136(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	calc
	subsd	-120(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)
	movq	-16(%rbp), %rax
	cvtsi2sdl	20(%rax), %xmm0
	mulsd	-128(%rbp), %xmm0
	addsd	-104(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	movq	-16(%rbp), %rax
	cvtsi2sdl	20(%rax), %xmm0
	mulsd	-136(%rbp), %xmm0
	addsd	-112(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movq	-16(%rbp), %rax
	cvtsi2sdl	20(%rax), %xmm0
	mulsd	-144(%rbp), %xmm0
	addsd	-120(%rbp), %xmm0
	movsd	%xmm0, -120(%rbp)
	movl	$0, -148(%rbp)
.LBB8_3:                                # %for.cond.36
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-148(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	28(%rcx), %eax
	jge	.LBB8_26
# BB#4:                                 # %for.body.41
                                        #   in Loop: Header=BB8_3 Depth=2
	jmp	.LBB8_5
.LBB8_5:                                # %do.body
                                        #   in Loop: Header=BB8_3 Depth=2
	cvttsd2si	-120(%rbp), %eax
	cmpl	$255, %eax
	jle	.LBB8_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB8_3 Depth=2
	movl	$255, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jmp	.LBB8_11
.LBB8_7:                                # %cond.false
                                        #   in Loop: Header=BB8_3 Depth=2
	cvttsd2si	-120(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB8_9
# BB#8:                                 # %cond.true.48
                                        #   in Loop: Header=BB8_3 Depth=2
	xorl	%eax, %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
	jmp	.LBB8_10
.LBB8_9:                                # %cond.false.49
                                        #   in Loop: Header=BB8_3 Depth=2
	cvttsd2si	-120(%rbp), %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
.LBB8_10:                               # %cond.end
                                        #   in Loop: Header=BB8_3 Depth=2
	movl	-184(%rbp), %eax        # 4-byte Reload
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB8_11:                               # %cond.end.51
                                        #   in Loop: Header=BB8_3 Depth=2
	movl	-180(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movq	-96(%rbp), %rdx
	movb	%cl, (%rdx)
	cvttsd2si	-112(%rbp), %eax
	cmpl	$255, %eax
	jle	.LBB8_13
# BB#12:                                # %cond.true.57
                                        #   in Loop: Header=BB8_3 Depth=2
	movl	$255, %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jmp	.LBB8_17
.LBB8_13:                               # %cond.false.58
                                        #   in Loop: Header=BB8_3 Depth=2
	cvttsd2si	-112(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB8_15
# BB#14:                                # %cond.true.62
                                        #   in Loop: Header=BB8_3 Depth=2
	xorl	%eax, %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
	jmp	.LBB8_16
.LBB8_15:                               # %cond.false.63
                                        #   in Loop: Header=BB8_3 Depth=2
	cvttsd2si	-112(%rbp), %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
.LBB8_16:                               # %cond.end.65
                                        #   in Loop: Header=BB8_3 Depth=2
	movl	-192(%rbp), %eax        # 4-byte Reload
	movl	%eax, -188(%rbp)        # 4-byte Spill
.LBB8_17:                               # %cond.end.67
                                        #   in Loop: Header=BB8_3 Depth=2
	movl	-188(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movq	-96(%rbp), %rdx
	movb	%cl, 1(%rdx)
	cvttsd2si	-104(%rbp), %eax
	cmpl	$255, %eax
	jle	.LBB8_19
# BB#18:                                # %cond.true.74
                                        #   in Loop: Header=BB8_3 Depth=2
	movl	$255, %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jmp	.LBB8_23
.LBB8_19:                               # %cond.false.75
                                        #   in Loop: Header=BB8_3 Depth=2
	cvttsd2si	-104(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB8_21
# BB#20:                                # %cond.true.79
                                        #   in Loop: Header=BB8_3 Depth=2
	xorl	%eax, %eax
	movl	%eax, -200(%rbp)        # 4-byte Spill
	jmp	.LBB8_22
.LBB8_21:                               # %cond.false.80
                                        #   in Loop: Header=BB8_3 Depth=2
	cvttsd2si	-104(%rbp), %eax
	movl	%eax, -200(%rbp)        # 4-byte Spill
.LBB8_22:                               # %cond.end.82
                                        #   in Loop: Header=BB8_3 Depth=2
	movl	-200(%rbp), %eax        # 4-byte Reload
	movl	%eax, -196(%rbp)        # 4-byte Spill
.LBB8_23:                               # %cond.end.84
                                        #   in Loop: Header=BB8_3 Depth=2
	movl	-196(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movq	-96(%rbp), %rdx
	movb	%cl, 2(%rdx)
# BB#24:                                # %do.end
                                        #   in Loop: Header=BB8_3 Depth=2
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-104(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-112(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-120(%rbp), %xmm0
	movsd	%xmm0, -120(%rbp)
	movq	-96(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -96(%rbp)
# BB#25:                                # %for.inc
                                        #   in Loop: Header=BB8_3 Depth=2
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB8_3
.LBB8_26:                               # %for.end
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-64(%rbp), %rdi
	callq	cairo_image_surface_get_stride@PLT
	movq	-72(%rbp), %rdi
	movslq	%eax, %rcx
	addq	%rcx, %rdi
	movq	%rdi, -72(%rbp)
# BB#27:                                # %for.inc.93
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-80(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
	jmp	.LBB8_1
.LBB8_28:                               # %for.end.96
	movq	-64(%rbp), %rdi
	callq	cairo_surface_mark_dirty@PLT
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-16(%rbp), %rax
	cvtsi2sdl	20(%rax), %xmm0
	movq	-16(%rbp), %rax
	cvtsi2sdl	24(%rax), %xmm1
	callq	cairo_set_source_surface@PLT
	movq	-64(%rbp), %rdi
	callq	cairo_surface_destroy@PLT
	movq	-24(%rbp), %rdi
	callq	cairo_paint@PLT
	movq	-24(%rbp), %rdi
	callq	cairo_destroy@PLT
	xorl	%eax, %eax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	select_area_expose, .Lfunc_end8-select_area_expose
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	motion_notify_event,@function
motion_notify_event:                    # @motion_notify_event
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
	subq	$128, %rsp
	leaq	-40(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	gtk_widget_get_allocation@PLT
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	andl	$3840, %ecx             # imm = 0xF00
	cmpl	$0, %ecx
	je	.LBB9_13
# BB#1:                                 # %if.then
	movb	$1, %al
	movq	-16(%rbp), %rcx
	movl	20(%rcx), %edx
	movl	%edx, -64(%rbp)
	movq	-16(%rbp), %rcx
	movl	48(%rcx), %edx
	andl	$3584, %edx             # imm = 0xE00
	cmpl	$0, %edx
	movb	%al, -97(%rbp)          # 1-byte Spill
	jne	.LBB9_3
# BB#2:                                 # %lor.rhs
	xorl	%eax, %eax
	movb	%al, %cl
	movb	%cl, -97(%rbp)          # 1-byte Spill
	jmp	.LBB9_3
.LBB9_3:                                # %lor.end
	movb	-97(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -60(%rbp)
	movq	-16(%rbp), %rdx
	movl	48(%rdx), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB9_5
# BB#4:                                 # %if.then.7
	cmpl	$0, -60(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -60(%rbp)
.LBB9_5:                                # %if.end
	leaq	-48(%rbp), %r8
	leaq	-52(%rbp), %r9
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 236(%rax)
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movl	-64(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	callq	gdk_device_get_history@PLT
	cmpl	$0, %eax
	je	.LBB9_11
# BB#6:                                 # %if.then.12
	movl	$0, -56(%rbp)
.LBB9_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-56(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB9_10
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB9_7 Depth=1
	movl	$1, %edx
	leaq	-72(%rbp), %rcx
	movsd	.LCPI9_0(%rip), %xmm0   # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	%xmm1, -72(%rbp)
	movsd	%xmm1, -80(%rbp)
	movsd	%xmm0, -88(%rbp)
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	movslq	-56(%rbp), %rax
	movq	-48(%rbp), %rsi
	movq	(%rsi,%rax,8), %rax
	addq	$8, %rax
	movq	%rax, %rsi
	callq	gdk_device_get_axis@PLT
	movl	$2, %edx
	leaq	-80(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	56(%rsi), %rdi
	movslq	-56(%rbp), %rsi
	movq	-48(%rbp), %r8
	movq	(%r8,%rsi,8), %rsi
	addq	$8, %rsi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	gdk_device_get_axis@PLT
	movl	$3, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	56(%rsi), %rdi
	movslq	-56(%rbp), %rsi
	movq	-48(%rbp), %r8
	movq	(%r8,%rsi,8), %rsi
	addq	$8, %rsi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	gdk_device_get_axis@PLT
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movl	-60(%rbp), %edx
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	-28(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	draw_brush
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB9_7 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB9_7
.LBB9_10:                               # %for.end
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	jmp	.LBB9_12
.LBB9_11:                               # %if.else
	movl	$3, %esi
	leaq	-96(%rbp), %rdx
	movsd	.LCPI9_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gdk_event_get_axis@PLT
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movl	-60(%rbp), %edx
	movq	-16(%rbp), %rcx
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movq	-16(%rbp), %rcx
	movsd	32(%rcx), %xmm1         # xmm1 = mem[0],zero
	cvtsi2sdl	-28(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	draw_brush
.LBB9_12:                               # %if.end.39
	jmp	.LBB9_13
.LBB9_13:                               # %if.end.40
	movq	-16(%rbp), %rdi
	callq	gdk_event_request_motions@PLT
	movl	$1, %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	motion_notify_event, .Lfunc_end9-motion_notify_event
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4587366580439587226     # double 0.050000000000000003
	.text
	.align	16, 0x90
	.type	button_press_event,@function
button_press_event:                     # @button_press_event
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
	subq	$48, %rsp
	leaq	-40(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	gtk_widget_get_allocation@PLT
	movq	-16(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, 216(%rax)
	movq	-16(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-28(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, 224(%rax)
	movq	-16(%rbp), %rax
	cmpl	$1, 52(%rax)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %r8d
	movl	%r8d, -44(%rbp)
	movq	-16(%rbp), %rax
	movl	48(%rax), %r8d
	andl	$1, %r8d
	cmpl	$0, %r8d
	je	.LBB10_2
# BB#1:                                 # %if.then
	cmpl	$0, -44(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -44(%rbp)
.LBB10_2:                               # %if.end
	movsd	.LCPI10_0(%rip), %xmm2  # xmm2 = mem[0],zero
	movq	-24(%rbp), %rdi
	movl	-44(%rbp), %esi
	movq	-24(%rbp), %rax
	movsd	216(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	224(%rax), %xmm1        # xmm1 = mem[0],zero
	callq	add_pigment
	xorl	%eax, %eax
	movq	-16(%rbp), %rdi
	movl	20(%rdi), %esi
	movq	-24(%rbp), %rdi
	movl	%esi, 236(%rdi)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	button_press_event, .Lfunc_end10-button_press_event
	.cfi_endproc

	.align	16, 0x90
	.type	proximity_out_event,@function
proximity_out_event:                    # @proximity_out_event
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
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	popq	%rbp
	retq
.Lfunc_end11:
	.size	proximity_out_event, .Lfunc_end11-proximity_out_event
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	pressure_adjust_update,@function
pressure_adjust_update:                 # @pressure_adjust_update
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_upper@PLT
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_value@PLT
	movsd	.LCPI12_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	-24(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	cvtsd2ss	%xmm2, %xmm0
	movq	-16(%rbp), %rsi
	movss	%xmm0, 232(%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	pressure_adjust_update, .Lfunc_end12-pressure_adjust_update
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4602678819172646912     # double 0.5
.LCPI13_1:
	.quad	4638707616191610880     # double 128
.LCPI13_2:
	.quad	4643211215818981376     # double 256
.LCPI13_3:
	.quad	4611686018427387904     # double 2
.LCPI13_4:
	.quad	4640537203540230144     # double 180
.LCPI13_5:
	.quad	4614256656552045848     # double 3.1415926535897931
	.text
	.align	16, 0x90
	.type	calc,@function
calc:                                   # @calc
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
	subq	$96, %rsp
	movsd	.LCPI13_0(%rip), %xmm3  # xmm3 = mem[0],zero
	movsd	.LCPI13_1(%rip), %xmm4  # xmm4 = mem[0],zero
	movsd	.LCPI13_2(%rip), %xmm5  # xmm5 = mem[0],zero
	movsd	.LCPI13_3(%rip), %xmm6  # xmm6 = mem[0],zero
	movsd	.LCPI13_4(%rip), %xmm7  # xmm7 = mem[0],zero
	movsd	.LCPI13_5(%rip), %xmm8  # xmm8 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movaps	%xmm8, %xmm0
	mulsd	-24(%rbp), %xmm0
	divsd	%xmm7, %xmm0
	movsd	%xmm7, -48(%rbp)        # 8-byte Spill
	movsd	%xmm8, -56(%rbp)        # 8-byte Spill
	movsd	%xmm6, -64(%rbp)        # 8-byte Spill
	movsd	%xmm3, -72(%rbp)        # 8-byte Spill
	movsd	%xmm4, -80(%rbp)        # 8-byte Spill
	movsd	%xmm5, -88(%rbp)        # 8-byte Spill
	callq	sin@PLT
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	-24(%rbp), %xmm1
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	movaps	%xmm1, %xmm0
	callq	cos@PLT
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	subsd	%xmm2, %xmm1
	mulsd	-40(%rbp), %xmm1
	movsd	-80(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	addsd	%xmm1, %xmm3
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm2, %xmm1
	mulsd	-32(%rbp), %xmm1
	subsd	%xmm1, %xmm3
	movaps	%xmm3, %xmm0
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	calc, .Lfunc_end13-calc
	.cfi_endproc

	.align	16, 0x90
	.type	draw_brush,@function
draw_brush:                             # @draw_brush
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movsd	%xmm2, -48(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	subsd	216(%rsi), %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rsi
	subsd	216(%rsi), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rsi
	subsd	224(%rsi), %xmm1
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-8(%rbp), %rsi
	subsd	224(%rsi), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt@PLT
	movsd	%xmm0, -56(%rbp)
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-48(%rbp), %xmm2
	callq	add_pigment
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 216(%rdi)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 224(%rdi)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	draw_brush, .Lfunc_end14-draw_brush
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4607182418800017408     # double 1
.LCPI15_1:
	.quad	4643211215818981376     # double 256
.LCPI15_2:
	.quad	4642648265865560064     # double 240
.LCPI15_3:
	.quad	4638144666238189568     # double 120
	.text
	.align	16, 0x90
	.type	add_pigment,@function
add_pigment:                            # @add_pigment
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_color_selector_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	cvtss2sd	232(%rax), %xmm0
	mulsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB15_2
# BB#1:                                 # %if.then
	movsd	.LCPI15_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movaps	%xmm0, %xmm1
	subsd	144(%rax), %xmm1
	movaps	%xmm0, %xmm2
	subsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movaps	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	movq	-48(%rbp), %rax
	movsd	%xmm2, 144(%rax)
	movq	-48(%rbp), %rax
	movaps	%xmm0, %xmm1
	subsd	152(%rax), %xmm1
	movaps	%xmm0, %xmm2
	subsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movaps	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	movq	-48(%rbp), %rax
	movsd	%xmm2, 152(%rax)
	movq	-48(%rbp), %rax
	movaps	%xmm0, %xmm1
	subsd	160(%rax), %xmm1
	movaps	%xmm0, %xmm2
	subsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movq	-48(%rbp), %rax
	movsd	%xmm0, 160(%rax)
	jmp	.LBB15_3
.LBB15_2:                               # %if.else
	xorps	%xmm2, %xmm2
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	calc
	movsd	.LCPI15_3(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	.LCPI15_1(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	calc
	movsd	.LCPI15_2(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	.LCPI15_1(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	calc
	movsd	.LCPI15_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI15_1(%rip), %xmm2  # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm0
	movsd	%xmm0, -72(%rbp)
	movaps	%xmm1, %xmm0
	subsd	-56(%rbp), %xmm0
	mulsd	-40(%rbp), %xmm0
	movaps	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	movq	-48(%rbp), %rax
	mulsd	144(%rax), %xmm2
	movsd	%xmm2, 144(%rax)
	movaps	%xmm1, %xmm0
	subsd	-64(%rbp), %xmm0
	mulsd	-40(%rbp), %xmm0
	movaps	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	movq	-48(%rbp), %rax
	mulsd	152(%rax), %xmm2
	movsd	%xmm2, 152(%rax)
	movaps	%xmm1, %xmm0
	subsd	-72(%rbp), %xmm0
	mulsd	-40(%rbp), %xmm0
	subsd	%xmm0, %xmm1
	movq	-48(%rbp), %rax
	mulsd	160(%rax), %xmm1
	movsd	%xmm1, 160(%rax)
.LBB15_3:                               # %if.end
	movq	-48(%rbp), %rax
	addq	$144, %rax
	movq	%rax, %rdi
	callq	gimp_rgb_clamp@PLT
	movq	-48(%rbp), %rax
	addq	$144, %rax
	movq	-48(%rbp), %rdi
	addq	$176, %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	callq	gimp_rgb_to_hsv@PLT
	movq	-48(%rbp), %rdi
	callq	gimp_color_selector_color_changed@PLT
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	add_pigment, .Lfunc_end15-add_pigment
	.cfi_endproc

	.type	colorsel_water_type_id,@object # @colorsel_water_type_id
	.local	colorsel_water_type_id
	.comm	colorsel_water_type_id,8,8
	.type	colorsel_water_info,@object # @colorsel_water_info
	.section	.data.rel.ro.local,"aw",@progbits
	.align	8
colorsel_water_info:
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.size	colorsel_water_info, 48

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Watercolor style color selector"
	.size	.L.str, 32

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Raph Levien <raph@acm.org>, Sven Neumann <sven@gimp.org>"
	.size	.L.str.1, 57

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"v0.4"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"released under the GPL"
	.size	.L.str.3, 23

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"1998-2006"
	.size	.L.str.4, 10

	.type	colorsel_water_register_type.g_define_type_info,@object # @colorsel_water_register_type.g_define_type_info
	.section	.data.rel.ro.local,"aw",@progbits
	.align	8
colorsel_water_register_type.g_define_type_info:
	.short	936                     # 0x3a8
	.zero	6
	.quad	0
	.quad	0
	.quad	colorsel_water_class_intern_init
	.quad	colorsel_water_class_finalize
	.quad	0
	.short	240                     # 0xf0
	.short	0                       # 0x0
	.zero	4
	.quad	colorsel_water_init
	.quad	0
	.size	colorsel_water_register_type.g_define_type_info, 72

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"ColorselWater"
	.size	.L.str.5, 14

	.type	colorsel_water_parent_class,@object # @colorsel_water_parent_class
	.local	colorsel_water_parent_class
	.comm	colorsel_water_parent_class,8,8
	.type	ColorselWater_private_offset,@object # @ColorselWater_private_offset
	.local	ColorselWater_private_offset
	.comm	ColorselWater_private_offset,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp20-libgimp"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Watercolor"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-colorselector-watercolor"
	.size	.L.str.8, 30

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-tool-paintbrush"
	.size	.L.str.9, 21

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"expose-event"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"motion-notify-event"
	.size	.L.str.11, 20

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"button-press-event"
	.size	.L.str.12, 19

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"proximity-out-event"
	.size	.L.str.13, 20

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"value-changed"
	.size	.L.str.14, 14

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Pressure"
	.size	.L.str.15, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
