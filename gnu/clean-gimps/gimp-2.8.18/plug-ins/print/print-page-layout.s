	.text
	.file	"print-page-layout.bc"
	.globl	print_page_layout_gui
	.align	16, 0x90
	.type	print_page_layout_gui,@function
print_page_layout_gui:                  # @print_page_layout_gui
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
	subq	$272, %rsp              # imm = 0x110
	movabsq	$info, %rax
	xorl	%ecx, %ecx
	movl	$96, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	memset
	movq	-8(%rbp), %rax
	movq	%rax, info
	movq	-8(%rbp), %rax
	movl	4(%rax), %edi
	callq	gimp_drawable_width
	movl	%eax, info+8
	movq	-8(%rbp), %rdx
	movl	4(%rdx), %edi
	callq	gimp_drawable_height
	movl	%eax, info+12
	movq	-8(%rbp), %rdx
	movq	72(%rdx), %rdi
	callq	gtk_print_operation_get_default_page_setup
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	callq	gtk_page_setup_new
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdi
	movq	-56(%rbp), %rsi
	callq	gtk_print_operation_set_default_page_setup
.LBB0_2:                                # %if.end
	xorl	%edi, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movl	-92(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	callq	gtk_size_group_new
	movl	$1, %edi
	movq	%rax, -64(%rbp)
	callq	gtk_size_group_new
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	callq	print_size_frame
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	movl	-108(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	callq	print_offset_frame
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	movl	-124(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$.L.str, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movl	60(%rsi), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	movl	-148(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movabsq	$.L.str.1, %rsi
	movabsq	$print_size_info_use_full_page_toggled, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-40(%rbp), %r10
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movq	-160(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-40(%rbp), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movabsq	$.L.str.2, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rcx
	movl	64(%rcx), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-32(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movabsq	$.L.str.1, %rsi
	movabsq	$print_draw_crop_marks_toggled, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-40(%rbp), %r10
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-192(%rbp), %rcx        # 8-byte Reload
	movq	-192(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-40(%rbp), %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movabsq	$.L.str.3, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	4(%rax), %esi
	callq	print_preview_new
	movq	%rax, info+56
	movq	info+56, %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	print_preview_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movl	60(%rsi), %esi
	movq	%rax, %rdi
	callq	print_preview_set_use_full_page
	movq	-48(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	info+56, %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	info+56, %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.4, %rsi
	movabsq	$print_size_info_preview_offset_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	info+56, %r10
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movq	-232(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$info, %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	print_size_info_set_page_setup
	movabsq	$.L.str.5, %rsi
	movabsq	$print_page_setup_notify, %rax
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-248(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.6, %rsi
	movabsq	$update_custom_widget, %rcx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdx
	movq	72(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-256(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movabsq	$gimp_standard_help_func, %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_help_connect
	movq	-24(%rbp), %rax
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end0:
	.size	print_page_layout_gui, .Lfunc_end0-print_page_layout_gui
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4572414629676717179     # double 0.0050000000000000001
.LCPI1_1:
	.quad	4679240012837945344     # double 65536
.LCPI1_2:
	.quad	4607182418800017408     # double 1
.LCPI1_3:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	print_size_frame,@function
print_size_frame:                       # @print_size_frame
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
	pushq	%r14
	pushq	%rbx
	subq	$624, %rsp              # imm = 0x270
.Ltmp6:
	.cfi_offset %rbx, -32
.Ltmp7:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	cvtsi2sdl	info+8, %xmm0
	movq	-24(%rbp), %rdx
	movl	8(%rdx), %edi
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	callq	gimp_unit_get_factor
	movsd	-128(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movq	-24(%rbp), %rdx
	divsd	16(%rdx), %xmm1
	movsd	%xmm1, -112(%rbp)
	cvtsi2sdl	info+12, %xmm0
	movq	-24(%rbp), %rdx
	movl	8(%rdx), %edi
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	callq	gimp_unit_get_factor
	movabsq	$.L.str.7, %rdi
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movq	-24(%rbp), %rdx
	divsd	24(%rdx), %xmm1
	movsd	%xmm1, -120(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movl	$1, %edi
	movl	$6, %esi
	movq	%rax, -88(%rbp)
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_box_new
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	movl	-156(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movabsq	$.L.str.8, %rdx
	xorl	%ecx, %ecx
	movl	$8, %r8d
	movq	-24(%rbp), %rax
	movl	8(%rax), %esi
	movl	%ecx, -160(%rbp)        # 4-byte Spill
	movl	-160(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -164(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	$8, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_size_entry_new
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	movl	-180(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-48(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, info+16
	movq	-48(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-48(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$6, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	movq	-48(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movl	$6, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	leaq	-104(%rbp), %rdi
	movsd	.LCPI1_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI1_3, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	movl	$2, %esi
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	movsd	-224(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-224(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-224(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-224(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_size_entry_add_field
	movq	-48(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	$2, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	-260(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movq	-48(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rdi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movl	%ecx, %edx
	callq	gimp_size_entry_attach_label
	movq	-48(%rbp), %rsi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	movq	%rsi, -296(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rdi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_size_entry_attach_label
	movq	%rax, -96(%rbp)
	movq	-32(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movq	-48(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movsd	16(%rsi), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gimp_size_entry_set_resolution
	movq	-48(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi
	movsd	24(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_resolution
	movq	-48(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_value
	movq	-48(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_value
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_box_new
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -348(%rbp)        # 4-byte Spill
	movl	-348(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.11, %rdi
	movq	-24(%rbp), %rax
	movl	32(%rax), %esi
	movl	%esi, -352(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$1, %edi
	xorl	%ecx, %ecx
	movl	$8, %edx
	movl	$2, %esi
	movl	-352(%rbp), %r8d        # 4-byte Reload
	movl	%esi, -356(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%edx, -360(%rbp)        # 4-byte Spill
	movq	%rax, %rdx
	movl	%ecx, -364(%rbp)        # 4-byte Spill
	movl	-364(%rbp), %r8d        # 4-byte Reload
	movl	-364(%rbp), %r9d        # 4-byte Reload
	movl	$8, (%rsp)
	movl	$2, 8(%rsp)
	callq	gimp_size_entry_new
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -380(%rbp)        # 4-byte Spill
	movl	-380(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-48(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, info+24
	movq	-48(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-48(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$6, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	movq	-48(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movl	$6, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	leaq	-104(%rbp), %rdi
	movsd	.LCPI1_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI1_3, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	movl	$2, %esi
	movsd	%xmm0, -424(%rbp)       # 8-byte Spill
	movsd	-424(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-424(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-424(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-424(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, -440(%rbp)        # 8-byte Spill
	movq	%rsi, -448(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_size_entry_add_field
	movq	-48(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	$2, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -460(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	-460(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movq	-48(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rdi
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movl	%ecx, %edx
	callq	gimp_size_entry_attach_label
	movq	%rax, -96(%rbp)
	movq	-32(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movq	-48(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.13, %rdi
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_size_entry_attach_label
	movq	%rax, -96(%rbp)
	movq	-32(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movq	-48(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI1_1, %xmm1         # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval_boundaries
	movq	-48(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI1_1, %xmm1         # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval_boundaries
	movq	-48(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	movsd	16(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval
	movq	-48(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	-24(%rbp), %rdi
	movsd	24(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval
	movl	$3, %edi
	callq	gimp_chain_button_new
	xorps	%xmm0, %xmm0
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	subsd	24(%rax), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB1_2
# BB#1:                                 # %cond.true
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	subsd	24(%rax), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -536(%rbp)       # 8-byte Spill
	jmp	.LBB1_3
.LBB1_2:                                # %cond.false
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	subsd	24(%rax), %xmm0
	movsd	%xmm0, -536(%rbp)       # 8-byte Spill
.LBB1_3:                                # %cond.end
	movsd	-536(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI1_0, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_5
# BB#4:                                 # %if.then
	movq	-80(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gimp_chain_button_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_chain_button_set_active
.LBB1_5:                                # %if.end
	movq	-48(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %ecx
	movl	$3, %edx
	xorl	%r8d, %r8d
	movl	$6, %r9d
	movl	$5, %r10d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -556(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-556(%rbp), %r11d       # 4-byte Reload
	movl	%ecx, -560(%rbp)        # 4-byte Spill
	movl	%r11d, %ecx
	movl	-560(%rbp), %ebx        # 4-byte Reload
	movl	%r9d, -564(%rbp)        # 4-byte Spill
	movl	%ebx, %r9d
	movl	$6, (%rsp)
	movl	$5, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -568(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movq	-80(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gimp_chain_button_get_type
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.14, %rsi
	movabsq	$print_size_info_resolution_changed, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r14d
	xorl	%r9d, %r9d
	movq	%rax, info+32
	movq	info+24, %rax
	movq	%rdi, -584(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-584(%rbp), %rdx        # 8-byte Reload
	movq	%r14, %rcx
	movq	%r14, %r8
	callq	g_signal_connect_data
	movabsq	$.L.str.15, %rsi
	movabsq	$print_size_info_unit_changed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	info+16, %rdi
	movq	%rdx, -592(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-592(%rbp), %rcx        # 8-byte Reload
	movq	-592(%rbp), %r8         # 8-byte Reload
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-88(%rbp), %rcx
	movq	%rax, -608(%rbp)        # 8-byte Spill
	movq	%rcx, %rax
	addq	$624, %rsp              # imm = 0x270
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	print_size_frame, .Lfunc_end1-print_size_frame
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_0:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_1:
	.quad	4634766966517661696     # double 72
.LCPI2_2:
	.quad	4607182418800017408     # double 1
.LCPI2_3:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	print_offset_frame,@function
print_offset_frame:                     # @print_offset_frame
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
	pushq	%rbx
	subq	$728, %rsp              # imm = 0x2D8
.Ltmp11:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.16, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movl	$1, %edi
	movl	$6, %esi
	movq	%rax, -80(%rbp)
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	info+16, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %ecx
	xorl	%edx, %edx
	movq	%rax, -40(%rbp)
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-72(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-72(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_table_set_col_spacing
	movq	-72(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$12, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	movl	-156(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$info, %rax
	addq	$64, %rax
	movsd	.LCPI2_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_3, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	movl	$2, %esi
	movq	%rax, %rdi
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	movsd	-168(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-168(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-168(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-168(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_size_entry_add_field
	movq	-72(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	$2, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	-204(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.17, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movq	-88(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-72(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -236(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-236(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -240(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-240(%rbp), %r8d        # 4-byte Reload
	movl	-236(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-24(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$info, %rax
	addq	$72, %rax
	movsd	.LCPI2_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_3, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	movl	$2, %esi
	movq	%rax, %rdi
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	movsd	-248(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-248(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-248(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-248(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movabsq	$.L.str.14, %rsi
	movabsq	$print_size_info_offset_max_changed, %rdi
	movl	$3, %ecx
                                        # kill: RCX<def> ECX<kill>
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -48(%rbp)
	movq	info+72, %rax
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-256(%rbp), %rdx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-40(%rbp), %rcx
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rcx
	movq	%rax, -280(%rbp)        # 8-byte Spill
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_size_entry_add_field
	movq	-72(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %edx
	movl	$4, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_table_attach_defaults
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.18, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movq	-88(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-72(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_table_attach_defaults
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$info, %rax
	addq	$80, %rax
	movsd	.LCPI2_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_3, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	movl	$2, %esi
	movq	%rax, %rdi
	movsd	%xmm0, -328(%rbp)       # 8-byte Spill
	movsd	-328(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-328(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-328(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-328(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	movq	%rsi, -352(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_size_entry_add_field
	movq	-72(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	$2, %r8d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -364(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-364(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -368(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-368(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.19, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movq	-88(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-72(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r9d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, -396(%rbp)        # 4-byte Spill
	movl	-396(%rbp), %r8d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-24(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$info, %rax
	addq	$88, %rax
	movsd	.LCPI2_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_3, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	movl	$2, %esi
	movq	%rax, %rdi
	movsd	%xmm0, -408(%rbp)       # 8-byte Spill
	movsd	-408(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-408(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-408(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-408(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movabsq	$.L.str.14, %rsi
	movabsq	$print_size_info_offset_max_changed, %rdi
	movl	$1, %ecx
                                        # kill: RCX<def> ECX<kill>
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -48(%rbp)
	movq	info+88, %rax
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-416(%rbp), %rdx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-40(%rbp), %rcx
	movq	%rax, -424(%rbp)        # 8-byte Spill
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rcx
	movq	%rax, -440(%rbp)        # 8-byte Spill
	movq	%rcx, -448(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_size_entry_add_field
	movq	-72(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %edx
	movl	$4, %ecx
	movl	$1, %r8d
	movl	$2, %r9d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_table_attach_defaults
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.20, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movq	-88(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-72(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %ecx
	movl	$3, %edx
	movl	$1, %r8d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -484(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-484(%rbp), %r9d        # 4-byte Reload
	movl	%ecx, -488(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	-488(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %esi
	movsd	.LCPI2_1, %xmm0         # xmm0 = mem[0],zero
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gimp_size_entry_set_resolution
	movq	-40(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movsd	.LCPI2_1, %xmm0         # xmm0 = mem[0],zero
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gimp_size_entry_set_resolution
	movq	-40(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movsd	.LCPI2_1, %xmm0         # xmm0 = mem[0],zero
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gimp_size_entry_set_resolution
	movq	-40(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movsd	.LCPI2_1, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gimp_size_entry_set_resolution
	callq	print_size_info_update_offsets
	movabsq	$.L.str.14, %rsi
	movabsq	$print_size_info_size_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	info+16, %r10
	movq	%rdi, -528(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-528(%rbp), %rcx        # 8-byte Reload
	movq	-528(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movl	$6, %esi
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.21, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-64(%rbp), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -564(%rbp)        # 4-byte Spill
	movl	-564(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.22, %rsi
	movl	$12, %ecx
	movl	%ecx, %edx
	callq	g_dpgettext
	movabsq	$.L.str.23, %rdi
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.24, %rdi
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.25, %rdi
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %ecx
	movl	$2, %r9d
	movl	$3, %r8d
	xorl	%r11d, %r11d
	movl	%r11d, %edx
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	-584(%rbp), %r10        # 8-byte Reload
	movq	%rdx, -600(%rbp)        # 8-byte Spill
	movq	%r10, %rdx
	movq	-592(%rbp), %rbx        # 8-byte Reload
	movl	%r8d, -604(%rbp)        # 4-byte Spill
	movq	%rbx, %r8
	movq	%rax, (%rsp)
	movl	$3, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, %al
	callq	gimp_int_combo_box_new
	movq	%rax, -96(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-616(%rbp), %rdi        # 8-byte Reload
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
	movq	-88(%rbp), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movq	-96(%rbp), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$print_size_info_center_changed, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-16(%rbp), %rdi
	movl	56(%rdi), %edx
	movq	%rax, %rdi
	movq	%rsi, -640(%rbp)        # 8-byte Spill
	movl	%edx, %esi
	movq	-640(%rbp), %rdx        # 8-byte Reload
	callq	gimp_int_combo_box_connect
	movabsq	$.L.str.14, %rsi
	movabsq	$print_size_info_center_none, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rdi
	movq	%rdi, info+40
	movq	info+64, %rdi
	movq	%rcx, -648(%rbp)        # 8-byte Spill
	movq	-648(%rbp), %r8         # 8-byte Reload
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.14, %rsi
	movabsq	$print_size_info_center_none, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	info+72, %rdi
	movq	%rcx, -664(%rbp)        # 8-byte Spill
	movq	-664(%rbp), %r8         # 8-byte Reload
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.14, %rsi
	movabsq	$print_size_info_center_none, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	info+80, %rdi
	movq	%rcx, -680(%rbp)        # 8-byte Spill
	movq	-680(%rbp), %r8         # 8-byte Reload
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.14, %rsi
	movabsq	$print_size_info_center_none, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	info+88, %rdi
	movq	%rcx, -696(%rbp)        # 8-byte Spill
	movq	-696(%rbp), %r8         # 8-byte Reload
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-80(%rbp), %rcx
	movq	%rax, -712(%rbp)        # 8-byte Spill
	movq	%rcx, %rax
	addq	$728, %rsp              # imm = 0x2D8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	print_offset_frame, .Lfunc_end2-print_offset_frame
	.cfi_endproc

	.align	16, 0x90
	.type	print_size_info_use_full_page_toggled,@function
print_size_info_use_full_page_toggled:  # @print_size_info_use_full_page_toggled
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movabsq	$info, %rdi
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movq	info, %rsi
	movl	%eax, 60(%rsi)
	callq	print_size_info_set_page_setup
	movq	info+56, %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	print_preview_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	callq	print_preview_set_use_full_page
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	print_size_info_use_full_page_toggled, .Lfunc_end3-print_size_info_use_full_page_toggled
	.cfi_endproc

	.align	16, 0x90
	.type	print_draw_crop_marks_toggled,@function
print_draw_crop_marks_toggled:          # @print_draw_crop_marks_toggled
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movq	info, %rsi
	movl	%eax, 64(%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	print_draw_crop_marks_toggled, .Lfunc_end4-print_draw_crop_marks_toggled
	.cfi_endproc

	.align	16, 0x90
	.type	print_size_info_preview_offset_changed,@function
print_size_info_preview_offset_changed: # @print_size_info_preview_offset_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	callq	print_size_info_center_none
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	info, %rdi
	movsd	%xmm0, 40(%rdi)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	info, %rdi
	movsd	%xmm0, 48(%rdi)
	callq	print_size_info_update_offsets
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	print_size_info_preview_offset_changed, .Lfunc_end5-print_size_info_preview_offset_changed
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4634766966517661696     # double 72
.LCPI6_1:
	.quad	4636737291354636288     # double 100
.LCPI6_2:
	.quad	4679240012837945344     # double 65536
	.text
	.align	16, 0x90
	.type	print_size_info_set_page_setup,@function
print_size_info_set_page_setup:         # @print_size_info_set_page_setup
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
	subq	$128, %rsp
	leaq	-24(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	movl	$2, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	print_size_info_get_page_dimensions
	movq	-16(%rbp), %rdx
	movl	8(%rdx), %edi
	callq	gimp_unit_get_factor
	mulsd	-24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-16(%rbp), %rdx
	movl	8(%rdx), %edi
	callq	gimp_unit_get_factor
	mulsd	-32(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-8(%rbp), %rdx
	cmpq	$0, 48(%rdx)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	8(%rax), %edi
	callq	gimp_unit_get_digits
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %edi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gimp_unit_get_digits
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %edi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	gimp_unit_get_plural
	movabsq	$.L.str.26, %rdi
	movl	-92(%rbp), %esi         # 4-byte Reload
	movl	-96(%rbp), %edx         # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movb	$2, %al
	callq	g_strdup_printf
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-64(%rbp), %rdi
	callq	g_free
.LBB6_2:                                # %if.end
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB6_8
# BB#3:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_chain_button_get_active
	cmpl	$0, %eax
	je	.LBB6_8
# BB#4:                                 # %if.then.20
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	cvtsi2sdl	8(%rax), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	cvtsi2sdl	12(%rax), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB6_6
# BB#5:                                 # %if.then.24
	movq	-8(%rbp), %rax
	cvtsi2sdl	12(%rax), %xmm0
	mulsd	-72(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else
	movq	-8(%rbp), %rax
	cvtsi2sdl	8(%rax), %xmm0
	mulsd	-80(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
.LBB6_7:                                # %if.end.31
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.32
	movl	$4, %esi
	movsd	.LCPI6_1, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-112(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_size_entry_set_value_boundaries
	movl	$5, %esi
	movsd	.LCPI6_1, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_size_entry_set_value_boundaries
	leaq	-24(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	callq	print_size_info_get_page_dimensions
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	cvtsi2sdl	8(%rax), %xmm1
	divsd	-24(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	movq	-8(%rbp), %rax
	cvtsi2sdl	12(%rax), %xmm1
	divsd	-32(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB6_14
# BB#9:                                 # %land.lhs.true.46
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_chain_button_get_active
	cmpl	$0, %eax
	je	.LBB6_14
# BB#10:                                # %if.then.50
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-48(%rbp), %xmm0
	jbe	.LBB6_12
# BB#11:                                # %cond.true
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	jmp	.LBB6_13
.LBB6_12:                               # %cond.false
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
.LBB6_13:                               # %cond.end
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movsd	%xmm0, -40(%rbp)
.LBB6_14:                               # %if.end.53
	xorl	%esi, %esi
	movsd	.LCPI6_2, %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_size_entry_set_refval_boundaries
	movl	$1, %esi
	movsd	.LCPI6_2, %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_size_entry_set_refval_boundaries
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	print_size_info_set_page_setup, .Lfunc_end6-print_size_info_set_page_setup
	.cfi_endproc

	.align	16, 0x90
	.type	print_page_setup_notify,@function
print_page_setup_notify:                # @print_page_setup_notify
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_print_operation_get_default_page_setup
	movabsq	$info, %rdi
	movq	%rax, -16(%rbp)
	callq	print_size_info_set_page_setup
	movq	info+56, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	print_preview_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	print_preview_set_page_setup
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	print_page_setup_notify, .Lfunc_end7-print_page_setup_notify
	.cfi_endproc

	.align	16, 0x90
	.type	update_custom_widget,@function
update_custom_widget:                   # @update_custom_widget
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_print_operation_set_default_page_setup
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	update_custom_widget, .Lfunc_end8-update_custom_widget
	.cfi_endproc

	.align	16, 0x90
	.type	print_size_info_resolution_changed,@function
print_size_info_resolution_changed:     # @print_size_info_resolution_changed
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
	subq	$32, %rsp
	xorl	%esi, %esi
	movq	%rdi, -8(%rbp)
	movq	info+24, %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_size_entry_get_refval
	movl	$1, %esi
	movsd	%xmm0, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_size_entry_get_refval
	movabsq	$info, %rdi
	movsd	%xmm0, -32(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	print_size_info_set_resolution
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	print_size_info_resolution_changed, .Lfunc_end9-print_size_info_resolution_changed
	.cfi_endproc

	.align	16, 0x90
	.type	print_size_info_unit_changed,@function
print_size_info_unit_changed:           # @print_size_info_unit_changed
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_size_entry_get_unit
	movabsq	$info, %rdi
	movq	info, %rsi
	movl	%eax, 8(%rsi)
	callq	print_size_info_set_page_setup
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	print_size_info_unit_changed, .Lfunc_end10-print_size_info_unit_changed
	.cfi_endproc

	.align	16, 0x90
	.type	print_size_info_set_resolution,@function
print_size_info_set_resolution:         # @print_size_info_set_resolution
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
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 32(%rdi)
	je	.LBB11_6
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_chain_button_get_active
	cmpl	$0, %eax
	je	.LBB11_6
# BB#2:                                 # %if.then
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	ucomisd	16(%rax), %xmm0
	jne	.LBB11_3
	jp	.LBB11_3
	jmp	.LBB11_4
.LBB11_3:                               # %if.then.5
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	jmp	.LBB11_5
.LBB11_4:                               # %if.else
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
.LBB11_5:                               # %if.end
	jmp	.LBB11_6
.LBB11_6:                               # %if.end.6
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$print_size_info_resolution_changed, %rdx
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdi
	movsd	%xmm0, 16(%rdi)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdi
	movsd	%xmm0, 24(%rdi)
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-72(%rbp), %r9          # 8-byte Reload
	movq	$0, (%rsp)
	callq	g_signal_handlers_block_matched
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gimp_size_entry_set_refval
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_size_entry_set_refval
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$print_size_info_resolution_changed, %rdi
	movq	-8(%rbp), %r9
	movq	24(%r9), %r9
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	$0, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$print_size_info_size_changed, %rdi
	movq	-8(%rbp), %r9
	movq	16(%r9), %r9
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	$0, (%rsp)
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_block_matched
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	-8(%rbp), %r8
	cvtsi2sdl	8(%r8), %xmm0
	movq	-32(%rbp), %r8
	movl	8(%r8), %ecx
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%ecx, %edi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	callq	gimp_unit_get_factor
	movl	$4, %esi
	movsd	-128(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	divsd	-16(%rbp), %xmm1
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movaps	%xmm1, %xmm0
	callq	gimp_size_entry_set_value
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	-8(%rbp), %r8
	cvtsi2sdl	12(%r8), %xmm0
	movq	-32(%rbp), %r8
	movl	8(%r8), %eax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	callq	gimp_unit_get_factor
	movl	$5, %esi
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	divsd	-24(%rbp), %xmm1
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movaps	%xmm1, %xmm0
	callq	gimp_size_entry_set_value
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$print_size_info_size_changed, %rdi
	movq	-8(%rbp), %r9
	movq	16(%r9), %r9
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-152(%rbp), %r9         # 8-byte Reload
	movq	$0, (%rsp)
	callq	g_signal_handlers_unblock_matched
	leaq	-56(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	gimp_size_info_get_max_offsets
	movl	$3, %esi
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	gimp_size_entry_get_refval
	movl	$1, %esi
	movsd	%xmm0, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	gimp_size_entry_get_refval
	movsd	%xmm0, -48(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-56(%rbp), %xmm0
	jbe	.LBB11_8
# BB#7:                                 # %cond.true
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	jmp	.LBB11_12
.LBB11_8:                               # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-40(%rbp), %xmm0
	jbe	.LBB11_10
# BB#9:                                 # %cond.true.33
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	jmp	.LBB11_11
.LBB11_10:                              # %cond.false.34
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
.LBB11_11:                              # %cond.end
	movsd	-176(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
.LBB11_12:                              # %cond.end.35
	movsd	-168(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-64(%rbp), %xmm0
	jbe	.LBB11_14
# BB#13:                                # %cond.true.39
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	jmp	.LBB11_18
.LBB11_14:                              # %cond.false.40
	xorps	%xmm0, %xmm0
	ucomisd	-48(%rbp), %xmm0
	jbe	.LBB11_16
# BB#15:                                # %cond.true.43
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	jmp	.LBB11_17
.LBB11_16:                              # %cond.false.44
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
.LBB11_17:                              # %cond.end.45
	movsd	-192(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
.LBB11_18:                              # %cond.end.47
	movsd	-184(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 40(%rax)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 48(%rax)
	callq	print_size_info_update_offsets
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	print_preview_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movsd	16(%rsi), %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rsi
	movsd	24(%rsi), %xmm1         # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	print_preview_set_image_dpi
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	print_preview_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movsd	40(%rsi), %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rsi
	movsd	48(%rsi), %xmm1         # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	print_preview_set_image_offsets
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	print_preview_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	print_preview_set_image_offsets_max
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	print_size_info_set_resolution, .Lfunc_end11-print_size_info_set_resolution
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4547007122018943789     # double 1.0E-4
	.text
	.align	16, 0x90
	.type	print_size_info_size_changed,@function
print_size_info_size_changed:           # @print_size_info_size_changed
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
	movq	%rdi, -8(%rbp)
	movq	info+16, %rdi
	callq	gimp_size_entry_get_unit
	movl	%eax, %edi
	callq	gimp_unit_get_factor
	movl	$4, %esi
	movsd	%xmm0, -48(%rbp)
	movq	info+16, %rdi
	callq	gimp_size_entry_get_value
	movl	$5, %esi
	movsd	%xmm0, -16(%rbp)
	movq	info+16, %rdi
	callq	gimp_size_entry_get_value
	movsd	.LCPI12_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	info+8, %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	-16(%rbp), %xmm1
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jbe	.LBB12_2
# BB#1:                                 # %cond.true
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB12_3
.LBB12_2:                               # %cond.false
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
.LBB12_3:                               # %cond.end
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI12_0, %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -32(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	info+12, %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	-24(%rbp), %xmm1
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jbe	.LBB12_5
# BB#4:                                 # %cond.true.9
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB12_6
.LBB12_5:                               # %cond.false.10
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
.LBB12_6:                               # %cond.end.11
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movabsq	$info, %rdi
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	print_size_info_set_resolution
	movl	$3, %esi
	movq	info+16, %rdi
	callq	gimp_size_entry_get_refval
	movl	$1, %esi
	movq	info, %rdi
	movsd	%xmm0, 40(%rdi)
	movq	info+16, %rdi
	callq	gimp_size_entry_get_refval
	movq	info, %rdi
	movsd	%xmm0, 48(%rdi)
	movq	info+56, %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	print_preview_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	info, %rsi
	movsd	40(%rsi), %xmm0         # xmm0 = mem[0],zero
	movq	info, %rsi
	movsd	48(%rsi), %xmm1         # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	print_preview_set_image_offsets
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	print_size_info_size_changed, .Lfunc_end12-print_size_info_size_changed
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4634766966517661696     # double 72
	.text
	.align	16, 0x90
	.type	gimp_size_info_get_max_offsets,@function
gimp_size_info_get_max_offsets:         # @gimp_size_info_get_max_offsets
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
	subq	$48, %rsp
	movabsq	$info, %rax
	leaq	-24(%rbp), %rcx
	leaq	-32(%rbp), %rdx
	movl	$1, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movl	%r8d, %ecx
	callq	print_size_info_get_page_dimensions
	xorps	%xmm0, %xmm0
	movsd	.LCPI13_0, %xmm1        # xmm1 = mem[0],zero
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	cvtsi2sdl	info+8, %xmm3
	mulsd	%xmm3, %xmm1
	movq	info, %rax
	divsd	16(%rax), %xmm1
	subsd	%xmm1, %xmm2
	movq	-8(%rbp), %rax
	movsd	%xmm2, (%rax)
	movq	-8(%rbp), %rax
	ucomisd	(%rax), %xmm0
	jbe	.LBB13_2
# BB#1:                                 # %cond.true
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	jmp	.LBB13_3
.LBB13_2:                               # %cond.false
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
.LBB13_3:                               # %cond.end
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI13_0, %xmm2        # xmm2 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	info+12, %xmm3
	mulsd	%xmm3, %xmm2
	movq	info, %rax
	divsd	24(%rax), %xmm2
	subsd	%xmm2, %xmm0
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-16(%rbp), %rax
	ucomisd	(%rax), %xmm1
	jbe	.LBB13_5
# BB#4:                                 # %cond.true.8
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	jmp	.LBB13_6
.LBB13_5:                               # %cond.false.9
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
.LBB13_6:                               # %cond.end.10
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_size_info_get_max_offsets, .Lfunc_end13-gimp_size_info_get_max_offsets
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	print_size_info_update_offsets,@function
print_size_info_update_offsets:         # @print_size_info_update_offsets
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
	subq	$80, %rsp
	movq	info(%rip), %rax
	movq	%rax, -8(%rbp)
	leaq	-16(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	gimp_size_info_get_max_offsets
	movq	info+16(%rip), %rdi
	movq	%rsp, %rax
	movq	$0, (%rax)
	movl	$print_size_info_size_changed, %ecx
	movl	%ecx, %r9d
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$24, %esi
	movl	%ecx, %edx
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_block_matched
	movl	%eax, -32(%rbp)         # 4-byte Spill
	callq	print_size_info_center_none_block
	movq	info+16(%rip), %rdi
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	$3, %esi
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_set_refval_boundaries
	movq	info+16(%rip), %rdi
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	$2, %esi
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	gimp_size_entry_set_refval_boundaries
	movq	info+16(%rip), %rdi
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	$1, %esi
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	gimp_size_entry_set_refval_boundaries
	movq	info+16(%rip), %rdi
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-28(%rbp), %esi         # 4-byte Reload
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	gimp_size_entry_set_refval_boundaries
	movq	-8(%rbp), %rdi
	movl	56(%rdi), %eax
	movl	%eax, %edi
	movq	%rdi, %r8
	subq	$3, %r8
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r8, -56(%rbp)          # 8-byte Spill
	ja	.LBB14_5
# BB#6:                                 # %entry
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	.LJTI14_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB14_1:                               # %sw.bb
	jmp	.LBB14_5
.LBB14_2:                               # %sw.bb.1
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-8(%rbp), %rax
	movsd	%xmm1, 40(%rax)
	jmp	.LBB14_5
.LBB14_3:                               # %sw.bb.2
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-8(%rbp), %rax
	movsd	%xmm1, 48(%rax)
	jmp	.LBB14_5
.LBB14_4:                               # %sw.bb.4
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-8(%rbp), %rax
	movsd	%xmm1, 40(%rax)
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-8(%rbp), %rax
	movsd	%xmm1, 48(%rax)
.LBB14_5:                               # %sw.epilog
	movl	$3, %esi
	movq	info+16, %rdi
	movq	-8(%rbp), %rax
	movsd	40(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gimp_size_entry_set_refval
	movl	$2, %esi
	movq	info+16, %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	40(%rax), %xmm0
	callq	gimp_size_entry_set_refval
	movl	$1, %esi
	movq	info+16, %rdi
	movq	info, %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gimp_size_entry_set_refval
	xorl	%esi, %esi
	movq	info+16, %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	48(%rax), %xmm0
	callq	gimp_size_entry_set_refval
	callq	print_size_info_center_none_unblock
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$print_size_info_size_changed, %rax
	movq	info+16, %rdi
	movl	%ecx, %edx
	movq	%rax, %r9
	movq	$0, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -60(%rbp)         # 4-byte Spill
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	print_size_info_update_offsets, .Lfunc_end14-print_size_info_update_offsets
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI14_0:
	.quad	.LBB14_1
	.quad	.LBB14_2
	.quad	.LBB14_3
	.quad	.LBB14_4

	.text
	.align	16, 0x90
	.type	print_size_info_get_page_dimensions,@function
print_size_info_get_page_dimensions:    # @print_size_info_get_page_dimensions
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	72(%rdx), %rdi
	callq	gtk_print_operation_get_default_page_setup
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 60(%rax)
	je	.LBB15_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gtk_page_setup_get_paper_width
	movq	-16(%rbp), %rdi
	movsd	%xmm0, (%rdi)
	movq	-40(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gtk_page_setup_get_paper_height
	movq	-24(%rbp), %rdi
	movsd	%xmm0, (%rdi)
	jmp	.LBB15_3
.LBB15_2:                               # %if.else
	movq	-40(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gtk_page_setup_get_page_width
	movq	-16(%rbp), %rdi
	movsd	%xmm0, (%rdi)
	movq	-40(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gtk_page_setup_get_page_height
	movq	-24(%rbp), %rdi
	movsd	%xmm0, (%rdi)
.LBB15_3:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	print_size_info_get_page_dimensions, .Lfunc_end15-print_size_info_get_page_dimensions
	.cfi_endproc

	.align	16, 0x90
	.type	print_size_info_center_none_block,@function
print_size_info_center_none_block:      # @print_size_info_center_none_block
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$print_size_info_center_none, %rdx
	movq	info+64, %rdi
	movq	%rdx, -8(%rbp)          # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-8(%rbp), %r9           # 8-byte Reload
	movq	$0, (%rsp)
	callq	g_signal_handlers_block_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$print_size_info_center_none, %rdi
	movq	info+72, %r9
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-16(%rbp), %r9          # 8-byte Reload
	movq	$0, (%rsp)
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_block_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$print_size_info_center_none, %rdi
	movq	info+80, %r9
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-32(%rbp), %r9          # 8-byte Reload
	movq	$0, (%rsp)
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_block_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$print_size_info_center_none, %rdi
	movq	info+88, %r9
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-48(%rbp), %r9          # 8-byte Reload
	movq	$0, (%rsp)
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_block_matched
	movl	%eax, -56(%rbp)         # 4-byte Spill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	print_size_info_center_none_block, .Lfunc_end16-print_size_info_center_none_block
	.cfi_endproc

	.align	16, 0x90
	.type	print_size_info_center_none_unblock,@function
print_size_info_center_none_unblock:    # @print_size_info_center_none_unblock
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$print_size_info_center_none, %rdx
	movq	info+64, %rdi
	movq	%rdx, -8(%rbp)          # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-8(%rbp), %r9           # 8-byte Reload
	movq	$0, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$print_size_info_center_none, %rdi
	movq	info+72, %r9
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-16(%rbp), %r9          # 8-byte Reload
	movq	$0, (%rsp)
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_unblock_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$print_size_info_center_none, %rdi
	movq	info+80, %r9
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-32(%rbp), %r9          # 8-byte Reload
	movq	$0, (%rsp)
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_unblock_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$print_size_info_center_none, %rdi
	movq	info+88, %r9
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-48(%rbp), %r9          # 8-byte Reload
	movq	$0, (%rsp)
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -56(%rbp)         # 4-byte Spill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	print_size_info_center_none_unblock, .Lfunc_end17-print_size_info_center_none_unblock
	.cfi_endproc

	.align	16, 0x90
	.type	print_size_info_center_none,@function
print_size_info_center_none:            # @print_size_info_center_none
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	info+16, %rdi
	callq	gimp_size_entry_get_unit
	movq	info, %rdi
	cmpl	8(%rdi), %eax
	je	.LBB18_2
# BB#1:                                 # %if.then
	jmp	.LBB18_4
.LBB18_2:                               # %if.end
	movq	info, %rax
	movl	$0, 56(%rax)
	cmpq	$0, info+40
	je	.LBB18_4
# BB#3:                                 # %if.then.1
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$print_size_info_center_changed, %rdx
	movq	info+40, %rdi
	movq	%rdx, -8(%rbp)          # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-8(%rbp), %r9           # 8-byte Reload
	movq	$0, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	info, %rdi
	movl	$0, 56(%rdi)
	movq	info+40, %rdi
	movl	%eax, -12(%rbp)         # 4-byte Spill
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	info, %rsi
	movl	56(%rsi), %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$print_size_info_center_changed, %rdi
	movq	info+40, %r9
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-32(%rbp), %r9          # 8-byte Reload
	movq	$0, (%rsp)
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB18_4:                               # %if.end.9
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	print_size_info_center_none, .Lfunc_end18-print_size_info_center_none
	.cfi_endproc

	.align	16, 0x90
	.type	print_size_info_center_changed,@function
print_size_info_center_changed:         # @print_size_info_center_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-12(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_get_active
	cmpl	$0, %eax
	je	.LBB19_4
# BB#1:                                 # %if.then
	movl	-12(%rbp), %eax
	movq	info, %rcx
	movl	%eax, 56(%rcx)
	callq	print_size_info_update_offsets
	cmpq	$0, info+56
	je	.LBB19_3
# BB#2:                                 # %if.then.4
	movq	info+56, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	print_preview_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	info, %rsi
	movsd	40(%rsi), %xmm0         # xmm0 = mem[0],zero
	movq	info, %rsi
	movsd	48(%rsi), %xmm1         # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	print_preview_set_image_offsets
.LBB19_3:                               # %if.end
	jmp	.LBB19_4
.LBB19_4:                               # %if.end.7
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	print_size_info_center_changed, .Lfunc_end19-print_size_info_center_changed
	.cfi_endproc

	.align	16, 0x90
	.type	print_size_info_offset_max_changed,@function
print_size_info_offset_max_changed:     # @print_size_info_offset_max_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	%esi, %eax
	movl	%eax, -20(%rbp)
	movq	info+16, %rdi
	callq	gimp_size_entry_get_unit
	movq	info, %rsi
	cmpl	8(%rsi), %eax
	je	.LBB20_2
# BB#1:                                 # %if.then
	jmp	.LBB20_3
.LBB20_2:                               # %if.end
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$print_size_info_size_changed, %rdx
	movq	info+16, %rdi
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-32(%rbp), %r9          # 8-byte Reload
	movq	$0, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	info+16, %rdi
	movl	-20(%rbp), %esi
	movq	-8(%rbp), %r8
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%esi, -48(%rbp)         # 4-byte Spill
	callq	gtk_adjustment_get_upper
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_value
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movl	-48(%rbp), %esi         # 4-byte Reload
	movaps	%xmm1, %xmm0
	callq	gimp_size_entry_set_value
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$print_size_info_size_changed, %rdi
	movq	info+16, %r9
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	$0, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB20_3:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	print_size_info_offset_max_changed, .Lfunc_end20-print_size_info_offset_max_changed
	.cfi_endproc

	.type	info,@object            # @info
	.local	info
	.comm	info,96,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Ignore Page _Margins"
	.size	.L.str, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"toggled"
	.size	.L.str.1, 8

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"_Draw Crop Marks"
	.size	.L.str.2, 17

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Preview"
	.size	.L.str.3, 8

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"offsets-changed"
	.size	.L.str.4, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"notify::default-page-setup"
	.size	.L.str.5, 27

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"update-custom-widget"
	.size	.L.str.6, 21

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Size"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%p"
	.size	.L.str.8, 3

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"_Width:"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"_Height:"
	.size	.L.str.10, 9

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"pixels/%a"
	.size	.L.str.11, 10

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"_X resolution:"
	.size	.L.str.12, 15

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"_Y resolution:"
	.size	.L.str.13, 15

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"value-changed"
	.size	.L.str.14, 14

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"unit-changed"
	.size	.L.str.15, 13

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Position"
	.size	.L.str.16, 9

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"_Left:"
	.size	.L.str.17, 7

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"_Right:"
	.size	.L.str.18, 8

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"_Top:"
	.size	.L.str.19, 6

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"_Bottom:"
	.size	.L.str.20, 9

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"C_enter:"
	.size	.L.str.21, 9

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"center-mode\004None"
	.size	.L.str.22, 17

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Horizontally"
	.size	.L.str.23, 13

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Vertically"
	.size	.L.str.24, 11

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Both"
	.size	.L.str.25, 5

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"%%.%df x %%.%df %s"
	.size	.L.str.26, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
