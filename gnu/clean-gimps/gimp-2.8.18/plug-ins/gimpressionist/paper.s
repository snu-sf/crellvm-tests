	.text
	.file	"paper.bc"
	.globl	paper_restore
	.align	16, 0x90
	.type	paper_restore,@function
paper_restore:                          # @paper_restore
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
	movabsq	$pcvals, %rax
	addq	$304, %rax              # imm = 0x130
	movq	paper_list, %rdi
	movq	%rax, %rsi
	callq	reselect
	movq	paper_relief_adjust, %rax
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	pcvals+80, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	movq	paper_scale_adjust, %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	pcvals+88, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	movq	paper_invert, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	pcvals+96, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	paper_overlay, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	pcvals+3380, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	paper_restore, .Lfunc_end0-paper_restore
	.cfi_endproc

	.globl	paper_store
	.align	16, 0x90
	.type	paper_store,@function
paper_store:                            # @paper_store
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
	subq	$32, %rsp
	movq	paper_invert, %rax
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movl	%eax, pcvals+96
	movq	paper_invert, %rsi
	movq	%rsi, -16(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movl	%eax, pcvals+96
	movq	paper_overlay, %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movl	%eax, pcvals+3380
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	paper_store, .Lfunc_end1-paper_store
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4636737291354636288     # double 100
.LCPI2_1:
	.quad	4607182418800017408     # double 1
.LCPI2_2:
	.quad	4621819117588971520     # double 10
.LCPI2_3:
	.quad	4613937818241073152     # double 3
.LCPI2_4:
	.quad	4639481672377565184     # double 150
	.text
	.globl	create_paperpage
	.align	16, 0x90
	.type	create_paperpage,@function
create_paperpage:                       # @create_paperpage
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
	subq	$512, %rsp              # imm = 0x200
	movabsq	$.L.str, %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movl	$1, %edi
	movl	$12, %esi
	movq	%rax, -40(%rbp)
	callq	gtk_box_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$paper_select, %rsi
	movq	-16(%rbp), %rdi
	callq	create_one_column_list
	movq	%rax, -64(%rbp)
	movq	%rax, paper_list
	movq	-64(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_model
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -120(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection
	movl	$1, %edi
	movl	$12, %esi
	movq	%rax, -80(%rbp)
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	movl	-172(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_frame_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-32(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	movl	-196(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_preview_area_new
	movl	$100, %ecx
	movq	%rax, -48(%rbp)
	movq	%rax, paper_preview
	movq	-48(%rbp), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_widget_set_size_request
	movq	-72(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.1, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -48(%rbp)
	movq	%rax, paper_invert
	movq	-32(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -220(%rbp)        # 4-byte Spill
	movl	-220(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.2, %rsi
	movabsq	$paper_select, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.3, %rdi
	movq	-48(%rbp), %rcx
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	-48(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	pcvals+96, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movabsq	$.L.str.4, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -48(%rbp)
	movq	%rax, paper_overlay
	movq	-32(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.5, %rdi
	movq	-48(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	-48(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	pcvals+3380, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movl	$2, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-56(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-24(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -316(%rbp)        # 4-byte Spill
	movl	-316(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rdi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.7, %rdi
	movsd	pcvals+88, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -344(%rbp)        # 8-byte Spill
	movsd	%xmm0, -352(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$150, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movsd	.LCPI2_3, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI2_4, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI2_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI2_2, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %edx
	xorps	%xmm0, %xmm0
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -360(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -364(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	-344(%rbp), %rcx        # 8-byte Reload
	movsd	-352(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	%xmm0, -376(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-376(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-376(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.8, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$pcvals, %rdi
	addq	$88, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, paper_scale_adjust
	movq	paper_scale_adjust, %rax
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-384(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -392(%rbp)        # 8-byte Spill
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rdi
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.10, %rdi
	movsd	pcvals+80, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -416(%rbp)        # 8-byte Spill
	movsd	%xmm0, -424(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$150, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI2_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI2_2, %xmm4         # xmm4 = mem[0],zero
	xorl	%r11d, %r11d
	movl	%r11d, %ecx
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	-416(%rbp), %r10        # 8-byte Reload
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	movq	%r10, %rcx
	movsd	-424(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -440(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-440(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-440(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-440(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.8, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$pcvals, %rdi
	addq	$80, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, paper_relief_adjust
	movq	paper_relief_adjust, %rax
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-448(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-120(%rbp), %rcx
	movq	%rax, -456(%rbp)        # 8-byte Spill
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_model_get_iter_first
	cmpl	$0, %eax
	je	.LBB2_2
# BB#1:                                 # %if.then
	leaq	-112(%rbp), %rsi
	movq	-80(%rbp), %rdi
	callq	gtk_tree_selection_select_iter
.LBB2_2:                                # %if.end
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-80(%rbp), %rdi
	callq	paper_select
	movabsq	$.L.str.11, %rdi
	movabsq	$pcvals, %rsi
	addq	$304, %rsi              # imm = 0x130
	movq	-64(%rbp), %rcx
	movq	%rsi, -472(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	-472(%rbp), %rdx        # 8-byte Reload
	callq	readdirintolist
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gtk_notebook_append_page_menu
	movl	%eax, -476(%rbp)        # 4-byte Spill
	addq	$512, %rsp              # imm = 0x200
	popq	%rbp
	retq
.Lfunc_end2:
	.size	create_paperpage, .Lfunc_end2-create_paperpage
	.cfi_endproc

	.align	16, 0x90
	.type	paper_select,@function
paper_select:                           # @paper_select
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
	subq	$96, %rsp
	leaq	-56(%rbp), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	gtk_tree_selection_get_selected
	cmpl	$0, %eax
	je	.LBB3_4
# BB#1:                                 # %if.then
	leaq	-48(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-64(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-56(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	cmpq	$0, -64(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then.2
	movabsq	$.L.str.11, %rdi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rsi
	movb	$0, %al
	callq	g_build_filename
	movabsq	$pcvals, %rdx
	addq	$304, %rdx              # imm = 0x130
	movl	$200, %ecx
	movl	%ecx, %esi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-80(%rbp), %rdx         # 8-byte Reload
	callq	g_strlcpy
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	paper_update_preview
	movq	-72(%rbp), %rdi
	callq	g_free
	movq	-64(%rbp), %rdi
	callq	g_free
.LBB3_3:                                # %if.end
	jmp	.LBB3_4
.LBB3_4:                                # %if.end.5
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	paper_select, .Lfunc_end3-paper_select
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	paper_update_preview,@function
paper_update_preview:                   # @paper_update_preview
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
	subq	$128, %rsp
	movabsq	$pcvals, %rax
	addq	$304, %rax              # imm = 0x130
	leaq	-48(%rbp), %rcx
	xorl	%esi, %esi
	movl	$16, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rcx, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	memset
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	ppm_load
	movl	-48(%rbp), %r8d
	cmpl	-44(%rbp), %r8d
	jle	.LBB4_2
# BB#1:                                 # %cond.true
	movl	-48(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB4_3
.LBB4_2:                                # %cond.false
	movl	-44(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB4_3:                                # %cond.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	leaq	-48(%rbp), %rdi
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	movsd	%xmm1, -32(%rbp)
	divsd	-32(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	cvtsi2sdl	-48(%rbp), %xmm0
	mulsd	-32(%rbp), %xmm0
	cvttsd2si	%xmm0, %esi
	cvtsi2sdl	-44(%rbp), %xmm0
	mulsd	-32(%rbp), %xmm0
	cvttsd2si	%xmm0, %edx
	callq	resize
	movl	$10000, %eax            # imm = 0x2710
	movl	%eax, %edi
	movl	$1, %eax
	movl	%eax, %esi
	callq	g_malloc0_n
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB4_4:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_7 Depth 2
                                        #     Child Loop BB4_12 Depth 2
	cmpl	$100, -4(%rbp)
	jge	.LBB4_19
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB4_4 Depth=1
	movl	-4(%rbp), %eax
	imull	-48(%rbp), %eax
	imull	$3, %eax, %eax
	movl	%eax, -52(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB4_17
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB4_4 Depth=1
	movl	$0, -8(%rbp)
.LBB4_7:                                # %for.cond.18
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-8(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB4_10
# BB#8:                                 # %for.body.22
                                        #   in Loop: Header=BB4_7 Depth=2
	movl	-52(%rbp), %eax
	imull	$3, -8(%rbp), %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rsi
	movb	(%rsi,%rdx), %dil
	movslq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movb	%dil, (%rsi,%rdx)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB4_7 Depth=2
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB4_7
.LBB4_10:                               # %for.end
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	paper_invert, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	je	.LBB4_16
# BB#11:                                # %if.then.29
                                        #   in Loop: Header=BB4_4 Depth=1
	movl	$0, -8(%rbp)
.LBB4_12:                               # %for.cond.30
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-8(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB4_15
# BB#13:                                # %for.body.34
                                        #   in Loop: Header=BB4_12 Depth=2
	movl	$255, %eax
	movslq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	subl	%esi, %eax
	movb	%al, %dil
	movslq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movb	%dil, (%rdx,%rcx)
# BB#14:                                # %for.inc.41
                                        #   in Loop: Header=BB4_12 Depth=2
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB4_12
.LBB4_15:                               # %for.end.43
                                        #   in Loop: Header=BB4_4 Depth=1
	jmp	.LBB4_16
.LBB4_16:                               # %if.end
                                        #   in Loop: Header=BB4_4 Depth=1
	jmp	.LBB4_17
.LBB4_17:                               # %if.end.44
                                        #   in Loop: Header=BB4_4 Depth=1
	jmp	.LBB4_18
.LBB4_18:                               # %for.inc.45
                                        #   in Loop: Header=BB4_4 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rcx
	addq	$100, %rcx
	movq	%rcx, -16(%rbp)
	jmp	.LBB4_4
.LBB4_19:                               # %for.end.47
	movq	paper_preview, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$100, %edx
	movl	$2, %r9d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -108(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-108(%rbp), %ecx        # 4-byte Reload
	movl	-108(%rbp), %r8d        # 4-byte Reload
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$100, 8(%rsp)
	callq	gimp_preview_area_draw
	leaq	-48(%rbp), %rdi
	callq	ppm_kill
	movq	-24(%rbp), %rdi
	callq	g_free
	movq	paper_preview, %rdi
	callq	gtk_widget_queue_draw
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	paper_update_preview, .Lfunc_end4-paper_update_preview
	.cfi_endproc

	.type	paper_list,@object      # @paper_list
	.local	paper_list
	.comm	paper_list,8,8
	.type	paper_relief_adjust,@object # @paper_relief_adjust
	.local	paper_relief_adjust
	.comm	paper_relief_adjust,8,8
	.type	paper_scale_adjust,@object # @paper_scale_adjust
	.local	paper_scale_adjust
	.comm	paper_scale_adjust,8,8
	.type	paper_invert,@object    # @paper_invert
	.local	paper_invert
	.comm	paper_invert,8,8
	.type	paper_overlay,@object   # @paper_overlay
	.local	paper_overlay
	.comm	paper_overlay,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"P_aper"
	.size	.L.str, 7

	.type	paper_preview,@object   # @paper_preview
	.local	paper_preview
	.comm	paper_preview,8,8
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"_Invert"
	.size	.L.str.1, 8

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"clicked"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Inverts the Papers texture"
	.size	.L.str.3, 27

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"O_verlay"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Applies the paper as it is (without embossing it)"
	.size	.L.str.5, 50

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Scale:"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Specifies the scale of the texture (in percent of original file)"
	.size	.L.str.7, 65

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"value-changed"
	.size	.L.str.8, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Relief:"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Specifies the amount of embossing to apply to the image (in percent)"
	.size	.L.str.10, 69

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Paper"
	.size	.L.str.11, 6


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
