	.text
	.file	"gimpsheartool.bc"
	.globl	gimp_shear_tool_get_type
	.align	16, 0x90
	.type	gimp_shear_tool_get_type,@function
gimp_shear_tool_get_type:               # @gimp_shear_tool_get_type
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
	movq	gimp_shear_tool_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_shear_tool_get_type.g_define_type_id__volatile, %rax
	movq	%rax, %rdi
	callq	g_once_init_enter
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
	callq	gimp_transform_tool_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$344, %edx              # imm = 0x158
	movabsq	$gimp_shear_tool_class_intern_init, %rdi
	movl	$808, %r8d              # imm = 0x328
	movabsq	$gimp_shear_tool_init, %rcx
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
	callq	g_type_register_static_simple
	movabsq	$gimp_shear_tool_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_shear_tool_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_shear_tool_get_type, .Lfunc_end0-gimp_shear_tool_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_shear_tool_class_intern_init,@function
gimp_shear_tool_class_intern_init:      # @gimp_shear_tool_class_intern_init
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
	callq	g_type_class_peek_parent
	movq	%rax, gimp_shear_tool_parent_class
	cmpl	$0, GimpShearTool_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpShearTool_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_shear_tool_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_shear_tool_class_intern_init, .Lfunc_end1-gimp_shear_tool_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_shear_tool_init,@function
