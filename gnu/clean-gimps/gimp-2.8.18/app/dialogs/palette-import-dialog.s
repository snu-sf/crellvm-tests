	.text
	.file	"palette-import-dialog.bc"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_1:
	.quad	4607182418800017408     # double 1
.LCPI0_2:
	.quad	4638707616191610880     # double 128
.LCPI0_3:
	.quad	4620693217682128896     # double 8
.LCPI0_4:
	.quad	4625196817309499392     # double 16
.LCPI0_5:
	.quad	4634204016564240384     # double 64
.LCPI0_6:
	.quad	4643211215818981376     # double 256
.LCPI0_7:
	.quad	4611686018427387904     # double 2
.LCPI0_8:
	.quad	4666723172467343360     # double 1.0E+4
.LCPI0_9:
	.quad	4621819117588971520     # double 10
	.text
	.globl	palette_import_dialog_new
	.align	16, 0x90
	.type	palette_import_dialog_new,@function
palette_import_dialog_new:              # @palette_import_dialog_new
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
	pushq	%r12
	pushq	%rbx
	subq	$1072, %rsp             # imm = 0x430
.Ltmp3:
	.cfi_offset %rbx, -48
.Ltmp4:
	.cfi_offset %r12, -40
.Ltmp5:
	.cfi_offset %r14, -32
