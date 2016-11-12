	.text
	.file	"maze-dialog.bc"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1056964608              # float 0.5
	.text
	.globl	maze_dialog
	.align	16, 0x90
	.type	maze_dialog,@function
maze_dialog:                            # @maze_dialog
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$632, %rsp              # imm = 0x278
.Ltmp3:
	.cfi_offset %rbx, -56
.Ltmp4:
	.cfi_offset %r12, -48
.Ltmp5:
	.cfi_offset %r13, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
	movabsq	$.L.str, %rdi
	xorl	%esi, %esi
	movl	$0, -136(%rbp)
	callq	gimp_ui_init
	movabsq	$.L.str.1, %rdi
	callq	gettext
	movabsq	$.L.str.2, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.3, %r9
	movabsq	$.L.str.4, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.5, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -148(%rbp)        # 4-byte Spill
	movl	%r10d, -152(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-48(%rbp), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-48(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	movl	-196(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movabsq	$.L.str.6, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -120(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	movl	$6, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-72(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-120(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	callq	gtk_size_group_new
	movabsq	$.L.str.7, %rdi
	movq	%rax, -128(%rbp)
	movq	-72(%rbp), %rax
	movl	-136(%rbp), %edx
	movl	%edx, -236(%rbp)        # 4-byte Spill
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movabsq	$mvals, %r8
	movl	$1, %r9d
	movabsq	$height_width_callback, %rdi
	leaq	-96(%rbp), %r11
	movl	$4, %ecx
	movl	sel_w, %edx
	movq	%rax, -256(%rbp)        # 8-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movq	-248(%rbp), %r14        # 8-byte Reload
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movl	-236(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, %edx
	movq	-256(%rbp), %rcx        # 8-byte Reload
	movl	%eax, (%rsp)
	movl	$1, 8(%rsp)
	movq	-264(%rbp), %r15        # 8-byte Reload
	movq	%r15, 16(%rsp)
	movq	%r11, 24(%rsp)
	callq	entscale_int_new
	movabsq	$sel_w, %rdi
	leaq	-96(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movl	-136(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -136(%rbp)
	movq	-96(%rbp), %rsi
	callq	divbox_new
	movabsq	$buffer, %rdi
	movl	$128, %r9d
	movl	%r9d, %esi
	movabsq	$.L.str.8, %rdx
	movq	%rax, -112(%rbp)
	movl	sel_w, %eax
	movq	%rdx, -272(%rbp)        # 8-byte Spill
	cltd
	idivl	mvals
	movq	-272(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, %rdx
	movl	%eax, %ecx
	movb	$0, %al
	callq	g_snprintf
	movq	-96(%rbp), %rdx
	movl	%eax, -276(%rbp)        # 4-byte Spill
	movq	%rdx, -288(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$buffer, %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	movq	-72(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rdi
	movl	-136(%rbp), %edx
	movl	%edx, -300(%rbp)        # 4-byte Spill
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movss	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-112(%rbp), %r8
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movl	-300(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movq	-72(%rbp), %rcx
	movq	%rax, -320(%rbp)        # 8-byte Spill
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %edx
	movl	-136(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	movabsq	$.L.str.10, %rdi
	movl	-136(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -136(%rbp)
	movq	-72(%rbp), %rax
	movl	-136(%rbp), %edx
	movl	%edx, -332(%rbp)        # 4-byte Spill
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movabsq	$mvals, %rcx
	addq	$4, %rcx
	movl	$1, %r9d
	movabsq	$height_width_callback, %rdi
	leaq	-104(%rbp), %r8
	movl	$4, %edx
	movl	sel_h, %r10d
	movq	%rax, -352(%rbp)        # 8-byte Spill
	movl	%r10d, %eax
	movl	%edx, -356(%rbp)        # 4-byte Spill
	cltd
	movl	-356(%rbp), %r10d       # 4-byte Reload
	idivl	%r10d
	movq	-344(%rbp), %r11        # 8-byte Reload
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movl	-332(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, %edx
	movq	-352(%rbp), %r14        # 8-byte Reload
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	movq	%r14, %rcx
	movq	-376(%rbp), %r15        # 8-byte Reload
	movq	%r8, -384(%rbp)         # 8-byte Spill
	movq	%r15, %r8
	movl	%eax, (%rsp)
	movl	$1, 8(%rsp)
	movq	-368(%rbp), %r12        # 8-byte Reload
	movq	%r12, 16(%rsp)
	movq	-384(%rbp), %r13        # 8-byte Reload
	movq	%r13, 24(%rsp)
	callq	entscale_int_new
	movabsq	$sel_h, %rdi
	leaq	-104(%rbp), %rdx
	movq	%rax, -104(%rbp)
	movl	-136(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -136(%rbp)
	movq	-104(%rbp), %rsi
	callq	divbox_new
	movabsq	$buffer, %rdi
	movl	$128, %r9d
	movl	%r9d, %esi
	movabsq	$.L.str.8, %rdx
	movq	%rax, -112(%rbp)
	movl	sel_h, %eax
	movq	%rdx, -392(%rbp)        # 8-byte Spill
	cltd
	idivl	mvals+4
	movq	-392(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, %rdx
	movl	%eax, %ecx
	movb	$0, %al
	callq	g_snprintf
	movq	-104(%rbp), %rdx
	movl	%eax, -396(%rbp)        # 4-byte Spill
	movq	%rdx, -408(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$buffer, %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	movq	-72(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rdi
	movl	-136(%rbp), %edx
	movl	%edx, -420(%rbp)        # 4-byte Spill
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movss	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-112(%rbp), %r8
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movl	-420(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movq	-72(%rbp), %rcx
	movq	%rax, -440(%rbp)        # 8-byte Spill
	movq	%rcx, -448(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %edx
	movl	-136(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	movl	-136(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -136(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$.L.str.11, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -120(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -460(%rbp)        # 4-byte Spill
	movl	-460(%rbp), %ecx        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movl	$3, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-80(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-64(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -500(%rbp)        # 4-byte Spill
	movl	-500(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$mvals, %rax
	movq	%rax, %rsi
	addq	$8, %rsi
	addq	$28, %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	gimp_random_seed_new
	movq	%rax, -112(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rdi
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movss	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-112(%rbp), %r8
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.13, %rdi
	movl	mvals+24, %r8d
	movq	%rax, -528(%rbp)        # 8-byte Spill
	movl	%r8d, -532(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.14, %rdi
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edi, %edi
	xorl	%edx, %edx
	movl	%edx, %esi
	movabsq	$gimp_radio_button_update, %rcx
	movabsq	$mvals, %r11
	addq	$24, %r11
	movl	$1, %edx
	movl	%edx, -548(%rbp)        # 4-byte Spill
	movq	%rcx, %rdx
	movq	%r11, %rcx
	movl	-532(%rbp), %r8d        # 4-byte Reload
	movq	-544(%rbp), %r9         # 8-byte Reload
	movl	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	callq	gimp_int_radio_group_new
	movq	%rax, -120(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movabsq	$.L.str.15, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_label
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	mvals+12, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movabsq	$.L.str.16, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$mvals, %rdi
	addq	$12, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-88(%rbp), %r11
	movq	%rdi, -576(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-576(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-64(%rbp), %rcx
	movq	%rax, -584(%rbp)        # 8-byte Spill
	movq	%rcx, -592(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_label_new
	movq	%rax, msg_label
	movq	msg_label, %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %esi
	movl	$2, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_label_set_attributes
	movq	-56(%rbp), %rdi
	movq	%rdi, -608(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	msg_label, %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -612(%rbp)        # 4-byte Spill
	movl	-612(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show_all
	movq	-48(%rbp), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -132(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-132(%rbp), %eax
	addq	$632, %rsp              # imm = 0x278
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	maze_dialog, .Lfunc_end0-maze_dialog
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_0:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	entscale_int_new,@function
entscale_int_new:                       # @entscale_int_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$320, %rsp              # imm = 0x140
.Ltmp11:
	.cfi_offset %rbx, -48
.Ltmp12:
	.cfi_offset %r12, -40
.Ltmp13:
	.cfi_offset %r14, -32
.Ltmp14:
	.cfi_offset %r15, -24
	movq	40(%rbp), %rax
	movq	32(%rbp), %r10
	movl	24(%rbp), %r11d
	movl	16(%rbp), %ebx
	movl	$1, %r14d
	movl	%r14d, %r15d
	movl	$40, %r14d
	movl	%r14d, %r12d
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movl	%r9d, -68(%rbp)
	movl	%ebx, -72(%rbp)
	movl	%r11d, -76(%rbp)
	movq	%r10, -88(%rbp)
	movq	%rax, -96(%rbp)
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	g_malloc_n
	movq	%rax, -104(%rbp)
	movq	-56(%rbp), %rdi
	callq	gtk_label_new
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI1_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movl	-76(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	%edx, 16(%rax)
	cmpl	$0, -76(%rbp)
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -148(%rbp)
	jmp	.LBB1_9
.LBB1_2:                                # %if.else
	movq	-64(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-68(%rbp), %ecx
	jge	.LBB1_4
# BB#3:                                 # %cond.true
	movl	-68(%rbp), %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB1_8
.LBB1_4:                                # %cond.false
	movq	-64(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-72(%rbp), %ecx
	jle	.LBB1_6
# BB#5:                                 # %cond.true.7
	movl	-72(%rbp), %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	jmp	.LBB1_7
.LBB1_6:                                # %cond.false.8
	movq	-64(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -168(%rbp)        # 4-byte Spill
.LBB1_7:                                # %cond.end
	movl	-168(%rbp), %eax        # 4-byte Reload
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB1_8:                                # %cond.end.9
	movl	-164(%rbp), %eax        # 4-byte Reload
	movl	%eax, -148(%rbp)
.LBB1_9:                                # %if.end
	movsd	.LCPI1_1, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm5, %xmm5
	cvtsi2sdl	-148(%rbp), %xmm1
	cvtsi2sdl	-68(%rbp), %xmm2
	cvtsi2sdl	-72(%rbp), %xmm3
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	movsd	-176(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-176(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	callq	gtk_adjustment_new
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edi, %edi
	movq	%rax, -144(%rbp)
	movq	-104(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-144(%rbp), %rsi
	callq	gtk_scale_new
	movl	$125, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movq	-136(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_scale_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_scale_set_draw_value
	callq	gtk_entry_new
	movl	$40, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, -128(%rbp)
	movq	-104(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-128(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movabsq	$buffer, %rdi
	movl	$128, %edx
	movl	%edx, %esi
	movabsq	$.L.str.8, %rdx
	movq	-64(%rbp), %rax
	movl	(%rax), %ecx
	movb	$0, %al
	callq	g_snprintf
	movq	-128(%rbp), %rdx
	movl	%eax, -196(%rbp)        # 4-byte Spill
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$buffer, %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-88(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-96(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.22, %rsi
	movq	-104(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.22, %rsi
	movq	-104(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
	movabsq	$.L.str.20, %rsi
	movabsq	$entscale_int_entry_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-128(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-216(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.23, %rsi
	movabsq	$entscale_int_scale_update, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-144(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-224(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.24, %rsi
	movabsq	$g_free, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-128(%rbp), %rdx
	movq	-104(%rbp), %rdi
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movl	$5, %esi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-112(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -276(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-276(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -280(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-280(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %ecx
	xorl	%edx, %edx
	movq	-120(%rbp), %rsi
	movl	-44(%rbp), %r8d
	movl	-44(%rbp), %r9d
	addl	$1, %r9d
	movl	-48(%rbp), %r10d
	movl	-48(%rbp), %r11d
	addl	$1, %r11d
	movq	%rax, %rdi
	movl	%edx, -292(%rbp)        # 4-byte Spill
	movl	%r8d, %edx
	movl	%ecx, -296(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	%r10d, %r8d
	movl	%r11d, %r9d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-40(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$5, %ecx
	movl	$4, %edx
	xorl	%r8d, %r8d
	movq	-112(%rbp), %rsi
	movl	-44(%rbp), %r9d
	addl	$1, %r9d
	movl	-44(%rbp), %r10d
	addl	$2, %r10d
	movl	-48(%rbp), %r11d
	movl	-48(%rbp), %ebx
	addl	$1, %ebx
	movq	%rax, %rdi
	movl	%edx, -308(%rbp)        # 4-byte Spill
	movl	%r9d, %edx
	movl	%ecx, -312(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	%r8d, -316(%rbp)        # 4-byte Spill
	movl	%r11d, %r8d
	movl	%ebx, %r9d
	movl	$5, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	movq	-128(%rbp), %rdi
	callq	gtk_widget_show
	movq	-136(%rbp), %rdi
	callq	gtk_widget_show
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movq	-128(%rbp), %rax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	entscale_int_new, .Lfunc_end1-entscale_int_new
	.cfi_endproc

	.align	16, 0x90
	.type	height_width_callback,@function
height_width_callback:                  # @height_width_callback
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
	subq	$112, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.18, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movabsq	$buffer, %rdi
	movl	$128, %edx
	movl	%edx, %esi
	movabsq	$.L.str.8, %rdx
	movl	(%rax), %r8d
	movl	%r8d, -24(%rbp)
	movl	-24(%rbp), %eax
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	cltd
	idivl	-4(%rbp)
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %ecx
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%r9, %rdx
	movb	$0, %al
	callq	g_snprintf
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.19, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movabsq	$entscale_int_entry_update, %rdx
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movl	%ecx, %edx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$buffer, %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$entscale_int_entry_update, %rax
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-32(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -92(%rbp)         # 4-byte Spill
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	height_width_callback, .Lfunc_end2-height_width_callback
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_0:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	divbox_new,@function
divbox_new:                             # @divbox_new
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
	subq	$192, %rsp
	movss	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movss	%xmm0, -76(%rbp)        # 4-byte Spill
	movss	-76(%rbp), %xmm2        # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	%xmm1, -80(%rbp)        # 4-byte Spill
	movaps	%xmm2, %xmm1
	movss	-80(%rbp), %xmm2        # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	-80(%rbp), %xmm3        # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	callq	gtk_alignment_new
	xorl	%ecx, %ecx
	movq	%rax, -32(%rbp)
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movl	$2, %edi
	movl	$1, %esi
	callq	gtk_arrow_new
	movl	$3, %edi
	movl	$1, %esi
	movq	%rax, -48(%rbp)
	callq	gtk_arrow_new
	movq	%rax, -56(%rbp)
	callq	gtk_button_new
	movq	%rax, -64(%rbp)
	callq	gtk_button_new
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.17, %rsi
	movq	$-1, %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.17, %rsi
	movl	$1, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
	callq	gtk_entry_new
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.18, %rsi
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.19, %rsi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
	movq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-72(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movl	$75, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_set_size_request
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	movl	-116(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$2, %r8d
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	movl	-140(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show_all
	movabsq	$.L.str.16, %rsi
	movabsq	$div_button_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %r10
	movq	(%r10), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.16, %rsi
	movabsq	$div_button_callback, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.20, %rsi
	movabsq	$div_entry_callback, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-32(%rbp), %rcx
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movq	%rcx, %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	divbox_new, .Lfunc_end3-divbox_new
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	div_button_callback,@function
div_button_callback:                    # @div_button_callback
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
	subq	$80, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.17, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	$80, %edx
	movl	%edx, %esi
	movl	%eax, %edx
	movl	%edx, -36(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.18, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	(%rax), %edx
	movl	%edx, -28(%rbp)
	cmpl	$0, mvals+12
	je	.LBB4_3
# BB#1:                                 # %land.lhs.true
	movl	-28(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB4_3
# BB#2:                                 # %if.then
	movabsq	$.L.str.21, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	maze_message
	jmp	.LBB4_52
.LBB4_3:                                # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	atoi
	movl	%eax, -32(%rbp)
	cmpl	$3, -32(%rbp)
	jg	.LBB4_8
# BB#4:                                 # %if.then.12
	cmpl	$0, mvals+12
	je	.LBB4_6
# BB#5:                                 # %cond.true
	xorl	%eax, %eax
	movl	$1, %ecx
	movl	-28(%rbp), %edx
	movl	-28(%rbp), %esi
	andl	$1, %esi
	cmpl	$0, %esi
	cmovnel	%ecx, %eax
	subl	%eax, %edx
	movl	%edx, -52(%rbp)         # 4-byte Spill
	jmp	.LBB4_7
.LBB4_6:                                # %cond.false
	movl	$1, %eax
	xorl	%ecx, %ecx
	movl	-28(%rbp), %edx
	movl	-28(%rbp), %esi
	andl	$1, %esi
	cmpl	$0, %esi
	cmovnel	%ecx, %eax
	subl	%eax, %edx
	movl	%edx, -52(%rbp)         # 4-byte Spill
.LBB4_7:                                # %cond.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -32(%rbp)
	jmp	.LBB4_11
.LBB4_8:                                # %if.else
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jle	.LBB4_10
# BB#9:                                 # %if.then.23
	movl	$5, %eax
	movl	$6, %ecx
	cmpl	$0, mvals+12
	cmovnel	%ecx, %eax
	movl	%eax, -32(%rbp)
.LBB4_10:                               # %if.end.26
	jmp	.LBB4_11
.LBB4_11:                               # %if.end.27
	movl	-36(%rbp), %eax
	cmpl	$0, mvals+12
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB4_13
# BB#12:                                # %cond.true.29
	xorl	%eax, %eax
	movl	$1, %ecx
	movl	-32(%rbp), %edx
	andl	$1, %edx
	cmpl	$0, %edx
	cmovnel	%ecx, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB4_14
.LBB4_13:                               # %cond.false.33
	movl	$1, %eax
	xorl	%ecx, %ecx
	movl	-32(%rbp), %edx
	andl	$1, %edx
	cmpl	$0, %edx
	cmovnel	%ecx, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB4_14:                               # %cond.end.37
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	-56(%rbp), %ecx         # 4-byte Reload
	imull	%eax, %ecx
	addl	-32(%rbp), %ecx
	movl	%ecx, -32(%rbp)
	cmpl	$0, mvals+12
	je	.LBB4_29
# BB#15:                                # %if.then.40
	cmpl	$0, -36(%rbp)
	jle	.LBB4_22
# BB#16:                                # %if.then.43
	jmp	.LBB4_17
.LBB4_17:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jle	.LBB4_19
# BB#18:                                # %if.then.47
                                        #   in Loop: Header=BB4_17 Depth=1
	movl	$4, -32(%rbp)
.LBB4_19:                               # %if.end.48
                                        #   in Loop: Header=BB4_17 Depth=1
	jmp	.LBB4_20
.LBB4_20:                               # %do.cond
                                        #   in Loop: Header=BB4_17 Depth=1
	movl	-28(%rbp), %eax
	cltd
	idivl	-32(%rbp)
	cmpl	$0, %edx
	jne	.LBB4_17
# BB#21:                                # %do.end
	jmp	.LBB4_28
.LBB4_22:                               # %if.else.50
	jmp	.LBB4_23
.LBB4_23:                               # %do.body.51
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -32(%rbp)
	cmpl	$4, -32(%rbp)
	jge	.LBB4_25
# BB#24:                                # %if.then.55
                                        #   in Loop: Header=BB4_23 Depth=1
	movl	-28(%rbp), %eax
	movl	-28(%rbp), %ecx
	andl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -32(%rbp)
.LBB4_25:                               # %if.end.58
                                        #   in Loop: Header=BB4_23 Depth=1
	jmp	.LBB4_26
.LBB4_26:                               # %do.cond.59
                                        #   in Loop: Header=BB4_23 Depth=1
	movl	-28(%rbp), %eax
	cltd
	idivl	-32(%rbp)
	cmpl	$0, %edx
	jne	.LBB4_23
# BB#27:                                # %do.end.62
	jmp	.LBB4_28
.LBB4_28:                               # %if.end.63
	jmp	.LBB4_43
.LBB4_29:                               # %if.else.64
	cmpl	$0, -36(%rbp)
	jle	.LBB4_36
# BB#30:                                # %if.then.67
	jmp	.LBB4_31
.LBB4_31:                               # %do.body.68
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -32(%rbp)
# BB#32:                                # %do.cond.70
                                        #   in Loop: Header=BB4_31 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movl	-28(%rbp), %eax
	cltd
	idivl	-32(%rbp)
	cvtsi2sdl	%edx, %xmm1
	movl	-28(%rbp), %edx
	movl	%edx, %eax
	cltd
	idivl	-32(%rbp)
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm0, %xmm2
	ucomisd	%xmm2, %xmm1
	movb	%cl, -61(%rbp)          # 1-byte Spill
	jbe	.LBB4_34
# BB#33:                                # %land.rhs
                                        #   in Loop: Header=BB4_31 Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	setl	%cl
	movb	%cl, -61(%rbp)          # 1-byte Spill
.LBB4_34:                               # %land.end
                                        #   in Loop: Header=BB4_31 Depth=1
	movb	-61(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB4_31
# BB#35:                                # %do.end.79
	jmp	.LBB4_42
.LBB4_36:                               # %if.else.80
	jmp	.LBB4_37
.LBB4_37:                               # %do.body.81
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -32(%rbp)
# BB#38:                                # %do.cond.83
                                        #   in Loop: Header=BB4_37 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movl	-28(%rbp), %eax
	cltd
	idivl	-32(%rbp)
	cvtsi2sdl	%edx, %xmm1
	movl	-28(%rbp), %edx
	movl	%edx, %eax
	cltd
	idivl	-32(%rbp)
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm0, %xmm2
	ucomisd	%xmm2, %xmm1
	movb	%cl, -62(%rbp)          # 1-byte Spill
	jbe	.LBB4_40
# BB#39:                                # %land.rhs.91
                                        #   in Loop: Header=BB4_37 Depth=1
	cmpl	$5, -32(%rbp)
	setg	%al
	movb	%al, -62(%rbp)          # 1-byte Spill
.LBB4_40:                               # %land.end.94
                                        #   in Loop: Header=BB4_37 Depth=1
	movb	-62(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB4_37
# BB#41:                                # %do.end.95
	jmp	.LBB4_42
.LBB4_42:                               # %if.end.96
	jmp	.LBB4_43
.LBB4_43:                               # %if.end.97
	cmpl	$3, -32(%rbp)
	jg	.LBB4_48
# BB#44:                                # %if.then.100
	cmpl	$0, mvals+12
	je	.LBB4_46
# BB#45:                                # %cond.true.102
	xorl	%eax, %eax
	movl	$1, %ecx
	movl	-28(%rbp), %edx
	movl	-28(%rbp), %esi
	andl	$1, %esi
	cmpl	$0, %esi
	cmovnel	%ecx, %eax
	subl	%eax, %edx
	movl	%edx, -68(%rbp)         # 4-byte Spill
	jmp	.LBB4_47
.LBB4_46:                               # %cond.false.107
	movl	$1, %eax
	xorl	%ecx, %ecx
	movl	-28(%rbp), %edx
	movl	-28(%rbp), %esi
	andl	$1, %esi
	cmpl	$0, %esi
	cmovnel	%ecx, %eax
	subl	%eax, %edx
	movl	%edx, -68(%rbp)         # 4-byte Spill
.LBB4_47:                               # %cond.end.112
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -32(%rbp)
	jmp	.LBB4_51
.LBB4_48:                               # %if.else.114
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jle	.LBB4_50
# BB#49:                                # %if.then.117
	movl	$5, %eax
	movl	$4, %ecx
	cmpl	$0, mvals+12
	cmovnel	%ecx, %eax
	movl	%eax, -32(%rbp)
.LBB4_50:                               # %if.end.120
	jmp	.LBB4_51
.LBB4_51:                               # %if.end.121
	movabsq	$buffer, %rdi
	movl	$128, %eax
	movl	%eax, %esi
	movabsq	$.L.str.8, %rdx
	movl	-32(%rbp), %ecx
	movb	$0, %al
	callq	g_snprintf
	movq	-16(%rbp), %rdx
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$buffer, %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
.LBB4_52:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	div_button_callback, .Lfunc_end4-div_button_callback
	.cfi_endproc

	.align	16, 0x90
	.type	div_entry_callback,@function
div_entry_callback:                     # @div_entry_callback
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	%rax, %rdi
	callq	atoi
	movl	%eax, -20(%rbp)
	cmpl	$4, -20(%rbp)
	jge	.LBB5_2
# BB#1:                                 # %if.then
	jmp	.LBB5_3
.LBB5_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.18, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movabsq	$buffer, %rdi
	movl	$128, %edx
	movl	%edx, %esi
	movabsq	$.L.str.8, %rdx
	movl	(%rax), %r8d
	movl	%r8d, -28(%rbp)
	movl	-28(%rbp), %eax
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	cltd
	idivl	-20(%rbp)
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %ecx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	%r9, %rdx
	movb	$0, %al
	callq	g_snprintf
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.22, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$buffer, %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 24(%rdx)
.LBB5_3:                                # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	div_entry_callback, .Lfunc_end5-div_entry_callback
	.cfi_endproc

	.align	16, 0x90
	.type	maze_message,@function
maze_message:                           # @maze_message
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	msg_label, %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	maze_message, .Lfunc_end6-maze_message
	.cfi_endproc

	.align	16, 0x90
	.type	entscale_int_entry_update,@function
entscale_int_entry_update:              # @entscale_int_entry_update
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
	subq	$128, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.22, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	%rax, %rdi
	callq	atoi
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cvtsi2sdl	-40(%rbp), %xmm0
	movq	-32(%rbp), %rdi
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_lower
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB7_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	gtk_adjustment_get_lower
	cvttsd2si	%xmm0, %eax
	movl	%eax, -40(%rbp)
.LBB7_2:                                # %if.end
	cvtsi2sdl	-40(%rbp), %xmm0
	movq	-32(%rbp), %rdi
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_upper
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_4
# BB#3:                                 # %if.then.15
	movq	-32(%rbp), %rdi
	callq	gtk_adjustment_get_upper
	cvttsd2si	%xmm0, %eax
	movl	%eax, -40(%rbp)
.LBB7_4:                                # %if.end.18
	movq	-24(%rbp), %rax
	cmpl	$0, 16(%rax)
	je	.LBB7_6
# BB#5:                                 # %if.then.19
	movl	-40(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else
	movl	-36(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB7_7:                                # %if.end.20
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$entscale_int_scale_update, %rdx
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %r9
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-80(%rbp), %r10         # 8-byte Reload
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-88(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-32(%rbp), %rdi
	cvtsi2sdl	-40(%rbp), %xmm0
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gtk_adjustment_set_value
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$entscale_int_scale_update, %rdi
	movq	-32(%rbp), %r9
	movq	-16(%rbp), %r10
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movq	-24(%rbp), %rdi
	cmpq	$0, 24(%rdi)
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB7_9
# BB#8:                                 # %if.then.25
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx), %edi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rsi
	callq	*%rax
.LBB7_9:                                # %if.end.27
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	entscale_int_entry_update, .Lfunc_end7-entscale_int_entry_update
	.cfi_endproc

	.align	16, 0x90
	.type	entscale_int_scale_update,@function
entscale_int_scale_update:              # @entscale_int_scale_update
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
	subq	$112, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.22, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	cvttsd2si	%xmm0, %edx
	movl	%edx, -44(%rbp)
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$buffer, %rdi
	movl	$128, %edx
	movl	%edx, %esi
	movabsq	$.L.str.8, %rdx
	movq	%rax, -32(%rbp)
	movl	-44(%rbp), %ecx
	movb	$0, %al
	callq	g_snprintf
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movabsq	$entscale_int_entry_update, %rdx
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %r9
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movl	%ecx, %edx
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-72(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_block_matched
	movabsq	$buffer, %rsi
	movq	-32(%rbp), %rdi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	gtk_entry_set_text
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$entscale_int_entry_update, %rdi
	movq	-32(%rbp), %r9
	movq	-16(%rbp), %r10
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movq	-24(%rbp), %rdi
	cmpq	$0, 24(%rdi)
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	(%rcx), %edi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rsi
	callq	*%rax
.LBB8_2:                                # %if.end
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	entscale_int_scale_update, .Lfunc_end8-entscale_int_scale_update
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"maze"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Maze"
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-maze"
	.size	.L.str.2, 10

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"plug-in-maze"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gtk-cancel"
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gtk-ok"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Maze Size"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Width (pixels):"
	.size	.L.str.7, 16

	.type	buffer,@object          # @buffer
	.local	buffer
	.comm	buffer,128,16
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%d"
	.size	.L.str.8, 3

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Pieces:"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Height (pixels):"
	.size	.L.str.10, 17

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Algorithm"
	.size	.L.str.11, 10

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Seed:"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Depth first"
	.size	.L.str.13, 12

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Prim's algorithm"
	.size	.L.str.14, 17

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Tileable"
	.size	.L.str.15, 9

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"clicked"
	.size	.L.str.16, 8

	.type	msg_label,@object       # @msg_label
	.local	msg_label
	.comm	msg_label,8,8
	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"direction"
	.size	.L.str.17, 10

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"max"
	.size	.L.str.18, 4

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"friend"
	.size	.L.str.19, 7

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"changed"
	.size	.L.str.20, 8

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Selection size is not even.\nTileable maze won't work perfectly."
	.size	.L.str.21, 64

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"userdata"
	.size	.L.str.22, 9

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"value-changed"
	.size	.L.str.23, 14

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"destroy"
	.size	.L.str.24, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
