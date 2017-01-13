	.text
	.file	"general.bc"
	.globl	general_store
	.align	16, 0x90
	.type	general_store,@function
general_store:                          # @general_store
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
	subq	$64, %rsp
	movq	general_paint_edges, %rax
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movl	%eax, pcvals+536
	movq	general_dark_edge_adjust, %rsi
	movq	%rsi, -16(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value
	movsd	%xmm0, pcvals+72
	movq	general_tileable, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movl	%eax, pcvals+3376
	movq	general_drop_shadow, %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movl	%eax, pcvals+3392
	movq	general_shadow_adjust, %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value
	movsd	%xmm0, pcvals+3400
	movq	general_shadow_depth, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, pcvals+5068
	movq	general_shadow_blur, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, pcvals+5072
	movq	dev_thresh_adjust, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value
	movsd	%xmm0, pcvals+3440
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	general_store, .Lfunc_end0-general_store
	.cfi_endproc

	.globl	general_bg_type_input
	.align	16, 0x90
	.type	general_bg_type_input,@function
general_bg_type_input:                  # @general_bg_type_input
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
	movl	%edi, -4(%rbp)
	cmpl	$3, -4(%rbp)
	jle	.LBB1_2
# BB#1:                                 # %cond.true
	movl	$3, %eax
	movl	%eax, -8(%rbp)          # 4-byte Spill
	jmp	.LBB1_6
.LBB1_2:                                # %cond.false
	cmpl	$0, -4(%rbp)
	jge	.LBB1_4
# BB#3:                                 # %cond.true.2
	xorl	%eax, %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
	jmp	.LBB1_5
.LBB1_4:                                # %cond.false.3
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB1_5:                                # %cond.end
	movl	-12(%rbp), %eax         # 4-byte Reload
	movl	%eax, -8(%rbp)          # 4-byte Spill
.LBB1_6:                                # %cond.end.4
	movl	-8(%rbp), %eax          # 4-byte Reload
	popq	%rbp
	retq
.Lfunc_end1:
	.size	general_bg_type_input, .Lfunc_end1-general_bg_type_input
	.cfi_endproc

	.globl	general_restore
	.align	16, 0x90
	.type	general_restore,@function
general_restore:                        # @general_restore
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
	subq	$80, %rsp
	movl	pcvals+64, %edi
	callq	normalize_bg
	movslq	%eax, %rcx
	movq	general_bg_radio(,%rcx,8), %rcx
	movq	%rcx, -8(%rbp)          # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	general_paint_edges, %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	pcvals+536, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	general_dark_edge_adjust, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	pcvals+72, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	movq	general_shadow_adjust, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	pcvals+3400, %xmm0      # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	movq	general_drop_shadow, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	pcvals+3392, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	general_shadow_depth, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cvtsi2sdl	pcvals+5068, %xmm0
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	movq	general_shadow_blur, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cvtsi2sdl	pcvals+5072, %xmm0
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	movq	general_tileable, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	pcvals+3376, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	general_color_button, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$pcvals, %rcx
	addq	$504, %rcx              # imm = 0x1F8
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_color_button_set_color
	movq	dev_thresh_adjust, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	pcvals+3440, %xmm0      # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	general_restore, .Lfunc_end2-general_restore
	.cfi_endproc

	.align	16, 0x90
	.type	normalize_bg,@function
normalize_bg:                           # @normalize_bg
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
	movl	%edi, -4(%rbp)
	cmpl	$0, img_has_alpha
	jne	.LBB3_3
# BB#1:                                 # %land.lhs.true
	cmpl	$3, -4(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %cond.true
	movl	$1, %eax
	movl	%eax, -8(%rbp)          # 4-byte Spill
	jmp	.LBB3_4
.LBB3_3:                                # %cond.false
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)          # 4-byte Spill
.LBB3_4:                                # %cond.end
	movl	-8(%rbp), %eax          # 4-byte Reload
	popq	%rbp
	retq
.Lfunc_end3:
	.size	normalize_bg, .Lfunc_end3-normalize_bg
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
.LCPI4_1:
	.quad	4576918229304087675     # double 0.01
.LCPI4_2:
	.quad	4636666922610458624     # double 99
.LCPI4_3:
	.quad	4617315517961601024     # double 5
.LCPI4_4:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.globl	create_generalpage
	.align	16, 0x90
	.type	create_generalpage,@function
create_generalpage:                     # @create_generalpage
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
	pushq	%r14
	pushq	%rbx
	subq	$768, %rsp              # imm = 0x300
.Ltmp15:
	.cfi_offset %rbx, -32
.Ltmp16:
	.cfi_offset %r14, -24
	movabsq	$.L.str, %rax
	movq	%rdi, -24(%rbp)
	movq	$0, -104(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movl	$1, %edi
	movl	$12, %esi
	movq	%rax, -72(%rbp)
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.1, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -88(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	movl	-124(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.2, %rdi
	movq	-48(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.3, %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %esi
	leaq	-104(%rbp), %r8
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_general_button
	movabsq	$.L.str.4, %rdi
	movq	-48(%rbp), %rcx
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.5, %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$2, %esi
	leaq	-104(%rbp), %r8
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	-176(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_general_button
	xorl	%edi, %edi
	movl	$6, %esi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.6, %rdi
	movq	-56(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.7, %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	leaq	-104(%rbp), %r8
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	-208(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_general_button
	movabsq	$.L.str.8, %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$30, %esi
	movl	$20, %edx
	movabsq	$pcvals, %rcx
	addq	$504, %rcx              # imm = 0x1F8
	xorl	%r8d, %r8d
	movq	%rax, %rdi
	callq	gimp_color_button_new
	movabsq	$.L.str.9, %rsi
	movabsq	$select_color, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	%rax, general_color_button
	movq	general_color_button, %rax
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-224(%rbp), %rcx        # 8-byte Reload
	movq	-224(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.10, %rsi
	movabsq	$gimp_color_button_get_color, %rcx
	movabsq	$pcvals, %rdx
	addq	$504, %rdx              # imm = 0x1F8
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	general_color_button, %rdi
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	general_color_button, %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	general_color_button, %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.11, %rdi
	movq	-48(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.12, %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$3, %esi
	leaq	-104(%rbp), %r8
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	-272(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_general_button
	movq	%rax, -80(%rbp)
	cmpl	$0, img_has_alpha
	jne	.LBB4_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movq	-80(%rbp), %rdi
	callq	gtk_widget_set_sensitive
.LBB4_2:                                # %if.end
	movslq	pcvals+64, %rax
	movq	general_bg_radio(,%rax,8), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	xorl	%edi, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -292(%rbp)        # 4-byte Spill
	movl	-292(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -308(%rbp)        # 4-byte Spill
	movl	-308(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.13, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_label
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, general_paint_edges
	movq	-40(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -324(%rbp)        # 4-byte Spill
	movl	-324(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.14, %rdi
	movq	-80(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	-80(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	pcvals+536, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movabsq	$.L.str.15, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_label
	movq	%rax, -80(%rbp)
	movq	%rax, general_tileable
	movq	-40(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -356(%rbp)        # 4-byte Spill
	movl	-356(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.16, %rdi
	movq	-80(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	-80(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	pcvals+3376, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movabsq	$.L.str.17, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_label
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, general_drop_shadow
	movq	-40(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -388(%rbp)        # 4-byte Spill
	movl	-388(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.18, %rdi
	movq	-80(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	-80(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	pcvals+3392, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movl	$5, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-96(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-32(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -436(%rbp)        # 4-byte Spill
	movl	-436(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movq	-96(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.19, %rdi
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.20, %rdi
	movsd	pcvals+72, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -464(%rbp)        # 8-byte Spill
	movsd	%xmm0, -472(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$150, %r8d
	movl	$6, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_4, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %edx
	movl	$1, %r10d
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -480(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -484(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	-464(%rbp), %rcx        # 8-byte Reload
	movsd	-472(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -496(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-496(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-496(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-496(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -500(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movq	%rax, general_dark_edge_adjust
	movq	-96(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.21, %rdi
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.22, %rdi
	movsd	pcvals+3400, %xmm0      # xmm0 = mem[0],zero
	movq	%rax, -528(%rbp)        # 8-byte Spill
	movsd	%xmm0, -536(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$150, %r8d
	movl	$6, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_4, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_0, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %r10d
	xorl	%r11d, %r11d
	movl	%r11d, %ecx
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	-528(%rbp), %rbx        # 8-byte Reload
	movq	%rcx, -544(%rbp)        # 8-byte Spill
	movq	%rbx, %rcx
	movsd	-536(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -552(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-552(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-552(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-552(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -556(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movq	%rax, general_shadow_adjust
	movq	-96(%rbp), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.23, %rdi
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.24, %rdi
	cvtsi2sdl	pcvals+5068, %xmm0
	movq	%rax, -584(%rbp)        # 8-byte Spill
	movsd	%xmm0, -592(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	movl	$150, %r8d
	movl	$6, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_0, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_3, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r10d
	xorl	%r11d, %r11d
	movl	%r11d, %ecx
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	-584(%rbp), %rbx        # 8-byte Reload
	movq	%rcx, -600(%rbp)        # 8-byte Spill
	movq	%rbx, %rcx
	movsd	-592(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -608(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-608(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-608(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-608(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -612(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movq	%rax, general_shadow_depth
	movq	-96(%rbp), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.25, %rdi
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.26, %rdi
	cvtsi2sdl	pcvals+5072, %xmm0
	movq	%rax, -640(%rbp)        # 8-byte Spill
	movsd	%xmm0, -648(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$3, %edx
	movl	$150, %r8d
	movl	$6, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_0, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_3, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r10d
	xorl	%r11d, %r11d
	movl	%r11d, %ecx
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	-640(%rbp), %rbx        # 8-byte Reload
	movq	%rcx, -656(%rbp)        # 8-byte Spill
	movq	%rbx, %rcx
	movsd	-648(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -664(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-664(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-664(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-664(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -668(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movq	%rax, general_shadow_blur
	movq	-96(%rbp), %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.27, %rdi
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.28, %rdi
	movsd	pcvals+3440, %xmm0      # xmm0 = mem[0],zero
	movq	%rax, -696(%rbp)        # 8-byte Spill
	movsd	%xmm0, -704(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$4, %edx
	movl	$150, %r8d
	movl	$6, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero
	movl	$2, %r10d
	movl	$1, %r11d
	xorl	%r14d, %r14d
	movl	%r14d, %ecx
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	-696(%rbp), %rbx        # 8-byte Reload
	movq	%rcx, -712(%rbp)        # 8-byte Spill
	movq	%rbx, %rcx
	movsd	-704(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm0, -720(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-720(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm1, -728(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm1
	movsd	-728(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-728(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-720(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-720(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -732(%rbp)       # 4-byte Spill
	movl	%r11d, -736(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	xorl	%edx, %edx
	movl	%edx, %ecx
	movq	%rax, dev_thresh_adjust
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	callq	gtk_notebook_append_page_menu
	movl	%eax, -740(%rbp)        # 4-byte Spill
	addq	$768, %rsp              # imm = 0x300
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	create_generalpage, .Lfunc_end4-create_generalpage
	.cfi_endproc

	.align	16, 0x90
	.type	create_general_button,@function
create_general_button:                  # @create_general_button
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movabsq	$general_bg_callback, %rax
	movabsq	$general_bg_radio, %r9
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %r8
	movq	-40(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	create_radio_button
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	create_general_button, .Lfunc_end5-create_general_button
	.cfi_endproc

	.align	16, 0x90
	.type	select_color,@function
select_color:                           # @select_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	general_bg_radio, %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	select_color, .Lfunc_end6-select_color
	.cfi_endproc

	.align	16, 0x90
	.type	general_bg_callback,@function
general_bg_callback:                    # @general_bg_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	%esi, %eax
	movl	%eax, %edi
	callq	normalize_bg
	movl	%eax, pcvals+64
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	general_bg_callback, .Lfunc_end7-general_bg_callback
	.cfi_endproc

	.type	general_paint_edges,@object # @general_paint_edges
	.local	general_paint_edges
	.comm	general_paint_edges,8,8
	.type	general_dark_edge_adjust,@object # @general_dark_edge_adjust
	.local	general_dark_edge_adjust
	.comm	general_dark_edge_adjust,8,8
	.type	general_tileable,@object # @general_tileable
	.local	general_tileable
	.comm	general_tileable,8,8
	.type	general_drop_shadow,@object # @general_drop_shadow
	.local	general_drop_shadow
	.comm	general_drop_shadow,8,8
	.type	general_shadow_adjust,@object # @general_shadow_adjust
	.local	general_shadow_adjust
	.comm	general_shadow_adjust,8,8
	.type	general_shadow_depth,@object # @general_shadow_depth
	.local	general_shadow_depth
	.comm	general_shadow_depth,8,8
	.type	general_shadow_blur,@object # @general_shadow_blur
	.local	general_shadow_blur
	.comm	general_shadow_blur,8,8
	.type	dev_thresh_adjust,@object # @dev_thresh_adjust
	.local	dev_thresh_adjust
	.comm	dev_thresh_adjust,8,8
	.type	general_bg_radio,@object # @general_bg_radio
	.local	general_bg_radio
	.comm	general_bg_radio,32,16
	.type	general_color_button,@object # @general_color_button
	.local	general_color_button
	.comm	general_color_button,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"_General"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Background"
	.size	.L.str.1, 11

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Keep original"
	.size	.L.str.2, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Preserve the original image as a background"
	.size	.L.str.3, 44

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"From paper"
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Copy the texture of the selected paper as a background"
	.size	.L.str.5, 55

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Solid"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Solid colored background"
	.size	.L.str.7, 25

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Color"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"clicked"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"color-changed"
	.size	.L.str.10, 14

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Transparent"
	.size	.L.str.11, 12

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Use a transparent background; Only the strokes painted will be visible"
	.size	.L.str.12, 71

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Paint edges"
	.size	.L.str.13, 12

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Selects if to place strokes all the way out to the edges of the image"
	.size	.L.str.14, 70

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Tileable"
	.size	.L.str.15, 9

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Selects if the resulting image should be seamlessly tileable"
	.size	.L.str.16, 61

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Drop shadow"
	.size	.L.str.17, 12

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Adds a shadow effect to each brush stroke"
	.size	.L.str.18, 42

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Edge darken:"
	.size	.L.str.19, 13

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"How much to \"darken\" the edges of each brush stroke"
	.size	.L.str.20, 52

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Shadow darken:"
	.size	.L.str.21, 15

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"How much to \"darken\" the drop shadow"
	.size	.L.str.22, 37

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Shadow depth:"
	.size	.L.str.23, 14

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"The depth of the drop shadow, i.e. how far apart from the object it should be"
	.size	.L.str.24, 78

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Shadow blur:"
	.size	.L.str.25, 13

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"How much to blur the drop shadow"
	.size	.L.str.26, 33

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Deviation threshold:"
	.size	.L.str.27, 21

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"A bailout-value for adaptive selections"
	.size	.L.str.28, 40


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
