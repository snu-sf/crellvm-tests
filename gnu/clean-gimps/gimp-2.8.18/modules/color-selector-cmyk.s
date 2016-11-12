	.text
	.file	"color-selector-cmyk.bc"
	.globl	colorsel_cmyk_get_type
	.align	16, 0x90
	.type	colorsel_cmyk_get_type,@function
colorsel_cmyk_get_type:                 # @colorsel_cmyk_get_type
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
	movq	colorsel_cmyk_type_id(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	colorsel_cmyk_get_type, .Lfunc_end0-colorsel_cmyk_get_type
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
	leaq	colorsel_cmyk_info(%rip), %rax
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
	callq	colorsel_cmyk_register_type
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_module_register, .Lfunc_end2-gimp_module_register
	.cfi_endproc

	.align	16, 0x90
	.type	colorsel_cmyk_register_type,@function
colorsel_cmyk_register_type:            # @colorsel_cmyk_register_type
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
	leaq	colorsel_cmyk_register_type.g_define_type_info(%rip), %rcx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_module_register_type@PLT
	movq	%rax, colorsel_cmyk_type_id(%rip)
	movq	colorsel_cmyk_type_id(%rip), %rax
	movq	%rax, -16(%rbp)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	colorsel_cmyk_register_type, .Lfunc_end3-colorsel_cmyk_register_type
	.cfi_endproc

	.align	16, 0x90
	.type	colorsel_cmyk_class_intern_init,@function
colorsel_cmyk_class_intern_init:        # @colorsel_cmyk_class_intern_init
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
	movq	%rax, colorsel_cmyk_parent_class(%rip)
	cmpl	$0, ColorselCmyk_private_offset(%rip)
	je	.LBB4_2
# BB#1:                                 # %if.then
	leaq	ColorselCmyk_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB4_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	colorsel_cmyk_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	colorsel_cmyk_class_intern_init, .Lfunc_end4-colorsel_cmyk_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	colorsel_cmyk_class_finalize,@function
colorsel_cmyk_class_finalize:           # @colorsel_cmyk_class_finalize
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
	.size	colorsel_cmyk_class_finalize, .Lfunc_end5-colorsel_cmyk_class_finalize
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
.LCPI6_1:
	.quad	4636737291354636288     # double 100
.LCPI6_2:
	.quad	4621819117588971520     # double 10
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI6_3:
	.long	1065353216              # float 1
.LCPI6_4:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	colorsel_cmyk_init,@function
colorsel_cmyk_init:                     # @colorsel_cmyk_init
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
	subq	$320, %rsp              # imm = 0x140
	movl	$5, %eax
	movl	$4, %esi
	xorl	%edx, %edx
	movsd	.LCPI6_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 256(%rdi)
	movl	%eax, %edi
	callq	gtk_table_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%edx, %edx
	movq	%rax, %rdi
	movl	%edx, %esi
	callq	gtk_table_set_col_spacing@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$3, %esi
	movl	$4, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -92(%rbp)         # 4-byte Spill
	movl	-92(%rbp), %ecx         # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movl	$0, -44(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -44(%rbp)
	jge	.LBB6_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.6(%rip), %rdi
	leaq	colorsel_cmyk_init.cmyk_labels(%rip), %rsi
	movl	-44(%rbp), %edx
	movslq	-44(%rbp), %rcx
	movq	(%rsi,%rcx,8), %rsi
	movl	%edx, -108(%rbp)        # 4-byte Spill
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	leaq	.L.str.6(%rip), %rdi
	leaq	colorsel_cmyk_init.cmyk_tips(%rip), %rcx
	movslq	-44(%rbp), %rsi
	movq	(%rcx,%rsi,8), %rsi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	movl	$1, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorps	%xmm0, %xmm0
	movsd	.LCPI6_1(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI6_0(%rip), %xmm3   # xmm3 = mem[0],zero
	movsd	.LCPI6_2(%rip), %xmm4   # xmm4 = mem[0],zero
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %r9d        # 4-byte Reload
	movl	%edx, -132(%rbp)        # 4-byte Spill
	movl	%r9d, %edx
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movq	%r10, %rcx
	movl	-132(%rbp), %r11d       # 4-byte Reload
	movl	%r8d, -148(%rbp)        # 4-byte Spill
	movl	%r11d, %r8d
	movl	%r11d, %r9d
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	movsd	-160(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-160(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-160(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new@PLT
	leaq	.L.str.18(%rip), %rsi
	leaq	colorsel_cmyk_adj_update(%rip), %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-168(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movq	-40(%rbp), %rcx
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type@PLT
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movslq	-44(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rax, 264(%rdx,%rcx,8)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB6_1
.LBB6_4:                                # %for.end
	leaq	.L.str.6(%rip), %rdi
	leaq	.L.str.19(%rip), %rsi
	callq	dgettext@PLT
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type@PLT
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movss	.LCPI6_3(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI6_4(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %edx
	movl	$3, %ecx
	movl	$4, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rsi
	movl	-44(%rbp), %r10d
	movl	-44(%rbp), %r11d
	addl	$1, %r11d
	movq	%rax, %rdi
	movl	%r8d, -204(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	%r9d, -208(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach@PLT
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show@PLT
	leaq	-40(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI6_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI6_0(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI6_2(%rip), %xmm4   # xmm4 = mem[0],zero
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movaps	%xmm1, %xmm3
	mulsd	256(%rax), %xmm3
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-216(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -224(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-224(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	%xmm2, -232(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm2
	movsd	-232(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-216(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-232(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$3, %edx
	movl	$4, %ecx
	movl	$2, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rsi
	movl	-44(%rbp), %r10d
	movl	-44(%rbp), %r11d
	addl	$1, %r11d
	movq	%rax, %rdi
	movl	%r8d, -244(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	%r9d, -248(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$2, (%rsp)
	movl	$2, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach@PLT
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.6(%rip), %rdi
	leaq	.L.str.20(%rip), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget@PLT
	leaq	.L.str.18(%rip), %rsi
	leaq	colorsel_cmyk_pullout_update(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-272(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movq	-40(%rbp), %rcx
	movq	%rax, -280(%rbp)        # 8-byte Spill
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type@PLT
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movslq	-44(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rax, 264(%rdx,%rcx,8)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show@PLT
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end6:
	.size	colorsel_cmyk_init, .Lfunc_end6-colorsel_cmyk_init
	.cfi_endproc

	.align	16, 0x90
	.type	colorsel_cmyk_class_init,@function
colorsel_cmyk_class_init:               # @colorsel_cmyk_class_init
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
	leaq	colorsel_cmyk_set_color(%rip), %rsi
	leaq	.L.str.9(%rip), %rdi
	leaq	.L.str.8(%rip), %rcx
	movq	-16(%rbp), %rdx
	movq	%rax, 824(%rdx)
	movq	-16(%rbp), %rax
	movq	%rcx, 832(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 840(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 872(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	colorsel_cmyk_class_init, .Lfunc_end7-colorsel_cmyk_class_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	colorsel_cmyk_set_color,@function
colorsel_cmyk_set_color:                # @colorsel_cmyk_set_color
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	colorsel_cmyk_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movsd	256(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	addq	$216, %rax
	movq	%rax, %rsi
	callq	gimp_rgb_to_cmyk@PLT
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movq	264(%rax), %rdi
	movq	-32(%rbp), %rax
	mulsd	216(%rax), %xmm0
	callq	gtk_adjustment_set_value@PLT
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movq	272(%rax), %rdi
	movq	-32(%rbp), %rax
	mulsd	224(%rax), %xmm0
	callq	gtk_adjustment_set_value@PLT
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movq	280(%rax), %rdi
	movq	-32(%rbp), %rax
	mulsd	232(%rax), %xmm0
	callq	gtk_adjustment_set_value@PLT
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movq	288(%rax), %rdi
	movq	-32(%rbp), %rax
	mulsd	240(%rax), %xmm0
	callq	gtk_adjustment_set_value@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	colorsel_cmyk_set_color, .Lfunc_end8-colorsel_cmyk_set_color
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	colorsel_cmyk_adj_update,@function
colorsel_cmyk_adj_update:               # @colorsel_cmyk_adj_update
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_color_selector_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -36(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -36(%rbp)
	jge	.LBB9_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	264(%rcx,%rax,8), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB9_4
# BB#3:                                 # %if.then
	jmp	.LBB9_6
.LBB9_4:                                # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_5
.LBB9_5:                                # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB9_1
.LBB9_6:                                # %for.end
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value@PLT
	movsd	%xmm0, -32(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	movq	%rdi, %rcx
	subq	$3, %rcx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	ja	.LBB9_11
# BB#14:                                # %for.end
	leaq	.LJTI9_0(%rip), %rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB9_7:                                # %sw.bb
	movsd	.LCPI9_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-16(%rbp), %rax
	movsd	%xmm1, 216(%rax)
	jmp	.LBB9_12
.LBB9_8:                                # %sw.bb.5
	movsd	.LCPI9_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-16(%rbp), %rax
	movsd	%xmm1, 224(%rax)
	jmp	.LBB9_12
.LBB9_9:                                # %sw.bb.8
	movsd	.LCPI9_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-16(%rbp), %rax
	movsd	%xmm1, 232(%rax)
	jmp	.LBB9_12
.LBB9_10:                               # %sw.bb.11
	movsd	.LCPI9_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-16(%rbp), %rax
	movsd	%xmm1, 240(%rax)
	jmp	.LBB9_12
.LBB9_11:                               # %sw.default
	jmp	.LBB9_13
.LBB9_12:                               # %sw.epilog
	movq	-16(%rbp), %rax
	addq	$216, %rax
	movq	-24(%rbp), %rcx
	addq	$144, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_cmyk_to_rgb@PLT
	movq	-24(%rbp), %rax
	addq	$144, %rax
	movq	-24(%rbp), %rcx
	addq	$176, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_rgb_to_hsv@PLT
	movq	-24(%rbp), %rdi
	callq	gimp_color_selector_color_changed@PLT
.LBB9_13:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	colorsel_cmyk_adj_update, .Lfunc_end9-colorsel_cmyk_adj_update
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI9_0:
	.long	.LBB9_7-.LJTI9_0
	.long	.LBB9_8-.LJTI9_0
	.long	.LBB9_9-.LJTI9_0
	.long	.LBB9_10-.LJTI9_0

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	colorsel_cmyk_pullout_update,@function
colorsel_cmyk_pullout_update:           # @colorsel_cmyk_pullout_update
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_color_selector_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value@PLT
	movsd	.LCPI10_0(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movsd	%xmm0, 256(%rax)
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$144, %rax
	movq	-24(%rbp), %rsi
	addq	$176, %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-40(%rbp), %rdx         # 8-byte Reload
	callq	gimp_color_selector_set_color@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	colorsel_cmyk_pullout_update, .Lfunc_end10-colorsel_cmyk_pullout_update
	.cfi_endproc

	.type	colorsel_cmyk_type_id,@object # @colorsel_cmyk_type_id
	.local	colorsel_cmyk_type_id
	.comm	colorsel_cmyk_type_id,8,8
	.type	colorsel_cmyk_info,@object # @colorsel_cmyk_info
	.section	.data.rel.ro.local,"aw",@progbits
	.align	8
colorsel_cmyk_info:
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.size	colorsel_cmyk_info, 48

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"CMYK color selector"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Sven Neumann <sven@gimp.org>"
	.size	.L.str.1, 29

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"v0.2"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"(c) 2003, released under the GPL"
	.size	.L.str.3, 33

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"July 2003"
	.size	.L.str.4, 10

	.type	colorsel_cmyk_register_type.g_define_type_info,@object # @colorsel_cmyk_register_type.g_define_type_info
	.section	.data.rel.ro.local,"aw",@progbits
	.align	8
colorsel_cmyk_register_type.g_define_type_info:
	.short	936                     # 0x3a8
	.zero	6
	.quad	0
	.quad	0
	.quad	colorsel_cmyk_class_intern_init
	.quad	colorsel_cmyk_class_finalize
	.quad	0
	.short	304                     # 0x130
	.short	0                       # 0x0
	.zero	4
	.quad	colorsel_cmyk_init
	.quad	0
	.size	colorsel_cmyk_register_type.g_define_type_info, 72

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"ColorselCmyk"
	.size	.L.str.5, 13

	.type	colorsel_cmyk_parent_class,@object # @colorsel_cmyk_parent_class
	.local	colorsel_cmyk_parent_class
	.comm	colorsel_cmyk_parent_class,8,8
	.type	ColorselCmyk_private_offset,@object # @ColorselCmyk_private_offset
	.local	ColorselCmyk_private_offset
	.comm	ColorselCmyk_private_offset,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp20-libgimp"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"CMYK"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-colorselector-cmyk"
	.size	.L.str.8, 24

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gtk-print"
	.size	.L.str.9, 10

	.type	colorsel_cmyk_init.cmyk_labels,@object # @colorsel_cmyk_init.cmyk_labels
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
colorsel_cmyk_init.cmyk_labels:
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	.L.str.13
	.size	colorsel_cmyk_init.cmyk_labels, 32

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"_C"
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"_M"
	.size	.L.str.11, 3

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"_Y"
	.size	.L.str.12, 3

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"_K"
	.size	.L.str.13, 3

	.type	colorsel_cmyk_init.cmyk_tips,@object # @colorsel_cmyk_init.cmyk_tips
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
colorsel_cmyk_init.cmyk_tips:
	.quad	.L.str.14
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	.L.str.17
	.size	colorsel_cmyk_init.cmyk_tips, 32

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"Cyan"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Magenta"
	.size	.L.str.15, 8

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Yellow"
	.size	.L.str.16, 7

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Black"
	.size	.L.str.17, 6

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"value-changed"
	.size	.L.str.18, 14

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Black _pullout:"
	.size	.L.str.19, 16

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"The percentage of black to pull out of the colored inks."
	.size	.L.str.20, 57


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
