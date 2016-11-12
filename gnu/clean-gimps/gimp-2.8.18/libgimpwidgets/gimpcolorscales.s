	.text
	.file	"gimpcolorscales.bc"
	.globl	gimp_color_scales_get_type
	.align	16, 0x90
	.type	gimp_color_scales_get_type,@function
gimp_color_scales_get_type:             # @gimp_color_scales_get_type
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_color_scales_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_color_scales_get_type.g_define_type_id__volatile(%rip), %rax
	movq	%rax, %rdi
	callq	g_once_init_enter@PLT
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB0_2:                                # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB0_4
# BB#3:                                 # %if.then
	callq	gimp_color_selector_get_type@PLT
	leaq	.L.str(%rip), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string@PLT
	movl	$936, %edx              # imm = 0x3A8
	leaq	gimp_color_scales_class_intern_init(%rip), %rdi
	movl	$384, %r8d              # imm = 0x180
	leaq	gimp_color_scales_init(%rip), %rcx
	xorl	%esi, %esi
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movl	$0, (%rsp)
	callq	g_type_register_static_simple@PLT
	leaq	gimp_color_scales_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_color_scales_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_color_scales_get_type, .Lfunc_end0-gimp_color_scales_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_scales_class_intern_init,@function
gimp_color_scales_class_intern_init:    # @gimp_color_scales_class_intern_init
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_class_peek_parent@PLT
	movq	%rax, gimp_color_scales_parent_class(%rip)
	cmpl	$0, GimpColorScales_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpColorScales_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_color_scales_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_color_scales_class_intern_init, .Lfunc_end1-gimp_color_scales_class_intern_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_color_scales_init,@function