.Ltmp6:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	$0, -128(%rbp)
# BB#1:                                 # %do.body
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -148(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-136(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -148(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -148(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.palette_import_dialog_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB0_16
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movq	-48(%rbp), %rdi
	callq	gimp_context_get_gradient
	movl	$152, %ecx
	movl	%ecx, %edi
	movq	%rax, -64(%rbp)
	callq	g_slice_alloc0
	movabsq	$.L.str.2, %rsi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-48(%rbp), %rdx
	callq	gimp_context_new
	movabsq	$.L.str.3, %rdi
	movq	-56(%rbp), %rdx
	movq	%rax, 16(%rdx)
	callq	gettext
	movabsq	$.L.str.4, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.5, %rdi
	movl	$4294967290, %r9d       # imm = 0xFFFFFFFA
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-176(%rbp), %r10        # 8-byte Reload
	movl	%r9d, -180(%rbp)        # 4-byte Spill
	movq	%r10, %r9
	movq	-160(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movl	$-6, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, %al
	callq	gimp_dialog_new
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$4294967291, %edx       # imm = 0xFFFFFFFB
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_dialog_add_button
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rdi
	movl	$4, %esi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_image_new_from_stock
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_button_set_image
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rsi
	movabsq	$palette_import_free, %rdi
	movq	-56(%rbp), %r8
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%r8, %rdx
	movq	-232(%rbp), %rcx        # 8-byte Reload
	callq	g_object_set_data_full
	movabsq	$.L.str.9, %rsi
	movabsq	$palette_import_response, %rax
	xorl	%ebx, %ebx
	movl	%ebx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-56(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-240(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	callq	gimp_gradient_get_type
	movabsq	$import_dialog_drop_callback, %rdx
	movq	-56(%rbp), %rcx
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dnd_viewable_dest_add
	movq	-56(%rbp), %rcx
	movq	(%rcx), %rdi
	movl	%eax, -260(%rbp)        # 4-byte Spill
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	callq	gimp_image_get_type
	movabsq	$import_dialog_drop_callback, %rdx
	movq	-56(%rbp), %rcx
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dnd_viewable_dest_add
	xorl	%edi, %edi
	movl	$12, %esi
	movl	%eax, -276(%rbp)        # 4-byte Spill
	callq	gtk_box_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.10, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -88(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -324(%rbp)        # 4-byte Spill
	movl	-324(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movl	$5, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-104(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-88(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.11, %rdi
	movq	-128(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_mnemonic
	movq	-56(%rbp), %rsi
	movq	%rax, 40(%rsi)
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	%rax, -128(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	$4, %r8d
	movq	-56(%rbp), %rsi
	movq	40(%rsi), %rsi
	movq	%rax, %rdi
	movl	%edx, -380(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-380(%rbp), %r9d        # 4-byte Reload
	movl	%ecx, -384(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	-384(%rbp), %ebx        # 4-byte Reload
	movl	%r8d, -388(%rbp)        # 4-byte Spill
	movl	%ebx, %r8d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-56(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.12, %rsi
	movabsq	$palette_import_grad_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	-56(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.13, %rdi
	movq	-128(%rbp), %rcx
	movq	%rax, -400(%rbp)        # 8-byte Spill
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_mnemonic
	movq	-56(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	%rax, -128(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %r9d
	movl	$2, %ebx
	movl	$4, %r14d
	movq	-56(%rbp), %rcx
	movq	48(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	movl	%ebx, %r9d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r14d, -428(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-56(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.12, %rsi
	movabsq	$palette_import_image_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	48(%rdi), %rdi
	movq	-56(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	48(%rcx), %rdi
	movq	-48(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	384(%rcx), %rcx
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gimp_container_is_empty
	cmpl	$0, %eax
	setne	%r15b
	xorb	$-1, %r15b
	andb	$1, %r15b
	movzbl	%r15b, %esi
	movq	-440(%rbp), %rdi        # 8-byte Reload
	callq	gtk_widget_set_sensitive
	movabsq	$.L.str.14, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	-56(%rbp), %rcx
	movq	%rax, 88(%rcx)
	movq	-56(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-104(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$2, %r9d
	movl	$3, %ebx
	movl	$4, %r14d
	xorl	%r12d, %r12d
	movq	-56(%rbp), %rcx
	movq	88(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	movl	%ebx, %r9d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r12d, -468(%rbp)       # 4-byte Spill
	movl	%r14d, -472(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-56(%rbp), %rax
	movq	88(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.12, %rsi
	movabsq	$palette_import_make_palette, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-56(%rbp), %rdi
	movq	88(%rdi), %rdi
	movq	-56(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.15, %rdi
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	-56(%rbp), %rcx
	movq	%rax, 96(%rcx)
	movq	-56(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-104(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$2, %ecx
	movl	$3, %r8d
	movl	$4, %r9d
	xorl	%ebx, %ebx
	movq	-56(%rbp), %rsi
	movq	96(%rsi), %rsi
	movq	%rax, %rdi
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%ebx, -500(%rbp)        # 4-byte Spill
	callq	gtk_table_attach
	movq	-56(%rbp), %rax
	movq	96(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.12, %rsi
	movabsq	$palette_import_make_palette, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-56(%rbp), %rdi
	movq	96(%rdi), %rdi
	movq	-56(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.16, %rdi
	movq	-128(%rbp), %rcx
	movq	%rax, -512(%rbp)        # 8-byte Spill
	movq	%rcx, -520(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_mnemonic
	movq	-56(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	%rax, -128(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$4, %r8d
	movl	$5, %r9d
	movq	-56(%rbp), %rsi
	movq	56(%rsi), %rsi
	movq	%rax, %rdi
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-56(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.12, %rsi
	movabsq	$palette_import_file_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	56(%rdi), %rdi
	movq	-56(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movl	$2, %edi
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gtk_size_group_new
	movq	%rax, -120(%rbp)
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	488(%rax), %rdi
	callq	gimp_data_factory_get_container
	movl	$24, %edx
	movl	$1, %ecx
	movq	-56(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_container_combo_box_new
	movq	-56(%rbp), %rsi
	movq	%rax, 64(%rsi)
	movq	-104(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %esi
	xorps	%xmm0, %xmm0
	movss	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-56(%rbp), %rdi
	movq	64(%rdi), %r8
	movq	%rax, %rdi
	movq	%rsi, -560(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	-560(%rbp), %rcx        # 8-byte Reload
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	-120(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	64(%rcx), %rsi
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gtk_size_group_add_widget
	movl	$24, %edx
	movl	$1, %ecx
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	384(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	16(%rax), %rsi
	callq	gimp_container_combo_box_new
	movq	-56(%rbp), %rsi
	movq	%rax, 72(%rsi)
	movq	-104(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$1, %ecx
	xorl	%edx, %edx
	movl	%edx, %edi
	xorps	%xmm0, %xmm0
	movss	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-56(%rbp), %r8
	movq	72(%r8), %r8
	movq	%rdi, -584(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %edx
	movq	-584(%rbp), %rax        # 8-byte Reload
	movl	%ecx, -588(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-588(%rbp), %r9d        # 4-byte Reload
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	-120(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	72(%rcx), %rsi
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gtk_size_group_add_widget
	movabsq	$.L.str.17, %rdi
	callq	gettext
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_file_chooser_button_new
	movq	-56(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$4, %edx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorps	%xmm0, %xmm0
	movss	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-56(%rbp), %rdi
	movq	80(%rdi), %r8
	movq	%rax, %rdi
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	-120(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	80(%rcx), %rsi
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gtk_size_group_add_widget
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$.L.str.18, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -88(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -628(%rbp)        # 4-byte Spill
	movl	-628(%rbp), %ecx        # 4-byte Reload
	movl	-628(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movl	$4, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-104(%rbp), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-88(%rbp), %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_entry_new
	movq	-56(%rbp), %rsi
	movq	%rax, 104(%rsi)
	movq	-56(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpq	$0, -64(%rbp)
	movq	%rax, -672(%rbp)        # 8-byte Spill
	je	.LBB0_14
# BB#13:                                # %cond.true
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -680(%rbp)        # 8-byte Spill
	jmp	.LBB0_15
.LBB0_14:                               # %cond.false
	movabsq	$.L.str.19, %rdi
	callq	gettext
	movq	%rax, -680(%rbp)        # 8-byte Spill
.LBB0_15:                               # %cond.end
	movq	-680(%rbp), %rax        # 8-byte Reload
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_entry_set_text
	movq	-104(%rbp), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.20, %rdi
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movss	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$2, %r9d
	movq	-56(%rbp), %rsi
	movq	104(%rsi), %r8
	movq	-696(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	-104(%rbp), %rcx
	movq	%rax, -704(%rbp)        # 8-byte Spill
	movq	%rcx, -712(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.21, %rdi
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movl	$5, %r9d
	movsd	.LCPI0_6, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_7, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI0_8, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI0_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI0_9, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -728(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	%xmm5, -736(%rbp)       # 8-byte Spill
	movsd	-736(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-744(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.22, %rsi
	movabsq	$palette_import_make_palette, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movl	$2, %r9d
	movq	-56(%rbp), %rdi
	movq	%rax, 112(%rdi)
	movq	-56(%rbp), %rax
	movq	112(%rax), %rax
	movq	-56(%rbp), %rdi
	movq	%rdi, -752(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-752(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-104(%rbp), %rcx
	movq	%rax, -760(%rbp)        # 8-byte Spill
	movq	%rcx, -768(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-768(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.23, %rdi
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movl	$5, %r9d
	movsd	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI0_5, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI0_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI0_3, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r10d
	xorl	%r11d, %r11d
	movl	%r11d, %ecx
	movq	-776(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -784(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm1, -792(%rbp)       # 8-byte Spill
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-792(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-792(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -796(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movq	%rax, -808(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-808(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.22, %rsi
	movabsq	$palette_import_columns_changed, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	%rax, 120(%rdi)
	movq	-56(%rbp), %rax
	movq	120(%rax), %rax
	movq	-56(%rbp), %rdi
	movq	%rdi, -816(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-816(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-104(%rbp), %rcx
	movq	%rax, -824(%rbp)        # 8-byte Spill
	movq	%rcx, -832(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-832(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.24, %rdi
	movq	%rax, -840(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$3, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movl	$5, %r9d
	movsd	.LCPI0_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI0_3, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r10d
	xorps	%xmm1, %xmm1
	xorl	%r11d, %r11d
	movl	%r11d, %ecx
	movq	-840(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -848(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -856(%rbp)       # 8-byte Spill
	movsd	-856(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -864(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-864(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-864(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -868(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movq	%rax, -880(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-880(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.22, %rsi
	movabsq	$palette_import_make_palette, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movl	$2, %r9d
	movq	-56(%rbp), %rdi
	movq	%rax, 128(%rdi)
	movq	-56(%rbp), %rax
	movq	128(%rax), %rax
	movq	-56(%rbp), %rdi
	movq	%rdi, -888(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-888(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.25, %rdi
	movq	%rax, -896(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-904(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-912(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	xorps	%xmm0, %xmm0
	movss	%xmm0, -916(%rbp)       # 4-byte Spill
	movss	-916(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	-916(%rbp), %xmm2       # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	-916(%rbp), %xmm3       # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	callq	gtk_alignment_new
	movq	%rax, -112(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-928(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -932(%rbp)        # 4-byte Spill
	movl	-932(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdi
	movq	%rdi, -944(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	%rax, -952(%rbp)        # 8-byte Spill
	callq	gimp_palette_get_type
	movl	$192, %ecx
	movl	$1, %r9d
	xorl	%edx, %edx
	movq	-944(%rbp), %rdi        # 8-byte Reload
	movq	-952(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -956(%rbp)        # 4-byte Spill
	movq	%rax, %rdx
	movl	%ecx, -960(%rbp)        # 4-byte Spill
	movl	-960(%rbp), %r8d        # 4-byte Reload
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	callq	gimp_view_new_full_by_types
	movq	-56(%rbp), %rdx
	movq	%rax, 136(%rdx)
	movq	-112(%rbp), %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-968(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rdx
	movq	136(%rdx), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-56(%rbp), %rax
	movq	136(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.26, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movl	$194, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-56(%rbp), %rdi
	movq	%rax, 144(%rdi)
	movq	-56(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gtk_widget_set_size_request
	movq	-56(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -976(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-976(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_line_wrap
	movq	-56(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -984(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-984(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %esi
	movl	$2, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_label_set_attributes
	movq	-96(%rbp), %rdi
	movq	%rdi, -992(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-992(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	144(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -996(%rbp)        # 4-byte Spill
	movl	-996(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.27, %rsi
	movabsq	$palette_import_image_add, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	384(%rdi), %rdi
	movq	-56(%rbp), %rbx
	movq	%rax, %rdx
	movq	%rbx, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.28, %rsi
	movabsq	$palette_import_image_remove, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	384(%rdx), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -1008(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-1008(%rbp), %rcx       # 8-byte Reload
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.29, %rsi
	movabsq	$palette_import_gradient_changed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -1024(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-1024(%rbp), %rcx       # 8-byte Reload
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.30, %rsi
	movabsq	$palette_import_image_changed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -1040(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-1040(%rbp), %rcx       # 8-byte Reload
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.31, %rsi
	movabsq	$palette_import_filename_changed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdx
	movq	80(%rdx), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -1056(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-1056(%rbp), %rcx       # 8-byte Reload
	movq	%rax, -1064(%rbp)       # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	40(%rcx), %rdi
	movq	-56(%rbp), %rsi
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	callq	palette_import_grad_callback
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB0_16:                               # %return
	movq	-40(%rbp), %rax
	addq	$1072, %rsp             # imm = 0x430
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	palette_import_dialog_new, .Lfunc_end0-palette_import_dialog_new
	.cfi_endproc

	.align	16, 0x90
	.type	palette_import_free,@function
palette_import_free:                    # @palette_import_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp9:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$palette_import_image_add, %rdx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-24(%rbp), %r10         # 8-byte Reload
	movq	%r9, -32(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-32(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$palette_import_image_remove, %rdi
	movq	-16(%rbp), %r9
	movq	384(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movq	-8(%rbp), %rdi
	cmpq	$0, 32(%rdi)
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
# BB#3:                                 # %do.body
	movl	$152, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#4:                                 # %do.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	palette_import_free, .Lfunc_end1-palette_import_free
	.cfi_endproc

	.align	16, 0x90
	.type	palette_import_response,@function
palette_import_response:                # @palette_import_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	16(%rdx), %rdi
	movq	-24(%rbp), %rdx
	movq	%rcx, %rsi
	callq	palette_import_image_changed
	movq	-24(%rbp), %rcx
	cmpq	$0, 32(%rcx)
	je	.LBB2_7
# BB#1:                                 # %if.then
	cmpl	$-5, -12(%rbp)
	jne	.LBB2_6
# BB#2:                                 # %if.then.3
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB2_5
# BB#3:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB2_5
# BB#4:                                 # %if.then.9
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_name
.LBB2_5:                                # %if.end
	movq	-32(%rbp), %rax
	movq	496(%rax), %rdi
	callq	gimp_data_factory_get_container
	movq	-24(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_add
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB2_6:                                # %if.end.18
	jmp	.LBB2_7
.LBB2_7:                                # %if.end.19
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_destroy
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	palette_import_response, .Lfunc_end2-palette_import_response
	.cfi_endproc

	.align	16, 0x90
	.type	import_dialog_drop_callback,@function
import_dialog_drop_callback:            # @import_dialog_drop_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp15:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	16(%rcx), %rdi
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rsi
	movq	-24(%rbp), %rcx
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_context_set_by_type
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_gradient_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB3_7
.LBB3_2:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_5
# BB#3:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB3_5
# BB#4:                                 # %if.then.7
	movl	$1, -60(%rbp)
	jmp	.LBB3_6
.LBB3_5:                                # %if.else.8
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB3_6:                                # %if.end
	jmp	.LBB3_7
.LBB3_7:                                # %if.end.10
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB3_10
# BB#8:                                 # %land.lhs.true.12
	movq	-40(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB3_10
# BB#9:                                 # %if.then.14
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	jmp	.LBB3_21
.LBB3_10:                               # %if.else.17
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB3_12
# BB#11:                                # %if.then.26
	movl	$0, -84(%rbp)
	jmp	.LBB3_17
.LBB3_12:                               # %if.else.27
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_15
# BB#13:                                # %land.lhs.true.30
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB3_15
# BB#14:                                # %if.then.34
	movl	$1, -84(%rbp)
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.35
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB3_16:                               # %if.end.37
	jmp	.LBB3_17
.LBB3_17:                               # %if.end.38
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB3_20
# BB#18:                                # %land.lhs.true.41
	movq	-40(%rbp), %rax
	cmpl	$1, 8(%rax)
	je	.LBB3_20
# BB#19:                                # %if.then.44
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
.LBB3_20:                               # %if.end.47
	jmp	.LBB3_21
.LBB3_21:                               # %if.end.48
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	import_dialog_drop_callback, .Lfunc_end3-import_dialog_drop_callback
	.cfi_endproc

	.align	16, 0x90
	.type	palette_import_grad_callback,@function
palette_import_grad_callback:           # @palette_import_grad_callback
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	jne	.LBB4_2
# BB#1:                                 # %if.then
	jmp	.LBB4_3
.LBB4_2:                                # %if.end
	movq	-16(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gimp_context_get_gradient
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_object_get_name
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_entry_set_text
	movq	-16(%rbp), %rdi
	callq	palette_import_set_sensitive
	movq	-16(%rbp), %rdi
	callq	palette_import_make_palette
.LBB4_3:                                # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	palette_import_grad_callback, .Lfunc_end4-palette_import_grad_callback
	.cfi_endproc

	.align	16, 0x90
	.type	palette_import_image_callback,@function
palette_import_image_callback:          # @palette_import_image_callback
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	jne	.LBB5_2
# BB#1:                                 # %if.then
	jmp	.LBB5_5
.LBB5_2:                                # %if.end
	movq	-16(%rbp), %rax
	movl	$1, 8(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gimp_context_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	movq	384(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_container_get_first_child
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
.LBB5_4:                                # %if.end.11
	movq	-16(%rbp), %rdi
	callq	palette_import_set_sensitive
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	palette_import_image_changed
.LBB5_5:                                # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	palette_import_image_callback, .Lfunc_end5-palette_import_image_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	palette_import_make_palette,@function
palette_import_make_palette:            # @palette_import_make_palette
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	104(%rdi), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB6_2
# BB#1:                                 # %lor.lhs.false
	movq	-24(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	jne	.LBB6_3
.LBB6_2:                                # %if.then
	movabsq	$.L.str.36, %rdi
	callq	gettext
	movq	%rax, -24(%rbp)
.LBB6_3:                                # %if.end
	movq	-8(%rbp), %rax
	movq	112(%rax), %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI6_0(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rax
	movq	120(%rax), %rdi
	movsd	%xmm1, -104(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_value
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gtk_adjustment_get_value
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -36(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	je	.LBB6_4
	jmp	.LBB6_22
.LBB6_22:                               # %if.end
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB6_5
	jmp	.LBB6_23
.LBB6_23:                               # %if.end
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB6_12
	jmp	.LBB6_15
.LBB6_4:                                # %sw.bb
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gimp_context_get_gradient
	xorl	%edx, %edx
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-24(%rbp), %rcx
	movl	-28(%rbp), %r8d
	callq	gimp_palette_import_from_gradient
	movq	%rax, -16(%rbp)
	jmp	.LBB6_15
.LBB6_5:                                # %sw.bb.18
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gimp_context_get_image
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movl	%eax, -60(%rbp)
	movq	-8(%rbp), %rsi
	movq	96(%rsi), %rsi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movl	%eax, -64(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_image_base_type
	cmpl	$2, %eax
	jne	.LBB6_7
# BB#6:                                 # %if.then.29
	movq	-56(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-24(%rbp), %rdx
	callq	gimp_palette_import_from_indexed_image
	movq	%rax, -16(%rbp)
	jmp	.LBB6_11
.LBB6_7:                                # %if.else
	cmpl	$0, -60(%rbp)
	je	.LBB6_9
# BB#8:                                 # %if.then.33
	movq	-56(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-36(%rbp), %r8d
	movl	-64(%rbp), %r9d
	callq	gimp_palette_import_from_image
	movq	%rax, -16(%rbp)
	jmp	.LBB6_10
.LBB6_9:                                # %if.else.36
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-36(%rbp), %r8d
	movl	-64(%rbp), %r9d
	callq	gimp_palette_import_from_drawable
	movq	%rax, -16(%rbp)
.LBB6_10:                               # %if.end.42
	jmp	.LBB6_11
.LBB6_11:                               # %if.end.43
	jmp	.LBB6_15
.LBB6_12:                               # %sw.bb.44
	movq	$0, -88(%rbp)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_file_chooser_get_filename
	leaq	-88(%rbp), %rcx
	movq	%rax, -80(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-80(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gimp_palette_import_from_file
	movq	%rax, -16(%rbp)
	movq	-80(%rbp), %rdi
	callq	g_free
	cmpq	$0, -16(%rbp)
	jne	.LBB6_14
# BB#13:                                # %if.then.51
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	32(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movq	-88(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
	movq	-88(%rbp), %rdi
	callq	g_error_free
.LBB6_14:                               # %if.end.55
	jmp	.LBB6_15
.LBB6_15:                               # %sw.epilog
	cmpq	$0, -16(%rbp)
	je	.LBB6_19
# BB#16:                                # %if.then.57
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB6_18
# BB#17:                                # %if.then.60
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB6_18:                               # %if.end.62
	movq	-16(%rbp), %rdi
	movl	-32(%rbp), %esi
	callq	gimp_palette_set_columns
	movq	-8(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_view_set_viewable
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rsi
	movq	%rax, 32(%rsi)
.LBB6_19:                               # %if.end.68
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	144(%rdx), %rdi
	movq	-8(%rbp), %rdx
	cmpq	$0, 32(%rdx)
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movb	%cl, -193(%rbp)         # 1-byte Spill
	je	.LBB6_21
# BB#20:                                # %land.rhs
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_palette_get_n_colors
	cmpl	$0, %eax
	setg	%cl
	movb	%cl, -193(%rbp)         # 1-byte Spill
.LBB6_21:                               # %land.end
	movb	-193(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %esi
	movq	-192(%rbp), %rdi        # 8-byte Reload
	callq	gtk_widget_set_visible
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	palette_import_make_palette, .Lfunc_end6-palette_import_make_palette
	.cfi_endproc

	.align	16, 0x90
	.type	palette_import_file_callback,@function
palette_import_file_callback:           # @palette_import_file_callback
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	jne	.LBB7_2
# BB#1:                                 # %if.then
	jmp	.LBB7_6
.LBB7_2:                                # %if.end
	movq	-16(%rbp), %rax
	movl	$2, 8(%rax)
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_file_chooser_get_filename
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB7_4
# BB#3:                                 # %if.then.7
	movq	-24(%rbp), %rdi
	callq	g_filename_display_basename
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_free
	jmp	.LBB7_5
.LBB7_4:                                # %if.else
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.35, %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
.LBB7_5:                                # %if.end.15
	movq	-16(%rbp), %rdi
	callq	palette_import_set_sensitive
.LBB7_6:                                # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	palette_import_file_callback, .Lfunc_end7-palette_import_file_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	palette_import_columns_changed,@function
palette_import_columns_changed:         # @palette_import_columns_changed
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, 32(%rsi)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %esi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	callq	gimp_palette_set_columns
.LBB8_2:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	palette_import_columns_changed, .Lfunc_end8-palette_import_columns_changed
	.cfi_endproc

	.align	16, 0x90
	.type	palette_import_image_add,@function
palette_import_image_add:               # @palette_import_image_add
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	48(%rdx), %rdi
	callq	gtk_widget_is_sensitive
	cmpl	$0, %eax
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movl	$1, %esi
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gtk_widget_set_sensitive
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_context_set_image
.LBB9_2:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	palette_import_image_add, .Lfunc_end9-palette_import_image_add
	.cfi_endproc

	.align	16, 0x90
	.type	palette_import_image_remove,@function
palette_import_image_remove:            # @palette_import_image_remove
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	32(%rdx), %rdx
	movq	384(%rdx), %rdi
	callq	gimp_container_get_n_children
	cmpl	$0, %eax
	jne	.LBB10_4
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	je	.LBB10_3
# BB#2:                                 # %if.then.5
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
.LBB10_3:                               # %if.end
	xorl	%esi, %esi
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gtk_widget_set_sensitive
.LBB10_4:                               # %if.end.9
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	palette_import_image_remove, .Lfunc_end10-palette_import_image_remove
	.cfi_endproc

	.align	16, 0x90
	.type	palette_import_gradient_changed,@function
palette_import_gradient_changed:        # @palette_import_gradient_changed
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
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB11_3
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_object_get_name
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_entry_set_text
	movq	-24(%rbp), %rdi
	callq	palette_import_make_palette
.LBB11_3:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	palette_import_gradient_changed, .Lfunc_end11-palette_import_gradient_changed
	.cfi_endproc

	.align	16, 0x90
	.type	palette_import_image_changed,@function
palette_import_image_changed:           # @palette_import_image_changed
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	cmpq	$0, 24(%rdx)
	je	.LBB12_2
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$palette_import_layer_changed, %rdx
	movq	-24(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-48(%rbp), %r10         # 8-byte Reload
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-56(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$palette_import_mask_changed, %rdi
	movq	-24(%rbp), %r9
	movq	24(%r9), %r9
	movq	-24(%rbp), %r10
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB12_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-24(%rbp), %rax
	cmpl	$1, 8(%rax)
	jne	.LBB12_8
# BB#3:                                 # %if.then.6
	movl	$0, -28(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB12_7
# BB#4:                                 # %if.then.8
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_display_name
	movq	-16(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_image_get_ID
	movabsq	$.L.str.32, %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	palette_import_make_palette
	movq	-16(%rbp), %rdi
	callq	gimp_image_base_type
	cmpl	$2, %eax
	je	.LBB12_6
# BB#5:                                 # %if.then.17
	movl	$1, -28(%rbp)
.LBB12_6:                               # %if.end.18
	jmp	.LBB12_7
.LBB12_7:                               # %if.end.19
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdi
	movl	-28(%rbp), %esi
	callq	gtk_widget_set_sensitive
	movq	-24(%rbp), %rax
	movq	96(%rax), %rdi
	movl	-28(%rbp), %esi
	callq	gtk_widget_set_sensitive
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_object_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-28(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_scale_entry_set_sensitive
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_object_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-28(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_scale_entry_set_sensitive
.LBB12_8:                               # %if.end.24
	movq	-24(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB12_10
# BB#9:                                 # %if.then.27
	movabsq	$.L.str.33, %rsi
	movabsq	$palette_import_layer_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.34, %rsi
	movabsq	$palette_import_mask_changed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB12_10:                              # %if.end.32
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	palette_import_image_changed, .Lfunc_end12-palette_import_image_changed
	.cfi_endproc

	.align	16, 0x90
	.type	palette_import_filename_changed,@function
palette_import_filename_changed:        # @palette_import_filename_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$2, 8(%rsi)
	je	.LBB13_2
# BB#1:                                 # %if.then
	jmp	.LBB13_6
.LBB13_2:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	gtk_file_chooser_get_filename
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB13_4
# BB#3:                                 # %if.then.1
	movq	-24(%rbp), %rdi
	callq	g_filename_display_basename
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	movq	-32(%rbp), %rdi
	callq	g_free
	jmp	.LBB13_5
.LBB13_4:                               # %if.else
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.35, %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
.LBB13_5:                               # %if.end.9
	movq	-24(%rbp), %rdi
	callq	g_free
	movq	-16(%rbp), %rdi
	callq	palette_import_make_palette
.LBB13_6:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	palette_import_filename_changed, .Lfunc_end13-palette_import_filename_changed
	.cfi_endproc

	.align	16, 0x90
	.type	palette_import_layer_changed,@function
palette_import_layer_changed:           # @palette_import_layer_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$1, 8(%rsi)
	jne	.LBB14_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	palette_import_make_palette
.LBB14_3:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	palette_import_layer_changed, .Lfunc_end14-palette_import_layer_changed
	.cfi_endproc

	.align	16, 0x90
	.type	palette_import_mask_changed,@function
palette_import_mask_changed:            # @palette_import_mask_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$1, 8(%rsi)
	jne	.LBB15_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	je	.LBB15_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	palette_import_make_palette
.LBB15_3:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	palette_import_mask_changed, .Lfunc_end15-palette_import_mask_changed
	.cfi_endproc

	.align	16, 0x90
	.type	palette_import_set_sensitive,@function
palette_import_set_sensitive:           # @palette_import_set_sensitive
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 8(%rdi)
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -12(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$1, 8(%rdi)
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -16(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$2, 8(%rdi)
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	64(%rdi), %rdi
	movl	-12(%rbp), %esi
	callq	gtk_widget_set_sensitive
	movq	-8(%rbp), %rdi
	movq	72(%rdi), %rdi
	movl	-16(%rbp), %esi
	callq	gtk_widget_set_sensitive
	movq	-8(%rbp), %rdi
	movq	88(%rdi), %rdi
	movl	-16(%rbp), %esi
	callq	gtk_widget_set_sensitive
	movq	-8(%rbp), %rdi
	movq	96(%rdi), %rdi
	movl	-16(%rbp), %esi
	callq	gtk_widget_set_sensitive
	movq	-8(%rbp), %rdi
	movq	80(%rdi), %rdi
	movl	-20(%rbp), %esi
	callq	gtk_widget_set_sensitive
	movq	-8(%rbp), %rdi
	movq	112(%rdi), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gtk_object_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$0, -20(%rbp)
	setne	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movq	%rax, %rdi
	callq	gimp_scale_entry_set_sensitive
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_object_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$0, -20(%rbp)
	setne	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movq	%rax, %rdi
	callq	gimp_scale_entry_set_sensitive
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_object_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-16(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_scale_entry_set_sensitive
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	palette_import_set_sensitive, .Lfunc_end16-palette_import_set_sensitive
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Dialogs"
	.size	.L.str, 13

	.type	.L__func__.palette_import_dialog_new,@object # @__func__.palette_import_dialog_new
.L__func__.palette_import_dialog_new:
	.asciz	"palette_import_dialog_new"
	.size	.L__func__.palette_import_dialog_new, 26

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.1, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Palette Import"
	.size	.L.str.2, 15

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Import a New Palette"
	.size	.L.str.3, 21

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-palette-import"
	.size	.L.str.4, 20

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gtk-cancel"
	.size	.L.str.5, 11

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"_Import"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gtk-convert"
	.size	.L.str.7, 12

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"palette-import-dialog"
	.size	.L.str.8, 22

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"response"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Select Source"
	.size	.L.str.10, 14

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"_Gradient"
	.size	.L.str.11, 10

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"toggled"
	.size	.L.str.12, 8

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"I_mage"
	.size	.L.str.13, 7

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Sample _Merged"
	.size	.L.str.14, 15

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"_Selected Pixels only"
	.size	.L.str.15, 22

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Palette _file"
	.size	.L.str.16, 14

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Select Palette File"
	.size	.L.str.17, 20

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Import Options"
	.size	.L.str.18, 15

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"New import"
	.size	.L.str.19, 11

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Palette _name:"
	.size	.L.str.20, 15

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"N_umber of colors:"
	.size	.L.str.21, 19

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"value-changed"
	.size	.L.str.22, 14

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"C_olumns:"
	.size	.L.str.23, 10

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"I_nterval:"
	.size	.L.str.24, 11

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Preview"
	.size	.L.str.25, 8

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"The selected source contains no colors."
	.size	.L.str.26, 40

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"add"
	.size	.L.str.27, 4

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"remove"
	.size	.L.str.28, 7

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gradient-changed"
	.size	.L.str.29, 17

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"image-changed"
	.size	.L.str.30, 14

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"selection-changed"
	.size	.L.str.31, 18

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"%s-%d"
	.size	.L.str.32, 6

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"active-layer-changed"
	.size	.L.str.33, 21

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"mask-changed"
	.size	.L.str.34, 13

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.zero	1
	.size	.L.str.35, 1

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Untitled"
	.size	.L.str.36, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