gimp_shear_tool_init:                   # @gimp_shear_tool_init
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_transform_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$16, %esi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_tool_cursor
	movabsq	$.L.str.13, %rdi
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, 776(%rdi)
	movq	-24(%rbp), %rax
	movl	$1, 668(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_shear_tool_init, .Lfunc_end2-gimp_shear_tool_init
	.cfi_endproc

	.globl	gimp_shear_tool_register
	.align	16, 0x90
	.type	gimp_shear_tool_register,@function
gimp_shear_tool_register:               # @gimp_shear_tool_register
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$128, %rsp
.Ltmp12:
	.cfi_offset %rbx, -48
.Ltmp13:
	.cfi_offset %r12, -40
.Ltmp14:
	.cfi_offset %r14, -32
.Ltmp15:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_shear_tool_get_type
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_transform_options_get_type
	movabsq	$.L.str.2, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.3, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$gimp_transform_options_gui, %rdx
	xorl	%ecx, %ecx
	movabsq	$.L.str.1, %r8
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %rdi
	xorl	%r9d, %r9d
	movl	%r9d, %r10d
	movabsq	$.L.str.6, %r11
	movq	-48(%rbp), %rbx
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%r14, %rdi
	movq	-72(%rbp), %r15         # 8-byte Reload
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%r15, %rsi
	movq	-80(%rbp), %r9          # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-88(%rbp), %r12         # 8-byte Reload
	movq	%r12, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	%r11, 32(%rsp)
	movq	%r11, 40(%rsp)
	movq	%rbx, 48(%rsp)
	movq	-56(%rbp), %r11         # 8-byte Reload
	movq	%r10, -104(%rbp)        # 8-byte Spill
	callq	*%r11
	addq	$128, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_shear_tool_register, .Lfunc_end3-gimp_shear_tool_register
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_shear_tool_class_init,@function
gimp_shear_tool_class_init:             # @gimp_shear_tool_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_transform_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_shear_tool_get_undo_desc, %rsi
	movabsq	$gimp_shear_tool_recalc_matrix, %rdi
	movabsq	$gimp_shear_tool_motion, %rcx
	movabsq	$gimp_shear_tool_prepare, %rdx
	movabsq	$gimp_shear_tool_dialog_update, %r8
	movabsq	$gimp_shear_tool_dialog, %r9
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%r9, 288(%rax)
	movq	-16(%rbp), %rax
	movq	%r8, 296(%rax)
	movq	-16(%rbp), %rax
	movq	%rdx, 304(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 312(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 320(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 328(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_shear_tool_class_init, .Lfunc_end4-gimp_shear_tool_class_init
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI5_0:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_1:
	.quad	-4544132024016830464    # double -65536
.LCPI5_2:
	.quad	4679240012837945344     # double 65536
.LCPI5_3:
	.quad	4607182418800017408     # double 1
.LCPI5_4:
	.quad	4624633867356078080     # double 15
	.text
	.align	16, 0x90
	.type	gimp_shear_tool_dialog,@function
gimp_shear_tool_dialog:                 # @gimp_shear_tool_dialog
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_shear_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %ecx
	xorl	%edx, %edx
	movq	%rax, -16(%rbp)
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-8(%rbp), %rax
	movq	784(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movl	-84(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	xorps	%xmm0, %xmm0
	movsd	.LCPI5_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI5_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI5_3, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI5_4, %xmm4         # xmm4 = mem[0],zero
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	addq	$792, %rax              # imm = 0x318
	movq	%rax, %rdi
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movsd	%xmm3, -104(%rbp)       # 8-byte Spill
	movsd	-96(%rbp), %xmm5        # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-104(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$10, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_width_chars
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movss	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-32(%rbp), %r8
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.8, %rsi
	movabsq	$shear_x_mag_changed, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	792(%rdi), %rdi
	movq	-8(%rbp), %r10
	movq	%rcx, %rdx
	movq	%r10, %rcx
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	xorps	%xmm0, %xmm0
	movsd	.LCPI5_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI5_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI5_3, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI5_4, %xmm4         # xmm4 = mem[0],zero
	xorl	%esi, %esi
	movq	-16(%rbp), %rcx
	addq	$800, %rcx              # imm = 0x320
	movq	%rcx, %rdi
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	movsd	%xmm3, -152(%rbp)       # 8-byte Spill
	movsd	-144(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-152(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_spin_button_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$10, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_width_chars
	movq	-24(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %r9d
	xorps	%xmm0, %xmm0
	movss	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-32(%rbp), %r8
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %edx
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.8, %rsi
	movabsq	$shear_y_mag_changed, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	800(%rdi), %rdi
	movq	-8(%rbp), %r10
	movq	%rcx, %rdx
	movq	%r10, %rcx
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -200(%rbp)        # 8-byte Spill
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_shear_tool_dialog, .Lfunc_end5-gimp_shear_tool_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_shear_tool_dialog_update,@function
gimp_shear_tool_dialog_update:          # @gimp_shear_tool_dialog_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_shear_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	792(%rax), %rdi
	movq	-8(%rbp), %rax
	movsd	480(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_value
	movq	-16(%rbp), %rax
	movq	800(%rax), %rdi
	movq	-8(%rbp), %rax
	movsd	488(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_value
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_shear_tool_dialog_update, .Lfunc_end6-gimp_shear_tool_dialog_update
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_shear_tool_prepare,@function
gimp_shear_tool_prepare:                # @gimp_shear_tool_prepare
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	xorps	%xmm0, %xmm0
	movsd	.LCPI7_0, %xmm1         # xmm1 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movsd	%xmm1, 472(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 480(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 488(%rdi)
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_shear_tool_prepare, .Lfunc_end7-gimp_shear_tool_prepare
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4611686018427387904     # double 2
.LCPI8_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_shear_tool_motion,@function
gimp_shear_tool_motion:                 # @gimp_shear_tool_motion
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movsd	248(%rdi), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rdi
	subsd	264(%rdi), %xmm1
	movsd	%xmm1, -16(%rbp)
	movq	-8(%rbp), %rdi
	movsd	256(%rdi), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rdi
	subsd	272(%rdi), %xmm1
	movsd	%xmm1, -24(%rbp)
	movq	-8(%rbp), %rdi
	movsd	472(%rdi), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB8_9
	jp	.LBB8_9
# BB#1:                                 # %if.then
	cvttsd2si	-16(%rbp), %edi
	callq	abs
	cmpl	$5, %eax
	jg	.LBB8_3
# BB#2:                                 # %lor.lhs.false
	cvttsd2si	-24(%rbp), %edi
	callq	abs
	cmpl	$5, %eax
	jle	.LBB8_7
.LBB8_3:                                # %if.then.8
	cvttsd2si	-16(%rbp), %edi
	callq	abs
	cvttsd2si	-24(%rbp), %edi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	abs
	movl	-28(%rbp), %edi         # 4-byte Reload
	cmpl	%eax, %edi
	jle	.LBB8_5
# BB#4:                                 # %if.then.15
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 472(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 480(%rax)
	jmp	.LBB8_6
.LBB8_5:                                # %if.else
	xorps	%xmm0, %xmm0
	movsd	.LCPI8_1, %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm1, 472(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 480(%rax)
.LBB8_6:                                # %if.end
	jmp	.LBB8_8
.LBB8_7:                                # %if.else.24
	movq	-8(%rbp), %rax
	movsd	264(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 248(%rax)
	movq	-8(%rbp), %rax
	movsd	272(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 256(%rax)
.LBB8_8:                                # %if.end.29
	jmp	.LBB8_9
.LBB8_9:                                # %if.end.30
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movsd	472(%rax), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB8_14
	jp	.LBB8_14
# BB#10:                                # %if.then.35
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	256(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	328(%rax), %xmm2        # xmm2 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	360(%rax), %xmm2
	divsd	%xmm0, %xmm2
	ucomisd	%xmm2, %xmm1
	jbe	.LBB8_12
# BB#11:                                # %if.then.39
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	480(%rax), %xmm0
	movsd	%xmm0, 480(%rax)
	jmp	.LBB8_13
.LBB8_12:                               # %if.else.43
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	480(%rax), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 480(%rax)
.LBB8_13:                               # %if.end.47
	jmp	.LBB8_20
.LBB8_14:                               # %if.else.48
	movsd	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	472(%rax), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB8_19
	jp	.LBB8_19
# BB#15:                                # %if.then.53
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	248(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	320(%rax), %xmm2        # xmm2 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	336(%rax), %xmm2
	divsd	%xmm0, %xmm2
	ucomisd	%xmm2, %xmm1
	jbe	.LBB8_17
# BB#16:                                # %if.then.59
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	488(%rax), %xmm0
	movsd	%xmm0, 488(%rax)
	jmp	.LBB8_18
.LBB8_17:                               # %if.else.63
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	488(%rax), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 488(%rax)
.LBB8_18:                               # %if.end.67
	jmp	.LBB8_19
.LBB8_19:                               # %if.end.68
	jmp	.LBB8_20
.LBB8_20:                               # %if.end.69
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_shear_tool_motion, .Lfunc_end8-gimp_shear_tool_motion
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_shear_tool_recalc_matrix,@function
gimp_shear_tool_recalc_matrix:          # @gimp_shear_tool_recalc_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movsd	480(%rdi), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB9_3
	jp	.LBB9_3
# BB#1:                                 # %land.lhs.true
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movsd	488(%rax), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB9_3
	jp	.LBB9_3
# BB#2:                                 # %if.then
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 472(%rax)
.LBB9_3:                                # %if.end
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movsd	472(%rax), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB9_5
	jp	.LBB9_5
# BB#4:                                 # %if.then.9
	movq	-8(%rbp), %rax
	movsd	480(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	jmp	.LBB9_6
.LBB9_5:                                # %if.else
	movq	-8(%rbp), %rax
	movsd	488(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
.LBB9_6:                                # %if.end.14
	movq	-8(%rbp), %rax
	addq	$400, %rax              # imm = 0x190
	movq	%rax, %rdi
	callq	gimp_matrix3_identity
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	addq	$400, %rdi              # imm = 0x190
	movl	280(%rax), %ecx
	movl	284(%rax), %edx
	movl	288(%rax), %esi
	subl	%ecx, %esi
	movl	292(%rax), %r8d
	subl	%edx, %r8d
	cvttsd2si	472(%rax), %rax
	movl	%eax, %r9d
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	%esi, -20(%rbp)         # 4-byte Spill
	movl	%ecx, %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
	callq	gimp_transform_matrix_shear
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_shear_tool_recalc_matrix, .Lfunc_end9-gimp_shear_tool_recalc_matrix
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_shear_tool_get_undo_desc,@function
gimp_shear_tool_get_undo_desc:          # @gimp_shear_tool_get_undo_desc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movsd	480(%rdi), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	movq	-16(%rbp), %rdi
	movsd	488(%rdi), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movq	-16(%rbp), %rdi
	cvttsd2si	472(%rdi), %eax
	testl	%eax, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB10_1
	jmp	.LBB10_5
.LBB10_5:                               # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB10_2
	jmp	.LBB10_3
.LBB10_1:                               # %sw.bb
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.10, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	callq	g_dpgettext
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movb	$1, %al
	callq	g_strdup_printf
	movq	%rax, -8(%rbp)
	jmp	.LBB10_4
.LBB10_2:                               # %sw.bb.6
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.11, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	callq	g_dpgettext
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movb	$1, %al
	callq	g_strdup_printf
	movq	%rax, -8(%rbp)
	jmp	.LBB10_4
.LBB10_3:                               # %sw.default
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.12, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	callq	g_dpgettext
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
	movb	$2, %al
	callq	g_strdup_printf
	movq	%rax, -8(%rbp)
.LBB10_4:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_shear_tool_get_undo_desc, .Lfunc_end10-gimp_shear_tool_get_undo_desc
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	shear_x_mag_changed,@function
shear_x_mag_changed:                    # @shear_x_mag_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rsi
	ucomisd	480(%rsi), %xmm0
	jne	.LBB11_1
	jp	.LBB11_1
	jmp	.LBB11_4
.LBB11_1:                               # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	472(%rax), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB11_3
	jp	.LBB11_3
# BB#2:                                 # %if.then.6
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	movsd	%xmm0, 472(%rax)
.LBB11_3:                               # %if.end
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 480(%rax)
	movq	-16(%rbp), %rdi
	callq	gimp_transform_tool_recalc_matrix
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
.LBB11_4:                               # %if.end.13
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	shear_x_mag_changed, .Lfunc_end11-shear_x_mag_changed
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4611686018427387904     # double 2
.LCPI12_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	shear_y_mag_changed,@function
shear_y_mag_changed:                    # @shear_y_mag_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rsi
	ucomisd	488(%rsi), %xmm0
	jne	.LBB12_1
	jp	.LBB12_1
	jmp	.LBB12_4
.LBB12_1:                               # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	472(%rax), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB12_3
	jp	.LBB12_3
# BB#2:                                 # %if.then.6
	movsd	.LCPI12_1, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 472(%rax)
.LBB12_3:                               # %if.end
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 488(%rax)
	movq	-16(%rbp), %rdi
	callq	gimp_transform_tool_recalc_matrix
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
.LBB12_4:                               # %if.end.13
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	shear_y_mag_changed, .Lfunc_end12-shear_y_mag_changed
	.cfi_endproc

	.type	gimp_shear_tool_get_type.g_define_type_id__volatile,@object # @gimp_shear_tool_get_type.g_define_type_id__volatile
	.local	gimp_shear_tool_get_type.g_define_type_id__volatile
	.comm	gimp_shear_tool_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpShearTool"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-shear-tool"
	.size	.L.str.1, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Shear"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Shear Tool: Shear the layer, selection or path"
	.size	.L.str.3, 47

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"S_hear"
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"<shift>S"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-tool-shear"
	.size	.L.str.6, 16

	.type	gimp_shear_tool_parent_class,@object # @gimp_shear_tool_parent_class
	.local	gimp_shear_tool_parent_class
	.comm	gimp_shear_tool_parent_class,8,8
	.type	GimpShearTool_private_offset,@object # @GimpShearTool_private_offset
	.local	GimpShearTool_private_offset
	.comm	GimpShearTool_private_offset,4,4
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Shear magnitude _X:"
	.size	.L.str.7, 20

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"value-changed"
	.size	.L.str.8, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Shear magnitude _Y:"
	.size	.L.str.9, 20

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"undo-type\004Shear horizontally by %-3.3g"
	.size	.L.str.10, 39

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"undo-type\004Shear vertically by %-3.3g"
	.size	.L.str.11, 37

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"undo-type\004Shear horizontally by %-3.3g, vertically by %-3.3g"
	.size	.L.str.12, 61

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Shearing"
	.size	.L.str.13, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