gimp_color_scales_init:                 # @gimp_color_scales_init
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
	subq	$304, %rsp              # imm = 0x130
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_color_selector_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$7, %edi
	movl	$4, %esi
	xorl	%edx, %edx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, 128(%rax)
	callq	gtk_table_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$2, %esi
	movl	$3, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$5, %esi
	movl	$3, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%edx, %edx
	movq	%rax, %rdi
	movl	%edx, %esi
	callq	gtk_table_set_col_spacing@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%edx, %edx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -116(%rbp)        # 4-byte Spill
	movl	-116(%rbp), %ecx        # 4-byte Reload
	movl	-116(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show@PLT
	callq	gimp_color_selector_channel_get_type@PLT
	movq	%rax, %rdi
	callq	g_type_class_ref@PLT
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$6, -44(%rbp)
	jg	.LBB2_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-32(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_enum_get_desc@PLT
	movq	%rax, -56(%rbp)
	cmpl	$6, -44(%rbp)
	jne	.LBB2_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB2_1 Depth=1
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	$0, 216(%rcx,%rax,8)
	jmp	.LBB2_7
.LBB2_4:                                # %if.else
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-40(%rbp), %rdi
	callq	gtk_radio_button_new@PLT
	movslq	-44(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	%rax, 216(%rcx,%rdi,8)
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	216(%rcx,%rax,8), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group@PLT
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r8d
	movslq	-44(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	216(%rdi,%rsi,8), %rsi
	movl	-44(%rbp), %r9d
	movl	-44(%rbp), %r10d
	addl	$1, %r10d
	movq	%rax, %rdi
	movl	%r8d, -140(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach@PLT
	movq	-16(%rbp), %rax
	cmpl	$0, 128(%rax)
	je	.LBB2_6
# BB#5:                                 # %if.then.35
                                        #   in Loop: Header=BB2_1 Depth=1
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	216(%rcx,%rax,8), %rdi
	callq	gtk_widget_show@PLT
.LBB2_6:                                # %if.end
                                        #   in Loop: Header=BB2_1 Depth=1
	leaq	.L.str.1(%rip), %rdi
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	216(%rcx,%rax,8), %rax
	movq	-56(%rbp), %rcx
	movq	16(%rcx), %rsi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data@PLT
	leaq	.L.str.8(%rip), %rsi
	leaq	gimp_color_scales_toggle_update(%rip), %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movslq	-44(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	216(%rdx,%rcx,8), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-160(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB2_7:                                # %if.end.47
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.1(%rip), %rdi
	movl	-44(%rbp), %edx
	movq	-56(%rbp), %rsi
	movq	8(%rsi), %rsi
	movl	%edx, -180(%rbp)        # 4-byte Spill
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	leaq	.L.str.1(%rip), %rdi
	leaq	gimp_color_scales_init.slider_incs(%rip), %rsi
	leaq	gimp_color_scales_init.slider_max_vals(%rip), %rcx
	leaq	gimp_color_scales_init.slider_initial_vals(%rip), %r8
	movslq	-44(%rbp), %r9
	movsd	(%r8,%r9,8), %xmm0      # xmm0 = mem[0],zero
	movslq	-44(%rbp), %r8
	movsd	(%rcx,%r8,8), %xmm2     # xmm2 = mem[0],zero
	movslq	-44(%rbp), %rcx
	movsd	(%rsi,%rcx,8), %xmm4    # xmm4 = mem[0],zero
	movq	-56(%rbp), %rcx
	movq	16(%rcx), %rsi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movsd	%xmm4, -208(%rbp)       # 8-byte Spill
	movsd	%xmm2, -216(%rbp)       # 8-byte Spill
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	callq	dgettext@PLT
	movl	$1, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorps	%xmm1, %xmm1
	movsd	.LCPI2_0(%rip), %xmm3   # xmm3 = mem[0],zero
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	movl	%r11d, %ecx
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movl	-180(%rbp), %r11d       # 4-byte Reload
	movl	%edx, -228(%rbp)        # 4-byte Spill
	movl	%r11d, %edx
	movq	-200(%rbp), %r8         # 8-byte Reload
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movl	-228(%rbp), %r8d        # 4-byte Reload
	movl	-228(%rbp), %r9d        # 4-byte Reload
	movsd	-224(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-216(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-208(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movl	$0, (%rsp)
	movq	%rax, 8(%rsp)
	movq	$0, 16(%rsp)
	movl	%r10d, -244(%rbp)       # 4-byte Spill
	callq	gimp_color_scale_entry_new@PLT
	movl	$80, %edx
	movl	%edx, %esi
	movslq	-44(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movq	%rax, 328(%rdi,%rcx,8)
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	328(%rcx,%rax,8), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.6(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movslq	-44(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	%rax, 272(%rsi,%rcx,8)
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	272(%rcx,%rax,8), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_color_scale_get_type@PLT
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-44(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_color_scale_set_channel@PLT
	leaq	.L.str.9(%rip), %rsi
	leaq	gimp_color_scales_scale_update(%rip), %rax
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movslq	-44(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movq	328(%rdi,%rcx,8), %rcx
	movq	-8(%rbp), %rdi
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rdx
	movq	-264(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movq	%rax, -272(%rbp)        # 8-byte Spill
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB2_1
.LBB2_9:                                # %for.end
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_unref@PLT
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_color_scales_init, .Lfunc_end2-gimp_color_scales_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_scales_class_init,@function
gimp_color_scales_class_init:           # @gimp_color_scales_class_init
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
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	leaq	.L.str.1(%rip), %rdi
	leaq	.L.str.2(%rip), %rsi
	movq	%rax, -16(%rbp)
	callq	dgettext@PLT
	leaq	gimp_color_scales_set_channel(%rip), %rsi
	leaq	gimp_color_scales_set_color(%rip), %rdi
	leaq	gimp_color_scales_set_show_alpha(%rip), %rcx
	leaq	gimp_color_scales_togg_sensitive(%rip), %rdx
	leaq	gimp_color_scales_togg_visible(%rip), %r8
	leaq	.L.str.4(%rip), %r9
	leaq	.L.str.3(%rip), %r10
	movq	-16(%rbp), %r11
	movq	%rax, 824(%r11)
	movq	-16(%rbp), %rax
	movq	%r10, 832(%rax)
	movq	-16(%rbp), %rax
	movq	%r9, 840(%rax)
	movq	-16(%rbp), %rax
	movq	%r8, 848(%rax)
	movq	-16(%rbp), %rax
	movq	%rdx, 856(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 864(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 872(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 880(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_color_scales_class_init, .Lfunc_end3-gimp_color_scales_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_scales_togg_visible,@function
gimp_color_scales_togg_visible:         # @gimp_color_scales_togg_visible
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_color_scales_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$6, -28(%rbp)
	jge	.LBB4_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	216(%rcx,%rax,8), %rdi
	movl	-12(%rbp), %esi
	callq	gtk_widget_set_visible@PLT
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB4_1
.LBB4_4:                                # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_color_scales_togg_visible, .Lfunc_end4-gimp_color_scales_togg_visible
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_scales_togg_sensitive,@function
gimp_color_scales_togg_sensitive:       # @gimp_color_scales_togg_sensitive
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_color_scales_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$6, -28(%rbp)
	jge	.LBB5_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	216(%rcx,%rax,8), %rdi
	movl	-12(%rbp), %esi
	callq	gtk_widget_set_sensitive@PLT
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB5_1
.LBB5_4:                                # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_color_scales_togg_sensitive, .Lfunc_end5-gimp_color_scales_togg_sensitive
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_scales_set_show_alpha,@function
gimp_color_scales_set_show_alpha:       # @gimp_color_scales_set_show_alpha
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_color_scales_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.5(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.6(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.7(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_widget_get_parent@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gtk_table_get_type@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB6_7
.LBB6_2:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_5
# BB#3:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB6_5
# BB#4:                                 # %if.then.16
	movl	$1, -76(%rbp)
	jmp	.LBB6_6
.LBB6_5:                                # %if.else.17
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -76(%rbp)
.LBB6_6:                                # %if.end
	jmp	.LBB6_7
.LBB6_7:                                # %if.end.19
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB6_9
# BB#8:                                 # %if.then.21
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$5, %esi
	xorl	%ecx, %ecx
	movl	$3, %edx
	cmpl	$0, -12(%rbp)
	cmovnel	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_table_set_row_spacing@PLT
.LBB6_9:                                # %if.end.25
	movq	-32(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gtk_widget_set_visible@PLT
	movq	-40(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gtk_widget_set_visible@PLT
	movq	-48(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gtk_widget_set_visible@PLT
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_color_scales_set_show_alpha, .Lfunc_end6-gimp_color_scales_set_show_alpha
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_scales_set_color,@function
gimp_color_scales_set_color:            # @gimp_color_scales_set_color
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_color_scales_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_color_scales_update_scales
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_color_scales_set_color, .Lfunc_end7-gimp_color_scales_set_color
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_scales_set_channel,@function
gimp_color_scales_set_channel:          # @gimp_color_scales_set_channel
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_color_scales_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	cmpl	$7, -12(%rbp)
	jae	.LBB8_2
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_color_scales_toggle_update(%rip), %rdx
	movl	-12(%rbp), %ecx
	movl	%ecx, %edi
	movq	-24(%rbp), %r9
	movq	216(%r9,%rdi,8), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	movl	-12(%rbp), %ecx
	movl	%ecx, %edi
	movq	-24(%rbp), %r8
	movq	216(%r8,%rdi,8), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active@PLT
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	gimp_color_scales_toggle_update(%rip), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %edi
	movq	-24(%rbp), %r9
	movq	216(%r9,%rdi,8), %rdi
	movq	-24(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB8_2:                                # %if.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_color_scales_set_channel, .Lfunc_end8-gimp_color_scales_set_channel
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4602678819172646912     # double 0.5
.LCPI9_1:
	.quad	4636737291354636288     # double 100
.LCPI9_2:
	.quad	4643176031446892544     # double 255
.LCPI9_3:
	.quad	4645040803167600640     # double 360
	.text
	.align	16, 0x90
	.type	gimp_color_scales_update_scales,@function
gimp_color_scales_update_scales:        # @gimp_color_scales_update_scales
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_color_selector_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movsd	.LCPI9_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI9_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI9_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI9_3(%rip), %xmm3   # xmm3 = mem[0],zero
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	mulsd	176(%rax), %xmm3
	addsd	%xmm0, %xmm3
	cvttsd2si	%xmm3, %ecx
	movl	%ecx, -64(%rbp)
	movq	-24(%rbp), %rax
	movaps	%xmm1, %xmm3
	mulsd	184(%rax), %xmm3
	addsd	%xmm0, %xmm3
	cvttsd2si	%xmm3, %ecx
	movl	%ecx, -60(%rbp)
	movq	-24(%rbp), %rax
	movaps	%xmm1, %xmm3
	mulsd	192(%rax), %xmm3
	addsd	%xmm0, %xmm3
	cvttsd2si	%xmm3, %ecx
	movl	%ecx, -56(%rbp)
	movq	-24(%rbp), %rax
	movaps	%xmm2, %xmm3
	mulsd	144(%rax), %xmm3
	addsd	%xmm0, %xmm3
	cvttsd2si	%xmm3, %ecx
	movl	%ecx, -52(%rbp)
	movq	-24(%rbp), %rax
	movaps	%xmm2, %xmm3
	mulsd	152(%rax), %xmm3
	addsd	%xmm0, %xmm3
	cvttsd2si	%xmm3, %ecx
	movl	%ecx, -48(%rbp)
	movq	-24(%rbp), %rax
	mulsd	160(%rax), %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %ecx
	movl	%ecx, -44(%rbp)
	movq	-24(%rbp), %rax
	mulsd	168(%rax), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -40(%rbp)
	movl	$0, -68(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, -68(%rbp)
	jge	.LBB9_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-68(%rbp), %eax
	cmpl	-12(%rbp), %eax
	je	.LBB9_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_color_scales_scale_update(%rip), %rdx
	movslq	-68(%rbp), %rdi
	movq	-8(%rbp), %r9
	movq	328(%r9,%rdi,8), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-88(%rbp), %r10         # 8-byte Reload
	movq	%r9, -96(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-96(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	movslq	-68(%rbp), %rdi
	movq	-8(%rbp), %r8
	movq	328(%r8,%rdi,8), %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movslq	-68(%rbp), %rsi
	cvtsi2sdl	-64(%rbp,%rsi,4), %xmm0
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value@PLT
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	gimp_color_scales_scale_update(%rip), %rax
	movslq	-68(%rbp), %rdi
	movq	-8(%rbp), %r9
	movq	328(%r9,%rdi,8), %rdi
	movq	-8(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -120(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB9_4:                                # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movslq	-68(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	272(%rcx,%rax,8), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_color_scale_get_type@PLT
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-24(%rbp), %rcx
	addq	$144, %rcx
	movq	-24(%rbp), %rsi
	addq	$176, %rsi
	movq	%rax, %rdi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	-144(%rbp), %rdx        # 8-byte Reload
	callq	gimp_color_scale_set_color@PLT
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB9_1
.LBB9_6:                                # %for.end
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_color_scales_update_scales, .Lfunc_end9-gimp_color_scales_update_scales
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4636737291354636288     # double 100
.LCPI10_1:
	.quad	4643176031446892544     # double 255
.LCPI10_2:
	.quad	4645040803167600640     # double 360
	.text
	.align	16, 0x90
	.type	gimp_color_scales_scale_update,@function
gimp_color_scales_scale_update:         # @gimp_color_scales_scale_update
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_color_selector_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value@PLT
	movsd	%xmm0, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB10_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, -36(%rbp)
	jge	.LBB10_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	328(%rcx,%rax,8), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gtk_object_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB10_4
# BB#3:                                 # %if.then
	jmp	.LBB10_6
.LBB10_4:                               # %if.end
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_5
.LBB10_5:                               # %for.inc
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB10_1
.LBB10_6:                               # %for.end
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$6, %rdx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	ja	.LBB10_14
# BB#22:                                # %for.end
	leaq	.LJTI10_0(%rip), %rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB10_7:                               # %sw.bb
	movsd	.LCPI10_2(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	movsd	%xmm1, 176(%rax)
	jmp	.LBB10_14
.LBB10_8:                               # %sw.bb.6
	movsd	.LCPI10_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	movsd	%xmm1, 184(%rax)
	jmp	.LBB10_14
.LBB10_9:                               # %sw.bb.9
	movsd	.LCPI10_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	movsd	%xmm1, 192(%rax)
	jmp	.LBB10_14
.LBB10_10:                              # %sw.bb.12
	movsd	.LCPI10_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	movsd	%xmm1, 144(%rax)
	jmp	.LBB10_14
.LBB10_11:                              # %sw.bb.14
	movsd	.LCPI10_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	movsd	%xmm1, 152(%rax)
	jmp	.LBB10_14
.LBB10_12:                              # %sw.bb.17
	movsd	.LCPI10_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	movsd	%xmm1, 160(%rax)
	jmp	.LBB10_14
.LBB10_13:                              # %sw.bb.20
	movsd	.LCPI10_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	movsd	%xmm1, 168(%rax)
	movq	-24(%rbp), %rax
	movsd	%xmm1, 200(%rax)
.LBB10_14:                              # %sw.epilog
	cmpl	$0, -36(%rbp)
	jl	.LBB10_17
# BB#15:                                # %land.lhs.true
	cmpl	$2, -36(%rbp)
	jg	.LBB10_17
# BB#16:                                # %if.then.27
	movq	-24(%rbp), %rax
	addq	$176, %rax
	movq	-24(%rbp), %rcx
	addq	$144, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_hsv_to_rgb@PLT
	jmp	.LBB10_21
.LBB10_17:                              # %if.else
	cmpl	$3, -36(%rbp)
	jl	.LBB10_20
# BB#18:                                # %land.lhs.true.31
	cmpl	$5, -36(%rbp)
	jg	.LBB10_20
# BB#19:                                # %if.then.33
	movq	-24(%rbp), %rax
	addq	$144, %rax
	movq	-24(%rbp), %rcx
	addq	$176, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_rgb_to_hsv@PLT
.LBB10_20:                              # %if.end.36
	jmp	.LBB10_21
.LBB10_21:                              # %if.end.37
	movq	-16(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_color_scales_update_scales
	movq	-24(%rbp), %rdi
	callq	gimp_color_selector_color_changed@PLT
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_color_scales_scale_update, .Lfunc_end10-gimp_color_scales_scale_update
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI10_0:
	.long	.LBB10_7-.LJTI10_0
	.long	.LBB10_8-.LJTI10_0
	.long	.LBB10_9-.LJTI10_0
	.long	.LBB10_10-.LJTI10_0
	.long	.LBB10_11-.LJTI10_0
	.long	.LBB10_12-.LJTI10_0
	.long	.LBB10_13-.LJTI10_0

	.text
	.align	16, 0x90
	.type	gimp_color_scales_toggle_update,@function
gimp_color_scales_toggle_update:        # @gimp_color_scales_toggle_update
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_color_selector_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active@PLT
	cmpl	$0, %eax
	je	.LBB11_8
# BB#1:                                 # %if.then
	movl	$0, -28(%rbp)
.LBB11_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$6, -28(%rbp)
	jge	.LBB11_7
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB11_2 Depth=1
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	-16(%rbp), %rdx
	cmpq	216(%rdx,%rcx,8), %rax
	jne	.LBB11_5
# BB#4:                                 # %if.then.6
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 208(%rcx)
	jmp	.LBB11_7
.LBB11_5:                               # %if.end
                                        #   in Loop: Header=BB11_2 Depth=1
	jmp	.LBB11_6
.LBB11_6:                               # %for.inc
                                        #   in Loop: Header=BB11_2 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB11_2
.LBB11_7:                               # %for.end
	movq	-24(%rbp), %rdi
	callq	gimp_color_selector_channel_changed@PLT
.LBB11_8:                               # %if.end.7
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_color_scales_toggle_update, .Lfunc_end11-gimp_color_scales_toggle_update
	.cfi_endproc

	.type	gimp_color_scales_get_type.g_define_type_id__volatile,@object # @gimp_color_scales_get_type.g_define_type_id__volatile
	.local	gimp_color_scales_get_type.g_define_type_id__volatile
	.comm	gimp_color_scales_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpColorScales"
	.size	.L.str, 16

	.type	gimp_color_scales_parent_class,@object # @gimp_color_scales_parent_class
	.local	gimp_color_scales_parent_class
	.comm	gimp_color_scales_parent_class,8,8
	.type	GimpColorScales_private_offset,@object # @GimpColorScales_private_offset
	.local	GimpColorScales_private_offset
	.comm	GimpColorScales_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp20-libgimp"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Scales"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-colorselector-scales"
	.size	.L.str.3, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-tool-options"
	.size	.L.str.4, 18

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"label"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"scale"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"spinbutton"
	.size	.L.str.7, 11

	.type	gimp_color_scales_init.slider_initial_vals,@object # @gimp_color_scales_init.slider_initial_vals
	.section	.rodata,"a",@progbits
	.align	16
gimp_color_scales_init.slider_initial_vals:
	.zero	56
	.size	gimp_color_scales_init.slider_initial_vals, 56

	.type	gimp_color_scales_init.slider_max_vals,@object # @gimp_color_scales_init.slider_max_vals
	.align	16
gimp_color_scales_init.slider_max_vals:
	.quad	4645040803167600640     # double 3.600000e+02
	.quad	4636737291354636288     # double 1.000000e+02
	.quad	4636737291354636288     # double 1.000000e+02
	.quad	4643176031446892544     # double 2.550000e+02
	.quad	4643176031446892544     # double 2.550000e+02
	.quad	4643176031446892544     # double 2.550000e+02
	.quad	4636737291354636288     # double 1.000000e+02
	.size	gimp_color_scales_init.slider_max_vals, 56

	.type	gimp_color_scales_init.slider_incs,@object # @gimp_color_scales_init.slider_incs
	.align	16
gimp_color_scales_init.slider_incs:
	.quad	4629137466983448576     # double 3.000000e+01
	.quad	4621819117588971520     # double 1.000000e+01
	.quad	4621819117588971520     # double 1.000000e+01
	.quad	4625196817309499392     # double 1.600000e+01
	.quad	4625196817309499392     # double 1.600000e+01
	.quad	4625196817309499392     # double 1.600000e+01
	.quad	4621819117588971520     # double 1.000000e+01
	.size	gimp_color_scales_init.slider_incs, 56

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"toggled"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"value-changed"
	.size	.L.str.9, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
