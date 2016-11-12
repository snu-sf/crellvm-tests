	.text
	.file	"fractal-explorer-dialogs.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	-4610560118520545280    # double -2.5
.LCPI0_1:
	.quad	4612811918334230528     # double 2.5
.LCPI0_2:
	.quad	4562254508917369340     # double 0.001
.LCPI0_3:
	.quad	4576918229304087675     # double 0.01
.LCPI0_4:
	.quad	4607182418800017408     # double 1
.LCPI0_5:
	.quad	4652007308841189376     # double 1000
.LCPI0_6:
	.quad	4621819117588971520     # double 10
.LCPI0_7:
	.quad	-4609434218613702656    # double -3
.LCPI0_8:
	.quad	4613937818241073152     # double 3
.LCPI0_10:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI0_11:
	.quad	4611686018427387904     # double 2
.LCPI0_12:
	.quad	4665729213955833856     # double 8192
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_9:
	.long	1056964608              # float 0.5
	.text
	.globl	explorer_dialog
	.align	16, 0x90
	.type	explorer_dialog,@function
explorer_dialog:                        # @explorer_dialog
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
	subq	$3032, %rsp             # imm = 0xBD8
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
	movl	$1, %esi
	movq	$0, -192(%rbp)
	callq	gimp_ui_init
	movabsq	$.L.str.1, %rdi
	callq	gimp_gimprc_query
	movq	%rax, -176(%rbp)
	cmpq	$0, -176(%rbp)
	je	.LBB0_2
# BB#1:                                 # %if.then
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-176(%rbp), %rdi
	movq	%rcx, %rdx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	movq	-240(%rbp), %r8         # 8-byte Reload
	callq	g_filename_from_utf8
	movq	%rax, fractalexplorer_path
	movq	-176(%rbp), %rdi
	callq	g_free
	jmp	.LBB0_3
.LBB0_2:                                # %if.else
	movabsq	$.L.str.2, %rdi
	callq	gimp_personal_rc_file
	movabsq	$.L.str.3, %rdi
	movq	%rax, -208(%rbp)
	callq	gimp_config_build_data_path
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rdi
	callq	g_strescape
	movq	%rax, -224(%rbp)
	movq	-216(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.4, %rdi
	callq	gettext
	movq	-224(%rbp), %rcx
	movq	-208(%rbp), %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.1, %rcx
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	-256(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_message
	movq	-208(%rbp), %rdi
	callq	g_free
	movq	-224(%rbp), %rdi
	callq	g_free
.LBB0_3:                                # %if.end
	movl	$1, %eax
	movl	%eax, %esi
	movl	preview_width, %eax
	imull	preview_height, %eax
	imull	$3, %eax, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %edi
	movl	$280, %ecx              # imm = 0x118
	movl	%ecx, %esi
	movq	%rax, wint+8
	callq	g_malloc_n
	movabsq	$.L.str.5, %rdi
	movq	%rax, elements
	callq	gettext
	movabsq	$.L.str.6, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.7, %r9
	movabsq	$.L.str.8, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.9, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -268(%rbp)        # 4-byte Spill
	movl	%r10d, -272(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, maindlg
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-48(%rbp), %rdi
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movabsq	$.L.str.10, %rsi
	movabsq	$dialog_response, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-48(%rbp), %r8
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rax, %rdx
	movq	-296(%rbp), %rcx        # 8-byte Reload
	movq	-296(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.11, %rsi
	movabsq	$gtk_main_quit, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdi
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	movq	-304(%rbp), %r8         # 8-byte Reload
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movl	$12, %esi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-48(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
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
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -356(%rbp)        # 4-byte Spill
	movl	-356(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -372(%rbp)        # 4-byte Spill
	movl	-372(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	xorps	%xmm0, %xmm0
	movss	%xmm0, -376(%rbp)       # 4-byte Spill
	movss	-376(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	-376(%rbp), %xmm2       # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	-376(%rbp), %xmm3       # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	callq	gtk_alignment_new
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -388(%rbp)        # 4-byte Spill
	movl	-388(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_frame_new
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-72(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_preview_area_new
	movq	%rax, wint
	movq	wint, %rdi
	movl	preview_width, %esi
	movl	preview_height, %edx
	callq	gtk_widget_set_size_request
	movq	-96(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	wint, %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movabsq	$.L.str.12, %rsi
	movabsq	$preview_button_press_event, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	wint, %r11
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-424(%rbp), %rcx        # 8-byte Reload
	movq	-424(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.13, %rsi
	movabsq	$preview_button_release_event, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	wint, %rdi
	movq	%rdx, -432(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-432(%rbp), %rcx        # 8-byte Reload
	movq	-432(%rbp), %r8         # 8-byte Reload
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.14, %rsi
	movabsq	$preview_motion_notify_event, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	wint, %rdi
	movq	%rdx, -448(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-448(%rbp), %rcx        # 8-byte Reload
	movq	-448(%rbp), %r8         # 8-byte Reload
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.15, %rsi
	movabsq	$preview_leave_notify_event, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	wint, %rdi
	movq	%rdx, -464(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-464(%rbp), %rcx        # 8-byte Reload
	movq	-464(%rbp), %r8         # 8-byte Reload
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.16, %rsi
	movabsq	$preview_enter_notify_event, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	wint, %rdi
	movq	%rdx, -480(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-480(%rbp), %rcx        # 8-byte Reload
	movq	-480(%rbp), %r8         # 8-byte Reload
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movl	$13060, %esi            # imm = 0x3304
	movq	wint, %rdi
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gtk_widget_set_events
	movq	wint, %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.17, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_label
	movq	%rax, -104(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movabsq	$.L.str.18, %rsi
	movabsq	$explorer_toggle_update, %rax
	movabsq	$wvals, %rdi
	addq	$120, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-104(%rbp), %r11
	movq	%rdi, -512(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-512(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-104(%rbp), %rcx
	movq	%rax, -520(%rbp)        # 8-byte Spill
	movq	%rcx, -528(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	wvals+120, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.19, %rdi
	movq	-104(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	%esi, %edx
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.20, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_button_new_with_mnemonic
	movq	%rax, -160(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-160(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movabsq	$.L.str.21, %rsi
	movabsq	$dialog_redraw_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-160(%rbp), %rdi
	movq	-48(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movq	-160(%rbp), %rdi
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movabsq	$.L.str.22, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -96(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -80(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_homogeneous
	movq	-80(%rbp), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -588(%rbp)        # 4-byte Spill
	movl	-588(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.23, %rdi
	callq	gtk_button_new_from_stock
	movq	%rax, -160(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-160(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-160(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.21, %rsi
	movabsq	$dialog_step_in_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-160(%rbp), %rdi
	movq	-48(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.24, %rdi
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gtk_button_new_from_stock
	movq	%rax, -160(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-160(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-160(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.21, %rsi
	movabsq	$dialog_step_out_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-160(%rbp), %rdi
	movq	-48(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movl	$6, %esi
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_homogeneous
	movq	-80(%rbp), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-640(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.25, %rdi
	callq	gtk_button_new_from_stock
	movq	%rax, -160(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-160(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-160(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.26, %rdi
	movq	-160(%rbp), %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.21, %rsi
	movabsq	$dialog_undo_zoom_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-160(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -664(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-664(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.27, %rdi
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	gtk_button_new_from_stock
	movq	%rax, -160(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-160(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-160(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.28, %rdi
	movq	-160(%rbp), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.21, %rsi
	movabsq	$dialog_redo_zoom_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-160(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -696(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-696(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	gtk_notebook_new
	movq	%rax, -136(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-136(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-136(%rbp), %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-728(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.29, %rdi
	movq	-80(%rbp), %rsi
	movq	%rsi, -736(%rbp)        # 8-byte Spill
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	-744(%rbp), %rdi        # 8-byte Reload
	movq	-736(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_notebook_append_page
	movq	-80(%rbp), %rdi
	movl	%eax, -748(%rbp)        # 4-byte Spill
	callq	gtk_widget_show
	movabsq	$.L.str.30, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -764(%rbp)        # 4-byte Spill
	movl	-764(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movl	$8, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-776(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-152(%rbp), %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-784(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-152(%rbp), %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-792(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movl	$12, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	movq	-96(%rbp), %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-800(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-152(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-152(%rbp), %rdi
	callq	gtk_widget_show
	movq	-152(%rbp), %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-808(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.31, %rdi
	movq	%rax, -816(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$200, %r8d
	movl	$10, %r9d
	movsd	.LCPI0_7, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI0_8, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI0_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI0_3, %xmm4         # xmm4 = mem[0],zero
	movl	$5, %edx
	movl	$1, %r10d
	xorps	%xmm0, %xmm0
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movsd	wvals+8, %xmm5          # xmm5 = mem[0],zero
	movq	-816(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -824(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -828(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	%rax, %rcx
	movsd	%xmm0, -840(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$5, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-840(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-840(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -844(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.32, %rsi
	movabsq	$explorer_double_adjustment_update, %rcx
	movabsq	$wvals, %rdi
	addq	$8, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	elements, %r11
	movq	%rax, 72(%r11)
	movq	elements, %rax
	movq	72(%rax), %rax
	movq	%rdi, -856(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-856(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-152(%rbp), %rcx
	movq	%rax, -864(%rbp)        # 8-byte Spill
	movq	%rcx, -872(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-872(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.33, %rdi
	movq	%rax, -880(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$200, %r8d
	movl	$10, %r9d
	movsd	.LCPI0_7, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI0_8, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI0_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI0_3, %xmm4         # xmm4 = mem[0],zero
	movl	$5, %r10d
	xorps	%xmm0, %xmm0
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movsd	wvals+16, %xmm5         # xmm5 = mem[0],zero
	movq	-880(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -888(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -896(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$5, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-896(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-896(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -900(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.32, %rsi
	movabsq	$explorer_double_adjustment_update, %rcx
	movabsq	$wvals, %rdi
	addq	$16, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	elements, %r11
	movq	%rax, 80(%r11)
	movq	elements, %rax
	movq	80(%rax), %rax
	movq	%rdi, -912(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-912(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-152(%rbp), %rcx
	movq	%rax, -920(%rbp)        # 8-byte Spill
	movq	%rcx, -928(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-928(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.34, %rdi
	movq	%rax, -936(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	movl	$200, %r8d
	movl	$10, %r9d
	movsd	.LCPI0_7, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI0_8, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI0_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI0_3, %xmm4         # xmm4 = mem[0],zero
	movl	$5, %r10d
	movl	$1, %ebx
	xorps	%xmm0, %xmm0
	xorl	%r14d, %r14d
	movl	%r14d, %ecx
	movsd	wvals+24, %xmm5         # xmm5 = mem[0],zero
	movq	-936(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -944(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -952(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$5, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-952(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-952(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%ebx, -956(%rbp)        # 4-byte Spill
	movl	%r10d, -960(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.32, %rsi
	movabsq	$explorer_double_adjustment_update, %rcx
	movabsq	$wvals, %rdi
	addq	$24, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	elements, %r11
	movq	%rax, 88(%r11)
	movq	elements, %rax
	movq	88(%rax), %rax
	movq	%rdi, -968(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-968(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-152(%rbp), %rcx
	movq	%rax, -976(%rbp)        # 8-byte Spill
	movq	%rcx, -984(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-984(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.35, %rdi
	movq	%rax, -992(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$3, %edx
	movl	$200, %r8d
	movl	$10, %r9d
	movsd	.LCPI0_7, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI0_8, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI0_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI0_3, %xmm4         # xmm4 = mem[0],zero
	movl	$5, %r10d
	movl	$1, %ebx
	xorps	%xmm0, %xmm0
	xorl	%r14d, %r14d
	movl	%r14d, %ecx
	movsd	wvals+32, %xmm5         # xmm5 = mem[0],zero
	movq	-992(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -1000(%rbp)       # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -1008(%rbp)      # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$5, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-1008(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-1008(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%ebx, -1012(%rbp)       # 4-byte Spill
	movl	%r10d, -1016(%rbp)      # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.32, %rsi
	movabsq	$explorer_double_adjustment_update, %rcx
	movabsq	$wvals, %rdi
	addq	$32, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	elements, %r11
	movq	%rax, 96(%r11)
	movq	elements, %rax
	movq	96(%rax), %rax
	movq	%rdi, -1024(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-1024(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movq	-152(%rbp), %rcx
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	movq	%rcx, -1040(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1040(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.36, %rdi
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.37, %rdi
	movsd	wvals+40, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -1056(%rbp)       # 8-byte Spill
	movsd	%xmm0, -1064(%rbp)      # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$4, %edx
	movl	$200, %r8d
	movl	$10, %r9d
	movsd	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_5, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI0_6, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r10d
	xorps	%xmm1, %xmm1
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movq	-1048(%rbp), %rdi       # 8-byte Reload
	movq	-1056(%rbp), %r11       # 8-byte Reload
	movq	%rcx, -1072(%rbp)       # 8-byte Spill
	movq	%r11, %rcx
	movsd	-1064(%rbp), %xmm3      # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm0, -1080(%rbp)      # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-1080(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	%xmm1, -1088(%rbp)      # 8-byte Spill
	movaps	%xmm5, %xmm1
	movaps	%xmm5, %xmm3
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-1088(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-1088(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -1092(%rbp)      # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.32, %rsi
	movabsq	$explorer_double_adjustment_update, %rcx
	movabsq	$wvals, %rdi
	addq	$40, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	elements, %r11
	movq	%rax, 104(%r11)
	movq	elements, %rax
	movq	104(%rax), %rax
	movq	%rdi, -1104(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-1104(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movq	-152(%rbp), %rcx
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	movq	%rcx, -1120(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1120(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.38, %rdi
	movq	%rax, -1128(%rbp)       # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.39, %rdi
	movsd	wvals+48, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	movsd	%xmm0, -1144(%rbp)      # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$5, %edx
	movl	$200, %r8d
	movl	$10, %r9d
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI0_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI0_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI0_3, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r10d
	xorps	%xmm0, %xmm0
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movq	-1128(%rbp), %rdi       # 8-byte Reload
	movq	-1136(%rbp), %r11       # 8-byte Reload
	movq	%rcx, -1152(%rbp)       # 8-byte Spill
	movq	%r11, %rcx
	movsd	-1144(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	%xmm0, -1160(%rbp)      # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$5, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-1160(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-1160(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -1164(%rbp)      # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.32, %rsi
	movabsq	$explorer_double_adjustment_update, %rcx
	movabsq	$wvals, %rdi
	addq	$48, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	elements, %r11
	movq	%rax, 112(%r11)
	movq	elements, %rax
	movq	112(%rax), %rax
	movq	%rdi, -1176(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-1176(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movq	-152(%rbp), %rcx
	movq	%rax, -1184(%rbp)       # 8-byte Spill
	movq	%rcx, -1192(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1192(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.40, %rdi
	movq	%rax, -1200(%rbp)       # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.39, %rdi
	movsd	wvals+56, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -1208(%rbp)       # 8-byte Spill
	movsd	%xmm0, -1216(%rbp)      # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$6, %edx
	movl	$200, %r8d
	movl	$10, %r9d
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI0_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI0_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI0_3, %xmm4         # xmm4 = mem[0],zero
	movl	$5, %r10d
	movl	$1, %ebx
	xorps	%xmm0, %xmm0
	xorl	%r14d, %r14d
	movl	%r14d, %ecx
	movq	-1200(%rbp), %rdi       # 8-byte Reload
	movq	-1208(%rbp), %r11       # 8-byte Reload
	movq	%rcx, -1224(%rbp)       # 8-byte Spill
	movq	%r11, %rcx
	movsd	-1216(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	%xmm0, -1232(%rbp)      # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$5, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-1232(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-1232(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%ebx, -1236(%rbp)       # 4-byte Spill
	movl	%r10d, -1240(%rbp)      # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.32, %rsi
	movabsq	$explorer_double_adjustment_update, %rcx
	movabsq	$wvals, %rdi
	addq	$56, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	elements, %r11
	movq	%rax, 120(%r11)
	movq	elements, %rax
	movq	120(%rax), %rax
	movq	%rdi, -1248(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-1248(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movl	$6, %esi
	movq	%rax, -1256(%rbp)       # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -1264(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1264(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_homogeneous
	movq	-152(%rbp), %rax
	movq	%rax, -1272(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1272(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$3, %ecx
	movl	$7, %r8d
	movl	$8, %r9d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_table_attach_defaults
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.41, %rdi
	callq	gtk_button_new_from_stock
	movq	%rax, -160(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -1280(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1280(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-160(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movabsq	$.L.str.21, %rsi
	movabsq	$create_load_file_chooser, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-160(%rbp), %rdi
	movq	-48(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movq	-160(%rbp), %rdi
	movq	%rax, -1288(%rbp)       # 8-byte Spill
	callq	gtk_widget_show
	movabsq	$.L.str.42, %rdi
	movq	-160(%rbp), %rax
	movq	%rax, -1296(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-1296(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.43, %rdi
	callq	gtk_button_new_from_stock
	movq	%rax, -160(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -1304(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1304(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-160(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movabsq	$.L.str.21, %rsi
	movabsq	$dialog_reset_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-160(%rbp), %rdi
	movq	-48(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movq	-160(%rbp), %rdi
	movq	%rax, -1312(%rbp)       # 8-byte Spill
	callq	gtk_widget_show
	movabsq	$.L.str.44, %rdi
	movq	-160(%rbp), %rax
	movq	%rax, -1320(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-1320(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.45, %rdi
	callq	gtk_button_new_from_stock
	movq	%rax, -160(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -1328(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1328(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-160(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movabsq	$.L.str.21, %rsi
	movabsq	$create_save_file_chooser, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-160(%rbp), %rdi
	movq	-48(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movq	-160(%rbp), %rdi
	movq	%rax, -1336(%rbp)       # 8-byte Spill
	callq	gtk_widget_show
	movabsq	$.L.str.46, %rdi
	movq	-160(%rbp), %rax
	movq	%rax, -1344(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-1344(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.47, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -1352(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1352(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -144(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -1360(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-1360(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-144(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-144(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.48, %rdi
	movl	wvals, %r8d
	movl	%r8d, -1364(%rbp)       # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.49, %rdi
	movq	elements, %rsi
	movq	%rax, -1376(%rbp)       # 8-byte Spill
	movq	%rsi, -1384(%rbp)       # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.50, %rdi
	movq	elements, %rsi
	addq	$8, %rsi
	movq	%rax, -1392(%rbp)       # 8-byte Spill
	movq	%rsi, -1400(%rbp)       # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.51, %rdi
	movq	elements, %rsi
	addq	$16, %rsi
	movq	%rax, -1408(%rbp)       # 8-byte Spill
	movq	%rsi, -1416(%rbp)       # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.52, %rdi
	movq	elements, %rsi
	addq	$24, %rsi
	movq	%rax, -1424(%rbp)       # 8-byte Spill
	movq	%rsi, -1432(%rbp)       # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.53, %rdi
	movq	elements, %rsi
	addq	$32, %rsi
	movq	%rax, -1440(%rbp)       # 8-byte Spill
	movq	%rsi, -1448(%rbp)       # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.54, %rdi
	movq	elements, %rsi
	addq	$40, %rsi
	movq	%rax, -1456(%rbp)       # 8-byte Spill
	movq	%rsi, -1464(%rbp)       # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.55, %rdi
	movq	elements, %rsi
	addq	$48, %rsi
	movq	%rax, -1472(%rbp)       # 8-byte Spill
	movq	%rsi, -1480(%rbp)       # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.56, %rdi
	movq	elements, %rsi
	addq	$56, %rsi
	movq	%rax, -1488(%rbp)       # 8-byte Spill
	movq	%rsi, -1496(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$explorer_radio_update, %r11
	movabsq	$wvals, %r15
	movl	$1, %ecx
	movl	$2, %edx
	movl	$3, %r8d
	movl	$4, %r9d
	movl	$5, %r10d
	movl	$6, %ebx
	movl	$7, %r14d
	movl	$8, %r12d
	movq	elements, %r13
	addq	$64, %r13
	movl	%edx, -1500(%rbp)       # 4-byte Spill
	movq	%r11, %rdx
	movl	%ecx, -1504(%rbp)       # 4-byte Spill
	movq	%r15, %rcx
	movl	-1364(%rbp), %r11d      # 4-byte Reload
	movl	%r8d, -1508(%rbp)       # 4-byte Spill
	movl	%r11d, %r8d
	movq	-1376(%rbp), %r15       # 8-byte Reload
	movl	%r9d, -1512(%rbp)       # 4-byte Spill
	movq	%r15, %r9
	movl	$0, (%rsp)
	movq	-1384(%rbp), %r11       # 8-byte Reload
	movq	%r11, 8(%rsp)
	movq	-1392(%rbp), %r11       # 8-byte Reload
	movq	%r11, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	-1400(%rbp), %r11       # 8-byte Reload
	movq	%r11, 32(%rsp)
	movq	-1408(%rbp), %r11       # 8-byte Reload
	movq	%r11, 40(%rsp)
	movl	$2, 48(%rsp)
	movq	-1416(%rbp), %r11       # 8-byte Reload
	movq	%r11, 56(%rsp)
	movq	-1424(%rbp), %r11       # 8-byte Reload
	movq	%r11, 64(%rsp)
	movl	$3, 72(%rsp)
	movq	-1432(%rbp), %r11       # 8-byte Reload
	movq	%r11, 80(%rsp)
	movq	-1440(%rbp), %r11       # 8-byte Reload
	movq	%r11, 88(%rsp)
	movl	$4, 96(%rsp)
	movq	-1448(%rbp), %r11       # 8-byte Reload
	movq	%r11, 104(%rsp)
	movq	-1456(%rbp), %r11       # 8-byte Reload
	movq	%r11, 112(%rsp)
	movl	$5, 120(%rsp)
	movq	-1464(%rbp), %r11       # 8-byte Reload
	movq	%r11, 128(%rsp)
	movq	-1472(%rbp), %r11       # 8-byte Reload
	movq	%r11, 136(%rsp)
	movl	$6, 144(%rsp)
	movq	-1480(%rbp), %r11       # 8-byte Reload
	movq	%r11, 152(%rsp)
	movq	-1488(%rbp), %r11       # 8-byte Reload
	movq	%r11, 160(%rsp)
	movl	$7, 168(%rsp)
	movq	-1496(%rbp), %r11       # 8-byte Reload
	movq	%r11, 176(%rsp)
	movq	%rax, 184(%rsp)
	movl	$8, 192(%rsp)
	movq	%r13, 200(%rsp)
	movq	$0, 208(%rsp)
	movb	$0, %al
	movl	%ebx, -1516(%rbp)       # 4-byte Spill
	movl	%r12d, -1520(%rbp)      # 4-byte Spill
	movl	%r14d, -1524(%rbp)      # 4-byte Spill
	movl	%r10d, -1528(%rbp)      # 4-byte Spill
	callq	gimp_int_radio_group_new
	movl	$1, %edi
	movl	$2, %esi
	movq	%rax, -112(%rbp)
	callq	gtk_box_new
	movq	%rax, -120(%rbp)
	movl	$3, -196(%rbp)
.LBB0_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$5, -196(%rbp)
	jg	.LBB0_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB0_4 Depth=1
	movslq	-196(%rbp), %rax
	movq	elements, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movslq	-196(%rbp), %rcx
	movq	elements, %rdi
	movq	(%rdi,%rcx,8), %rdi
	movq	%rax, -1536(%rbp)       # 8-byte Spill
	callq	gtk_widget_hide
	movq	-112(%rbp), %rax
	movq	%rax, -1544(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-1544(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movslq	-196(%rbp), %rcx
	movq	elements, %rsi
	movq	(%rsi,%rcx,8), %rsi
	movq	%rax, %rdi
	callq	gtk_container_remove
	movq	-120(%rbp), %rax
	movq	%rax, -1552(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1552(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movslq	-196(%rbp), %rcx
	movq	elements, %rsi
	movq	(%rsi,%rcx,8), %rsi
	movq	%rax, %rdi
	movl	%edx, -1556(%rbp)       # 4-byte Spill
	movl	-1556(%rbp), %ecx       # 4-byte Reload
	movl	-1556(%rbp), %r8d       # 4-byte Reload
	callq	gtk_box_pack_start
	movslq	-196(%rbp), %rax
	movq	elements, %rsi
	movq	(%rsi,%rax,8), %rdi
	callq	gtk_widget_show
	movslq	-196(%rbp), %rax
	movq	elements, %rsi
	movq	(%rsi,%rax,8), %rax
	movq	%rax, %rdi
	callq	g_object_unref
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB0_4
.LBB0_7:                                # %for.end
	movl	$1, %edi
	movl	$2, %esi
	callq	gtk_box_new
	movq	%rax, -128(%rbp)
	movl	$6, -196(%rbp)
.LBB0_8:                                # %for.cond.243
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -196(%rbp)
	jg	.LBB0_11
# BB#9:                                 # %for.body.246
                                        #   in Loop: Header=BB0_8 Depth=1
	movslq	-196(%rbp), %rax
	movq	elements, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movslq	-196(%rbp), %rcx
	movq	elements, %rdi
	movq	(%rdi,%rcx,8), %rdi
	movq	%rax, -1568(%rbp)       # 8-byte Spill
	callq	gtk_widget_hide
	movq	-112(%rbp), %rax
	movq	%rax, -1576(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-1576(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movslq	-196(%rbp), %rcx
	movq	elements, %rsi
	movq	(%rsi,%rcx,8), %rsi
	movq	%rax, %rdi
	callq	gtk_container_remove
	movq	-128(%rbp), %rax
	movq	%rax, -1584(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1584(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movslq	-196(%rbp), %rcx
	movq	elements, %rsi
	movq	(%rsi,%rcx,8), %rsi
	movq	%rax, %rdi
	movl	%edx, -1588(%rbp)       # 4-byte Spill
	movl	-1588(%rbp), %ecx       # 4-byte Reload
	movl	-1588(%rbp), %r8d       # 4-byte Reload
	callq	gtk_box_pack_start
	movslq	-196(%rbp), %rax
	movq	elements, %rsi
	movq	(%rsi,%rax,8), %rdi
	callq	gtk_widget_show
	movslq	-196(%rbp), %rax
	movq	elements, %rsi
	movq	(%rsi,%rax,8), %rax
	movq	%rax, %rdi
	callq	g_object_unref
# BB#10:                                # %for.inc.270
                                        #   in Loop: Header=BB0_8 Depth=1
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB0_8
.LBB0_11:                               # %for.end.272
	movq	-144(%rbp), %rax
	movq	%rax, -1600(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1600(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -1604(%rbp)       # 4-byte Spill
	movl	-1604(%rbp), %r8d       # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movq	-144(%rbp), %rax
	movq	%rax, -1616(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1616(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -1620(%rbp)       # 4-byte Spill
	movl	-1620(%rbp), %r8d       # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	movq	-144(%rbp), %rax
	movq	%rax, -1632(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1632(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -1636(%rbp)       # 4-byte Spill
	movl	-1636(%rbp), %r8d       # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-128(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -1648(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-1648(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-136(%rbp), %rax
	movq	%rax, -1656(%rbp)       # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-1656(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.57, %rdi
	movq	-80(%rbp), %rsi
	movq	%rsi, -1664(%rbp)       # 8-byte Spill
	movq	%rax, -1672(%rbp)       # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	-1672(%rbp), %rdi       # 8-byte Reload
	movq	-1664(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_notebook_append_page
	movq	-80(%rbp), %rdi
	movl	%eax, -1676(%rbp)       # 4-byte Spill
	callq	gtk_widget_show
	movabsq	$.L.str.58, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -1688(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1688(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -1692(%rbp)       # 4-byte Spill
	movl	-1692(%rbp), %r8d       # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movl	$2, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -1704(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1704(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-152(%rbp), %rax
	movq	%rax, -1712(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1712(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-96(%rbp), %rax
	movq	%rax, -1720(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-1720(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-152(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-152(%rbp), %rdi
	callq	gtk_widget_show
	movq	-152(%rbp), %rax
	movq	%rax, -1728(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1728(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.59, %rdi
	movq	%rax, -1736(%rbp)       # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.60, %rdi
	cvtsi2sdl	wvals+124, %xmm0
	movq	%rax, -1744(%rbp)       # 8-byte Spill
	movsd	%xmm0, -1752(%rbp)      # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$200, %r8d
	movsd	.LCPI0_11, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI0_12, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI0_4, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI0_6, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %edx
	xorps	%xmm0, %xmm0
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movq	-1736(%rbp), %rdi       # 8-byte Reload
	movq	%rsi, -1760(%rbp)       # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -1764(%rbp)       # 4-byte Spill
	movl	%ecx, %edx
	movq	-1744(%rbp), %r10       # 8-byte Reload
	movl	%ecx, -1768(%rbp)       # 4-byte Spill
	movq	%r10, %rcx
	movl	-1768(%rbp), %r9d       # 4-byte Reload
	movsd	-1752(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	%xmm0, -1776(%rbp)      # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-1776(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-1776(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.32, %rsi
	movabsq	$explorer_number_of_colors_callback, %rcx
	movabsq	$wvals, %rdi
	addq	$124, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	elements, %r10
	movq	%rax, 128(%r10)
	movq	elements, %rax
	movq	128(%rax), %rax
	movq	%rdi, -1784(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-1784(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.61, %rdi
	movq	%rax, -1792(%rbp)       # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_label
	movq	%rax, -104(%rbp)
	movq	elements, %rcx
	movq	%rax, 136(%rcx)
	movq	-152(%rbp), %rax
	movq	%rax, -1800(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1800(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$3, %ecx
	movl	$1, %r8d
	movl	$2, %r9d
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_table_attach_defaults
	movabsq	$.L.str.18, %rsi
	movabsq	$explorer_toggle_update, %rax
	movabsq	$wvals, %rdi
	addq	$132, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-104(%rbp), %r10
	movq	%rdi, -1808(%rbp)       # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-1808(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movq	-104(%rbp), %rcx
	movq	%rax, -1816(%rbp)       # 8-byte Spill
	movq	%rcx, -1824(%rbp)       # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-1824(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	wvals+132, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.62, %rdi
	movq	-104(%rbp), %rax
	movq	%rax, -1832(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	%esi, %edx
	movq	-1832(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.63, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -1840(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1840(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movl	$3, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -1848(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1848(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-152(%rbp), %rax
	movq	%rax, -1856(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1856(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-96(%rbp), %rax
	movq	%rax, -1864(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-1864(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-152(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-152(%rbp), %rdi
	callq	gtk_widget_show
	movq	-152(%rbp), %rax
	movq	%rax, -1872(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1872(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.64, %rdi
	movq	%rax, -1880(%rbp)       # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.65, %rdi
	movsd	wvals+72, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -1888(%rbp)       # 8-byte Spill
	movsd	%xmm0, -1896(%rbp)      # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$200, %r8d
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_4, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI0_3, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI0_10, %xmm4        # xmm4 = mem[0],zero
	movl	$2, %edx
	movl	$1, %r9d
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movq	-1880(%rbp), %rdi       # 8-byte Reload
	movq	%rsi, -1904(%rbp)       # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -1908(%rbp)       # 4-byte Spill
	movl	%ecx, %edx
	movq	-1888(%rbp), %r10       # 8-byte Reload
	movl	%ecx, -1912(%rbp)       # 4-byte Spill
	movq	%r10, %rcx
	movl	-1912(%rbp), %r11d      # 4-byte Reload
	movl	%r9d, -1916(%rbp)       # 4-byte Spill
	movl	%r11d, %r9d
	movsd	-1896(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -1928(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-1928(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-1928(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-1928(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.32, %rsi
	movabsq	$explorer_double_adjustment_update, %rcx
	movabsq	$wvals, %rdi
	addq	$72, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	elements, %r10
	movq	%rax, 144(%r10)
	movq	elements, %rax
	movq	144(%rax), %rax
	movq	%rdi, -1936(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-1936(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movq	-152(%rbp), %rcx
	movq	%rax, -1944(%rbp)       # 8-byte Spill
	movq	%rcx, -1952(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1952(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.66, %rdi
	movq	%rax, -1960(%rbp)       # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.67, %rdi
	movsd	wvals+80, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -1968(%rbp)       # 8-byte Spill
	movsd	%xmm0, -1976(%rbp)      # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	$1, %edx
	movl	$200, %r8d
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_4, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI0_3, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI0_10, %xmm4        # xmm4 = mem[0],zero
	movl	$2, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movq	-1960(%rbp), %rdi       # 8-byte Reload
	movl	%r9d, %esi
	movq	-1968(%rbp), %r10       # 8-byte Reload
	movq	%rcx, -1984(%rbp)       # 8-byte Spill
	movq	%r10, %rcx
	movsd	-1976(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -1992(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-1992(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-1992(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-1992(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -1996(%rbp)      # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.32, %rsi
	movabsq	$explorer_double_adjustment_update, %rcx
	movabsq	$wvals, %rdi
	addq	$80, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	elements, %r10
	movq	%rax, 152(%r10)
	movq	elements, %rax
	movq	152(%rax), %rax
	movq	%rdi, -2008(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-2008(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movq	-152(%rbp), %rcx
	movq	%rax, -2016(%rbp)       # 8-byte Spill
	movq	%rcx, -2024(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-2024(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.68, %rdi
	movq	%rax, -2032(%rbp)       # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.69, %rdi
	movsd	wvals+88, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -2040(%rbp)       # 8-byte Spill
	movsd	%xmm0, -2048(%rbp)      # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	$2, %edx
	movl	$200, %r8d
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_4, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI0_3, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI0_10, %xmm4        # xmm4 = mem[0],zero
	movl	$1, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movq	-2032(%rbp), %rdi       # 8-byte Reload
	movl	%r9d, %esi
	movq	-2040(%rbp), %r10       # 8-byte Reload
	movq	%rcx, -2056(%rbp)       # 8-byte Spill
	movq	%r10, %rcx
	movsd	-2048(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -2064(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-2064(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-2064(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-2064(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -2068(%rbp)      # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.32, %rsi
	movabsq	$explorer_double_adjustment_update, %rcx
	movabsq	$wvals, %rdi
	addq	$88, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	elements, %r10
	movq	%rax, 160(%r10)
	movq	elements, %rax
	movq	160(%rax), %rax
	movq	%rdi, -2080(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-2080(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.70, %rdi
	movq	%rax, -2088(%rbp)       # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -2096(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-2096(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -144(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -2104(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-2104(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-144(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-144(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.71, %rdi
	callq	gettext
	movabsq	$.L.str.72, %rdi
	movl	wvals+96, %r8d
	movq	%rax, -2112(%rbp)       # 8-byte Spill
	movl	%r8d, -2116(%rbp)       # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.73, %rdi
	movq	elements, %rsi
	addq	$168, %rsi
	movq	%rax, -2128(%rbp)       # 8-byte Spill
	movq	%rsi, -2136(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.74, %rsi
	movl	$15, %ecx
	movl	%ecx, %edx
	movq	elements, %r10
	addq	$168, %r10
	addq	$8, %r10
	movq	%rax, -2144(%rbp)       # 8-byte Spill
	movq	%r10, -2152(%rbp)       # 8-byte Spill
	callq	g_dpgettext
	movl	$1, %edi
	movabsq	$explorer_radio_update, %rdx
	movabsq	$wvals, %rsi
	addq	$96, %rsi
	xorl	%ecx, %ecx
	movl	$2, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %r10d
	movq	elements, %r14
	addq	$168, %r14
	addq	$16, %r14
	movq	-2112(%rbp), %r15       # 8-byte Reload
	movq	%rsi, -2160(%rbp)       # 8-byte Spill
	movq	%r15, %rsi
	movq	-2160(%rbp), %r12       # 8-byte Reload
	movl	%ecx, -2164(%rbp)       # 4-byte Spill
	movq	%r12, %rcx
	movl	-2116(%rbp), %r9d       # 4-byte Reload
	movl	%r8d, -2168(%rbp)       # 4-byte Spill
	movl	%r9d, %r8d
	movq	-2128(%rbp), %r9        # 8-byte Reload
	movl	$0, (%rsp)
	movq	-2136(%rbp), %r13       # 8-byte Reload
	movq	%r13, 8(%rsp)
	movq	-2144(%rbp), %r13       # 8-byte Reload
	movq	%r13, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	-2152(%rbp), %r13       # 8-byte Reload
	movq	%r13, 32(%rsp)
	movq	%rax, 40(%rsp)
	movl	$2, 48(%rsp)
	movq	%r14, 56(%rsp)
	movq	$0, 64(%rsp)
	movb	$0, %al
	movq	%r10, -2176(%rbp)       # 8-byte Spill
	callq	gimp_int_radio_group_new
	movabsq	$.L.str.75, %rdi
	movq	%rax, -96(%rbp)
	movq	elements, %rax
	movq	168(%rax), %rax
	movq	%rax, -2184(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	-2184(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.76, %rdi
	movq	elements, %rax
	movq	176(%rax), %rax
	movq	%rax, -2192(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	-2192(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.77, %rdi
	movq	elements, %rax
	movq	184(%rax), %rax
	movq	%rax, -2200(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	-2200(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	-144(%rbp), %rax
	movq	%rax, -2208(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-2208(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r8d
	xorl	%r11d, %r11d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	movl	%r11d, %r8d
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movq	-96(%rbp), %rax
	movq	%rax, -2216(%rbp)       # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-2216(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movabsq	$.L.str.78, %rdi
	movq	%rax, -112(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_label
	movq	%rax, -104(%rbp)
	movq	elements, %rsi
	movq	%rax, 192(%rsi)
	movq	-104(%rbp), %rax
	movq	%rax, -2224(%rbp)       # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-2224(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	wvals+108, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-112(%rbp), %rax
	movq	%rax, -2232(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-2232(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -2236(%rbp)       # 4-byte Spill
	movl	-2236(%rbp), %r8d       # 4-byte Reload
	callq	gtk_box_pack_start
	movabsq	$.L.str.18, %rsi
	movabsq	$explorer_toggle_update, %rax
	movabsq	$wvals, %rdi
	addq	$108, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-104(%rbp), %r10
	movq	%rdi, -2248(%rbp)       # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-2248(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movq	-104(%rbp), %rdi
	movq	%rax, -2256(%rbp)       # 8-byte Spill
	callq	gtk_widget_show
	movabsq	$.L.str.79, %rdi
	movq	-104(%rbp), %rax
	movq	%rax, -2264(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-2264(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.80, %rdi
	callq	gettext
	movabsq	$.L.str.72, %rdi
	movl	wvals+100, %r8d
	movq	%rax, -2272(%rbp)       # 8-byte Spill
	movl	%r8d, -2276(%rbp)       # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.73, %rdi
	movq	elements, %rcx
	addq	$200, %rcx
	movq	%rax, -2288(%rbp)       # 8-byte Spill
	movq	%rcx, -2296(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.74, %rsi
	movl	$15, %r8d
	movl	%r8d, %edx
	movq	elements, %rcx
	addq	$200, %rcx
	addq	$8, %rcx
	movq	%rax, -2304(%rbp)       # 8-byte Spill
	movq	%rcx, -2312(%rbp)       # 8-byte Spill
	callq	g_dpgettext
	movl	$1, %edi
	movabsq	$explorer_radio_update, %rcx
	movabsq	$wvals, %rdx
	addq	$100, %rdx
	xorl	%r8d, %r8d
	movl	$2, %r9d
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movq	elements, %r10
	addq	$200, %r10
	addq	$16, %r10
	movq	-2272(%rbp), %r14       # 8-byte Reload
	movq	%rsi, -2320(%rbp)       # 8-byte Spill
	movq	%r14, %rsi
	movq	%rdx, -2328(%rbp)       # 8-byte Spill
	movq	%rcx, %rdx
	movq	-2328(%rbp), %rcx       # 8-byte Reload
	movl	-2276(%rbp), %r11d      # 4-byte Reload
	movl	%r8d, -2332(%rbp)       # 4-byte Spill
	movl	%r11d, %r8d
	movq	-2288(%rbp), %r15       # 8-byte Reload
	movl	%r9d, -2336(%rbp)       # 4-byte Spill
	movq	%r15, %r9
	movl	$0, (%rsp)
	movq	-2296(%rbp), %r12       # 8-byte Reload
	movq	%r12, 8(%rsp)
	movq	-2304(%rbp), %r12       # 8-byte Reload
	movq	%r12, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	-2312(%rbp), %r12       # 8-byte Reload
	movq	%r12, 32(%rsp)
	movq	%rax, 40(%rsp)
	movl	$2, 48(%rsp)
	movq	%r10, 56(%rsp)
	movq	$0, 64(%rsp)
	movb	$0, %al
	callq	gimp_int_radio_group_new
	movabsq	$.L.str.75, %rdi
	movq	%rax, -96(%rbp)
	movq	elements, %rax
	movq	200(%rax), %rax
	movq	%rax, -2344(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	-2344(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.76, %rdi
	movq	elements, %rax
	movq	208(%rax), %rax
	movq	%rax, -2352(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	-2352(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.77, %rdi
	movq	elements, %rax
	movq	216(%rax), %rax
	movq	%rax, -2360(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	-2360(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	-144(%rbp), %rax
	movq	%rax, -2368(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-2368(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r8d
	xorl	%r11d, %r11d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	movl	%r11d, %r8d
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movq	-96(%rbp), %rax
	movq	%rax, -2376(%rbp)       # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-2376(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movabsq	$.L.str.78, %rdi
	movq	%rax, -112(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_label
	movq	%rax, -104(%rbp)
	movq	elements, %rsi
	movq	%rax, 224(%rsi)
	movq	-104(%rbp), %rax
	movq	%rax, -2384(%rbp)       # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-2384(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	wvals+112, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-112(%rbp), %rax
	movq	%rax, -2392(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-2392(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -2396(%rbp)       # 4-byte Spill
	movl	-2396(%rbp), %r8d       # 4-byte Reload
	callq	gtk_box_pack_start
	movabsq	$.L.str.18, %rsi
	movabsq	$explorer_toggle_update, %rax
	movabsq	$wvals, %rdi
	addq	$112, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-104(%rbp), %r10
	movq	%rdi, -2408(%rbp)       # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-2408(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movq	-104(%rbp), %rdi
	movq	%rax, -2416(%rbp)       # 8-byte Spill
	callq	gtk_widget_show
	movabsq	$.L.str.79, %rdi
	movq	-104(%rbp), %rax
	movq	%rax, -2424(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-2424(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.81, %rdi
	callq	gettext
	movabsq	$.L.str.72, %rdi
	movl	wvals+104, %r8d
	movq	%rax, -2432(%rbp)       # 8-byte Spill
	movl	%r8d, -2436(%rbp)       # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.73, %rdi
	movq	elements, %rcx
	addq	$232, %rcx
	movq	%rax, -2448(%rbp)       # 8-byte Spill
	movq	%rcx, -2456(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.74, %rsi
	movl	$15, %r8d
	movl	%r8d, %edx
	movq	elements, %rcx
	addq	$232, %rcx
	addq	$8, %rcx
	movq	%rax, -2464(%rbp)       # 8-byte Spill
	movq	%rcx, -2472(%rbp)       # 8-byte Spill
	callq	g_dpgettext
	movl	$1, %edi
	movabsq	$explorer_radio_update, %rcx
	movabsq	$wvals, %rdx
	addq	$104, %rdx
	xorl	%r8d, %r8d
	movl	$2, %r9d
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movq	elements, %r10
	addq	$232, %r10
	addq	$16, %r10
	movq	-2432(%rbp), %r14       # 8-byte Reload
	movq	%rsi, -2480(%rbp)       # 8-byte Spill
	movq	%r14, %rsi
	movq	%rdx, -2488(%rbp)       # 8-byte Spill
	movq	%rcx, %rdx
	movq	-2488(%rbp), %rcx       # 8-byte Reload
	movl	-2436(%rbp), %r11d      # 4-byte Reload
	movl	%r8d, -2492(%rbp)       # 4-byte Spill
	movl	%r11d, %r8d
	movq	-2448(%rbp), %r15       # 8-byte Reload
	movl	%r9d, -2496(%rbp)       # 4-byte Spill
	movq	%r15, %r9
	movl	$0, (%rsp)
	movq	-2456(%rbp), %r12       # 8-byte Reload
	movq	%r12, 8(%rsp)
	movq	-2464(%rbp), %r12       # 8-byte Reload
	movq	%r12, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	-2472(%rbp), %r12       # 8-byte Reload
	movq	%r12, 32(%rsp)
	movq	%rax, 40(%rsp)
	movl	$2, 48(%rsp)
	movq	%r10, 56(%rsp)
	movq	$0, 64(%rsp)
	movb	$0, %al
	callq	gimp_int_radio_group_new
	movabsq	$.L.str.75, %rdi
	movq	%rax, -96(%rbp)
	movq	elements, %rax
	movq	232(%rax), %rax
	movq	%rax, -2504(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	-2504(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.76, %rdi
	movq	elements, %rax
	movq	240(%rax), %rax
	movq	%rax, -2512(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	-2512(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.77, %rdi
	movq	elements, %rax
	movq	248(%rax), %rax
	movq	%rax, -2520(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	-2520(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	-144(%rbp), %rax
	movq	%rax, -2528(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-2528(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r8d
	xorl	%r11d, %r11d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	movl	%r11d, %r8d
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movq	-96(%rbp), %rax
	movq	%rax, -2536(%rbp)       # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-2536(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movabsq	$.L.str.78, %rdi
	movq	%rax, -112(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_label
	movq	%rax, -104(%rbp)
	movq	elements, %rsi
	movq	%rax, 256(%rsi)
	movq	-104(%rbp), %rax
	movq	%rax, -2544(%rbp)       # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-2544(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	wvals+116, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-112(%rbp), %rax
	movq	%rax, -2552(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-2552(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -2556(%rbp)       # 4-byte Spill
	movl	-2556(%rbp), %r8d       # 4-byte Reload
	callq	gtk_box_pack_start
	movabsq	$.L.str.18, %rsi
	movabsq	$explorer_toggle_update, %rax
	movabsq	$wvals, %rdi
	addq	$116, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-104(%rbp), %r10
	movq	%rdi, -2568(%rbp)       # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-2568(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movq	-104(%rbp), %rdi
	movq	%rax, -2576(%rbp)       # 8-byte Spill
	callq	gtk_widget_show
	movabsq	$.L.str.79, %rdi
	movq	-104(%rbp), %rax
	movq	%rax, -2584(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-2584(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.82, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -2592(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-2592(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$2, %esi
	callq	gtk_box_new
	movq	%rax, -112(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -2600(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-2600(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.83, %rdi
	movq	-192(%rbp), %rax
	movq	%rax, -2608(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-2608(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_label
	movq	elements, %rsi
	movq	%rax, 264(%rsi)
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -2616(%rbp)       # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-2616(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	%rax, -192(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -2624(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-2624(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -2628(%rbp)       # 4-byte Spill
	movl	-2628(%rbp), %r8d       # 4-byte Reload
	callq	gtk_box_pack_start
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.84, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
	movabsq	$.L.str.18, %rsi
	movabsq	$explorer_radio_update, %rax
	movabsq	$wvals, %rdx
	addq	$64, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-104(%rbp), %rdi
	movq	%rdx, -2640(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movq	-2640(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movq	-104(%rbp), %rcx
	movq	%rax, -2648(%rbp)       # 8-byte Spill
	movq	%rcx, -2656(%rbp)       # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-2656(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$0, wvals+64
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.85, %rdi
	movq	-104(%rbp), %rax
	movq	%rax, -2664(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	%esi, %edx
	movq	-2664(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -144(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -2672(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-2672(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-144(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-144(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.86, %rdi
	movq	-192(%rbp), %rax
	movq	%rax, -2680(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-2680(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_label
	movq	elements, %rsi
	movq	%rax, 272(%rsi)
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -2688(%rbp)       # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-2688(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	%rax, -192(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -2696(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-2696(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.84, %rsi
	movl	$1, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
	movabsq	$.L.str.18, %rsi
	movabsq	$explorer_radio_update, %rax
	movabsq	$wvals, %rdx
	addq	$64, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-104(%rbp), %rdi
	movq	%rdx, -2704(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movq	-2704(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movq	-104(%rbp), %rcx
	movq	%rax, -2712(%rbp)       # 8-byte Spill
	movq	%rcx, -2720(%rbp)       # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-2720(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$1, wvals+64
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.87, %rdi
	movq	-104(%rbp), %rax
	movq	%rax, -2728(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	%esi, %edx
	movq	-2728(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	callq	gimp_context_get_gradient
	movabsq	$n_gradient_samples, %rcx
	movabsq	$gradient_samples, %r8
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rdi
	movl	wvals+124, %esi
	movl	wvals+128, %edx
	callq	gimp_gradient_get_uniform_samples
	movabsq	$.L.str.88, %rdi
	movl	%eax, -2732(%rbp)       # 4-byte Spill
	callq	gettext
	movq	-184(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_gradient_select_button_new
	movabsq	$.L.str.89, %rsi
	movabsq	$explorer_gradient_select_callback, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	%rdi, -2744(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-2744(%rbp), %rcx       # 8-byte Reload
	movq	-2744(%rbp), %r8        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-184(%rbp), %rdi
	movq	%rax, -2752(%rbp)       # 8-byte Spill
	callq	g_free
	movq	-144(%rbp), %rax
	movq	%rax, -2760(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-2760(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-168(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-168(%rbp), %rdi
	callq	gtk_widget_show
	movss	.LCPI0_9, %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	movss	%xmm0, -2764(%rbp)      # 4-byte Spill
	movss	-2764(%rbp), %xmm2      # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	%xmm1, -2768(%rbp)      # 4-byte Spill
	movaps	%xmm2, %xmm1
	movss	-2768(%rbp), %xmm2      # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	-2768(%rbp), %xmm3      # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	callq	gtk_alignment_new
	movq	%rax, -72(%rbp)
	movl	$1, -232(%rbp)
.LBB0_12:                               # %for.cond.498
                                        # =>This Inner Loop Header: Depth=1
	movl	-232(%rbp), %eax
	imull	-232(%rbp), %eax
	imull	-232(%rbp), %eax
	cmpl	$8192, %eax             # imm = 0x2000
	jge	.LBB0_15
# BB#13:                                # %for.body.503
                                        #   in Loop: Header=BB0_12 Depth=1
	jmp	.LBB0_14
.LBB0_14:                               # %for.inc.504
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	-232(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -232(%rbp)
	jmp	.LBB0_12
.LBB0_15:                               # %for.end.506
	movl	wvals+124, %eax
	cltd
	idivl	-232(%rbp)
	movl	%eax, -228(%rbp)
.LBB0_16:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-228(%rbp), %eax
	imull	-232(%rbp), %eax
	cmpl	$8192, %eax             # imm = 0x2000
	jge	.LBB0_18
# BB#17:                                # %while.body
                                        #   in Loop: Header=BB0_16 Depth=1
	movl	-228(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -228(%rbp)
	jmp	.LBB0_16
.LBB0_18:                               # %while.end
	movq	-72(%rbp), %rdi
	movl	-228(%rbp), %esi
	movl	-232(%rbp), %eax
	shll	$2, %eax
	movl	%eax, %edx
	callq	gtk_widget_set_size_request
	movq	-112(%rbp), %rdi
	movq	%rdi, -2776(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-2776(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -2780(%rbp)       # 4-byte Spill
	movl	-2780(%rbp), %ecx       # 4-byte Reload
	movl	-2780(%rbp), %r8d       # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_preview_area_new
	movl	$32, %ecx
	movq	%rax, cmap_preview
	movq	cmap_preview, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_widget_set_size_request
	movq	-72(%rbp), %rax
	movq	%rax, -2792(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-2792(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	cmap_preview, %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movabsq	$.L.str.90, %rsi
	movabsq	$cmap_preview_size_allocate, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	cmap_preview, %r10
	movq	%rdi, -2800(%rbp)       # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-2800(%rbp), %rcx       # 8-byte Reload
	movq	-2800(%rbp), %r8        # 8-byte Reload
	callq	g_signal_connect_data
	movq	cmap_preview, %rdi
	movq	%rax, -2808(%rbp)       # 8-byte Spill
	callq	gtk_widget_show
	callq	add_objects_list
	movq	%rax, -96(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -2816(%rbp)       # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-2816(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.91, %rdi
	movq	-96(%rbp), %rsi
	movq	%rsi, -2824(%rbp)       # 8-byte Spill
	movq	%rax, -2832(%rbp)       # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	-2832(%rbp), %rdi       # 8-byte Reload
	movq	-2824(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_notebook_append_page
	movq	-96(%rbp), %rdi
	movl	%eax, -2836(%rbp)       # 4-byte Spill
	callq	gtk_widget_show
	movq	-136(%rbp), %rcx
	movq	%rcx, -2848(%rbp)       # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-2848(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_notebook_set_current_page
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, ready_now
	callq	set_cmap_preview
	callq	dialog_update_preview
	callq	gtk_main
	movq	wint+8, %rdi
	callq	g_free
	movl	wint+16, %eax
	addq	$3032, %rsp             # imm = 0xBD8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	explorer_dialog, .Lfunc_end0-explorer_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB1_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB1_2:                                # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	$32, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end1:
	.size	g_message, .Lfunc_end1-g_message
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_response,@function
dialog_response:                        # @dialog_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-12(%rbp), %esi
	subl	$-5, %esi
	movl	%esi, -28(%rbp)         # 4-byte Spill
	jne	.LBB2_2
	jmp	.LBB2_1
.LBB2_1:                                # %sw.bb
	movl	$1, wint+16
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
	jmp	.LBB2_3
.LBB2_2:                                # %sw.default
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
.LBB2_3:                                # %sw.epilog
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	dialog_response, .Lfunc_end2-dialog_response
	.cfi_endproc

	.align	16, 0x90
	.type	preview_button_press_event,@function
preview_button_press_event:             # @preview_button_press_event
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$1, 52(%rsi)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, x_press
	movq	-16(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, y_press
	cvtsi2sdl	preview_width, %xmm0
	movsd	%xmm0, xbild
	cvtsi2sdl	preview_height, %xmm0
	movsd	%xmm0, ybild
	movsd	xmax, %xmm0             # xmm0 = mem[0],zero
	subsd	xmin, %xmm0
	divsd	xbild, %xmm0
	movsd	%xmm0, xdiff
	movsd	ymax, %xmm0             # xmm0 = mem[0],zero
	subsd	ymin, %xmm0
	divsd	ybild, %xmm0
	movsd	%xmm0, ydiff
	cvttsd2si	x_press, %edi
	cvttsd2si	y_press, %esi
	callq	preview_draw_crosshair
	callq	preview_redraw
.LBB3_2:                                # %if.end
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	preview_button_press_event, .Lfunc_end3-preview_button_press_event
	.cfi_endproc

	.align	16, 0x90
	.type	preview_button_release_event,@function
preview_button_release_event:           # @preview_button_release_event
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$1, 52(%rsi)
	jne	.LBB4_13
# BB#1:                                 # %if.then
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, -56(%rbp)
	movq	-16(%rbp), %rax
	movsd	32(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, -64(%rbp)
	movsd	x_press, %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB4_12
# BB#2:                                 # %land.lhs.true
	xorps	%xmm0, %xmm0
	movsd	y_press, %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB4_12
# BB#3:                                 # %land.lhs.true.3
	xorps	%xmm0, %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB4_12
# BB#4:                                 # %land.lhs.true.5
	xorps	%xmm0, %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB4_12
# BB#5:                                 # %land.lhs.true.7
	movsd	x_press, %xmm0          # xmm0 = mem[0],zero
	cvtsi2sdl	preview_width, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_12
# BB#6:                                 # %land.lhs.true.10
	movsd	y_press, %xmm0          # xmm0 = mem[0],zero
	cvtsi2sdl	preview_height, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_12
# BB#7:                                 # %land.lhs.true.14
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	preview_width, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_12
# BB#8:                                 # %land.lhs.true.18
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	preview_height, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_12
# BB#9:                                 # %if.then.22
	movsd	wvals+8, %xmm0          # xmm0 = mem[0],zero
	movsd	wvals+16, %xmm1         # xmm1 = mem[0],zero
	subsd	wvals+8, %xmm1
	movsd	x_press, %xmm2          # xmm2 = mem[0],zero
	cvtsi2sdl	preview_width, %xmm3
	divsd	%xmm3, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	wvals+8, %xmm0          # xmm0 = mem[0],zero
	movsd	wvals+16, %xmm1         # xmm1 = mem[0],zero
	subsd	wvals+8, %xmm1
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	cvtsi2sdl	preview_width, %xmm3
	divsd	%xmm3, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	wvals+24, %xmm0         # xmm0 = mem[0],zero
	movsd	wvals+32, %xmm1         # xmm1 = mem[0],zero
	subsd	wvals+24, %xmm1
	movsd	y_press, %xmm2          # xmm2 = mem[0],zero
	cvtsi2sdl	preview_height, %xmm3
	divsd	%xmm3, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	wvals+24, %xmm0         # xmm0 = mem[0],zero
	movsd	wvals+32, %xmm1         # xmm1 = mem[0],zero
	subsd	wvals+24, %xmm1
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	cvtsi2sdl	preview_height, %xmm3
	divsd	%xmm3, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	cmpl	$99, zoomindex
	jge	.LBB4_11
# BB#10:                                # %if.then.41
	movabsq	$wvals, %rax
	movl	$136, %ecx
	movl	%ecx, %edx
	movabsq	$zooms, %rsi
	movslq	zoomindex, %rdi
	imulq	$136, %rdi, %rdi
	addq	%rdi, %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	memcpy
	movl	zoomindex, %ecx
	addl	$1, %ecx
	movl	%ecx, zoomindex
.LBB4_11:                               # %if.end
	movl	zoomindex, %eax
	movl	%eax, zoommax
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, wvals+8
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, wvals+16
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, wvals+24
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, wvals+32
	callq	dialog_change_scale
	callq	dialog_update_preview
	movl	$-1, oldxpos
	movl	$-1, oldypos
.LBB4_12:                               # %if.end.42
	jmp	.LBB4_13
.LBB4_13:                               # %if.end.43
	movl	$1, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	preview_button_release_event, .Lfunc_end4-preview_button_release_event
	.cfi_endproc

	.align	16, 0x90
	.type	preview_motion_notify_event,@function
preview_motion_notify_event:            # @preview_motion_notify_event
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$-1, oldypos
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	oldxpos, %edi
	movl	oldypos, %esi
	callq	preview_draw_crosshair
.LBB5_2:                                # %if.end
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	cvttsd2si	24(%rax), %ecx
	movl	%ecx, oldxpos
	movq	-16(%rbp), %rax
	cvttsd2si	32(%rax), %ecx
	movl	%ecx, oldypos
	cvtsi2sdl	oldxpos, %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.LBB5_7
# BB#3:                                 # %land.lhs.true
	xorps	%xmm0, %xmm0
	cvtsi2sdl	oldypos, %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.LBB5_7
# BB#4:                                 # %land.lhs.true.8
	movl	oldxpos, %eax
	cmpl	preview_width, %eax
	jge	.LBB5_7
# BB#5:                                 # %land.lhs.true.11
	movl	oldypos, %eax
	cmpl	preview_height, %eax
	jge	.LBB5_7
# BB#6:                                 # %if.then.14
	movl	oldxpos, %edi
	movl	oldypos, %esi
	callq	preview_draw_crosshair
	jmp	.LBB5_8
.LBB5_7:                                # %if.else
	movl	$-1, oldypos
	movl	$-1, oldxpos
.LBB5_8:                                # %if.end.15
	callq	preview_redraw
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	preview_motion_notify_event, .Lfunc_end5-preview_motion_notify_event
	.cfi_endproc

	.align	16, 0x90
	.type	preview_leave_notify_event,@function
preview_leave_notify_event:             # @preview_leave_notify_event
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
	cmpl	$-1, oldypos
	je	.LBB6_2
# BB#1:                                 # %if.then
	movl	oldxpos, %edi
	movl	oldypos, %esi
	callq	preview_draw_crosshair
.LBB6_2:                                # %if.end
	movl	$-1, oldxpos
	movl	$-1, oldypos
	callq	preview_redraw
	movq	maindlg, %rdi
	callq	gtk_widget_get_window
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gdk_window_set_cursor
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	preview_leave_notify_event, .Lfunc_end6-preview_leave_notify_event
	.cfi_endproc

	.align	16, 0x90
	.type	preview_enter_notify_event,@function
preview_enter_notify_event:             # @preview_enter_notify_event
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, preview_enter_notify_event.cursor
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	maindlg, %rdi
	callq	gtk_widget_get_display
	movl	$130, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gdk_cursor_new_for_display
	movq	%rax, preview_enter_notify_event.cursor
.LBB7_2:                                # %if.end
	movq	maindlg, %rdi
	callq	gtk_widget_get_window
	movq	preview_enter_notify_event.cursor, %rsi
	movq	%rax, %rdi
	callq	gdk_window_set_cursor
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	preview_enter_notify_event, .Lfunc_end7-preview_enter_notify_event
	.cfi_endproc

	.align	16, 0x90
	.type	explorer_toggle_update,@function
explorer_toggle_update:                 # @explorer_toggle_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_toggle_button_update
	callq	set_cmap_preview
	callq	dialog_update_preview
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	explorer_toggle_update, .Lfunc_end8-explorer_toggle_update
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_redraw_callback,@function
dialog_redraw_callback:                 # @dialog_redraw_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	wvals+120, %eax
	movl	%eax, -20(%rbp)
	movl	$1, wvals+120
	callq	set_cmap_preview
	callq	dialog_update_preview
	movl	-20(%rbp), %eax
	movl	%eax, wvals+120
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	dialog_redraw_callback, .Lfunc_end9-dialog_redraw_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4595172819793696085     # double 0.16666666666666666
	.text
	.align	16, 0x90
	.type	dialog_step_in_callback,@function
dialog_step_in_callback:                # @dialog_step_in_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp37:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$99, zoomindex
	jge	.LBB10_2
# BB#1:                                 # %if.then
	movabsq	$wvals, %rax
	movl	$136, %ecx
	movl	%ecx, %edx
	movabsq	$zooms, %rsi
	movslq	zoomindex, %rdi
	imulq	$136, %rdi, %rdi
	addq	%rdi, %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	memcpy
	movl	zoomindex, %ecx
	addl	$1, %ecx
	movl	%ecx, zoomindex
.LBB10_2:                               # %if.end
	movabsq	$wvals, %rax
	movl	$136, %ecx
	movl	%ecx, %edx
	movabsq	$zooms, %rsi
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movl	zoomindex, %ecx
	movl	%ecx, zoommax
	movsd	wvals+16, %xmm1         # xmm1 = mem[0],zero
	subsd	wvals+8, %xmm1
	movsd	%xmm1, -24(%rbp)
	movsd	wvals+32, %xmm1         # xmm1 = mem[0],zero
	subsd	wvals+24, %xmm1
	movsd	%xmm1, -32(%rbp)
	movaps	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm1
	addsd	wvals+8, %xmm1
	movsd	%xmm1, wvals+8
	movaps	%xmm0, %xmm1
	mulsd	-32(%rbp), %xmm1
	addsd	wvals+24, %xmm1
	movsd	%xmm1, wvals+24
	movaps	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm1
	movsd	wvals+16, %xmm2         # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	movsd	%xmm2, wvals+16
	mulsd	-32(%rbp), %xmm0
	movsd	wvals+32, %xmm1         # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, wvals+32
	movslq	zoomindex, %rdi
	imulq	$136, %rdi, %rdi
	addq	%rdi, %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	memcpy
	callq	dialog_change_scale
	callq	set_cmap_preview
	callq	dialog_update_preview
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	dialog_step_in_callback, .Lfunc_end10-dialog_step_in_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4598175219545276416     # double 0.25
	.text
	.align	16, 0x90
	.type	dialog_step_out_callback,@function
dialog_step_out_callback:               # @dialog_step_out_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp40:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$99, zoomindex
	jge	.LBB11_2
# BB#1:                                 # %if.then
	movabsq	$wvals, %rax
	movl	$136, %ecx
	movl	%ecx, %edx
	movabsq	$zooms, %rsi
	movslq	zoomindex, %rdi
	imulq	$136, %rdi, %rdi
	addq	%rdi, %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	memcpy
	movl	zoomindex, %ecx
	addl	$1, %ecx
	movl	%ecx, zoomindex
.LBB11_2:                               # %if.end
	movabsq	$wvals, %rax
	movl	$136, %ecx
	movl	%ecx, %edx
	movabsq	$zooms, %rsi
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movl	zoomindex, %ecx
	movl	%ecx, zoommax
	movsd	wvals+16, %xmm1         # xmm1 = mem[0],zero
	subsd	wvals+8, %xmm1
	movsd	%xmm1, -24(%rbp)
	movsd	wvals+32, %xmm1         # xmm1 = mem[0],zero
	subsd	wvals+24, %xmm1
	movsd	%xmm1, -32(%rbp)
	movaps	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm1
	movsd	wvals+8, %xmm2          # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	movsd	%xmm2, wvals+8
	movaps	%xmm0, %xmm1
	mulsd	-32(%rbp), %xmm1
	movsd	wvals+24, %xmm2         # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	movsd	%xmm2, wvals+24
	movaps	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm1
	addsd	wvals+16, %xmm1
	movsd	%xmm1, wvals+16
	mulsd	-32(%rbp), %xmm0
	addsd	wvals+32, %xmm0
	movsd	%xmm0, wvals+32
	movslq	zoomindex, %rdi
	imulq	$136, %rdi, %rdi
	addq	%rdi, %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	memcpy
	callq	dialog_change_scale
	callq	set_cmap_preview
	callq	dialog_update_preview
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	dialog_step_out_callback, .Lfunc_end11-dialog_step_out_callback
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_undo_zoom_callback,@function
dialog_undo_zoom_callback:              # @dialog_undo_zoom_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp43:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$0, zoomindex
	jle	.LBB12_2
# BB#1:                                 # %if.then
	movabsq	$wvals, %rax
	movl	$136, %ecx
	movl	%ecx, %edx
	movabsq	$zooms, %rsi
	movslq	zoomindex, %rdi
	imulq	$136, %rdi, %rdi
	movq	%rsi, %r8
	addq	%rdi, %r8
	movq	%r8, %rdi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	memcpy
	movl	zoomindex, %ecx
	addl	$-1, %ecx
	movl	%ecx, zoomindex
	movslq	zoomindex, %rax
	imulq	$136, %rax, %rax
	movq	-24(%rbp), %rdx         # 8-byte Reload
	addq	%rax, %rdx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rdx, %rsi
	movq	-32(%rbp), %rdx         # 8-byte Reload
	callq	memcpy
	callq	dialog_change_scale
	callq	set_cmap_preview
	callq	dialog_update_preview
.LBB12_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	dialog_undo_zoom_callback, .Lfunc_end12-dialog_undo_zoom_callback
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_redo_zoom_callback,@function
dialog_redo_zoom_callback:              # @dialog_redo_zoom_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	zoomindex, %eax
	cmpl	zoommax, %eax
	jge	.LBB13_2
# BB#1:                                 # %if.then
	movabsq	$wvals, %rax
	movl	$136, %ecx
	movl	%ecx, %edx
	movabsq	$zooms, %rsi
	movl	zoomindex, %ecx
	addl	$1, %ecx
	movl	%ecx, zoomindex
	movslq	zoomindex, %rdi
	imulq	$136, %rdi, %rdi
	addq	%rdi, %rsi
	movq	%rax, %rdi
	callq	memcpy
	callq	dialog_change_scale
	callq	set_cmap_preview
	callq	dialog_update_preview
.LBB13_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	dialog_redo_zoom_callback, .Lfunc_end13-dialog_redo_zoom_callback
	.cfi_endproc

	.align	16, 0x90
	.type	explorer_double_adjustment_update,@function
explorer_double_adjustment_update:      # @explorer_double_adjustment_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_double_adjustment_update
	callq	set_cmap_preview
	callq	dialog_update_preview
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	explorer_double_adjustment_update, .Lfunc_end14-explorer_double_adjustment_update
	.cfi_endproc

	.align	16, 0x90
	.type	create_load_file_chooser,@function
create_load_file_chooser:               # @create_load_file_chooser
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$136, %rsp
.Ltmp53:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, create_load_file_chooser.window
	jne	.LBB15_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.120, %rdi
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movabsq	$.L.str.8, %rcx
	movl	$4294967290, %r8d       # imm = 0xFFFFFFFA
	movabsq	$.L.str.41, %r9
	movl	$4294967291, %r10d      # imm = 0xFFFFFFFB
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movl	$-5, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movl	%r10d, -52(%rbp)        # 4-byte Spill
	callq	gtk_file_chooser_dialog_new
	movq	%rax, create_load_file_chooser.window
	movq	create_load_file_chooser.window, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movq	%rax, %rdi
	callq	gtk_dialog_set_default_response
	movq	create_load_file_chooser.window, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	create_load_file_chooser.window, %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	file_chooser_set_default_folder
	movabsq	$.L.str.11, %rsi
	movabsq	$gtk_widget_destroyed, %rax
	movabsq	$create_load_file_chooser.window, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	create_load_file_chooser.window, %rbx
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.10, %rsi
	movabsq	$load_file_chooser_response, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	create_load_file_chooser.window, %rdx
	movq	create_load_file_chooser.window, %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB15_2:                               # %if.end
	movq	create_load_file_chooser.window, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end15:
	.size	create_load_file_chooser, .Lfunc_end15-create_load_file_chooser
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_reset_callback,@function
dialog_reset_callback:                  # @dialog_reset_callback
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	standardvals+8, %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, wvals+8
	movsd	standardvals+16, %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, wvals+16
	movsd	standardvals+24, %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, wvals+24
	movsd	standardvals+32, %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, wvals+32
	movsd	standardvals+40, %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, wvals+40
	movsd	standardvals+48, %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, wvals+48
	movsd	standardvals+56, %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, wvals+56
	callq	dialog_change_scale
	callq	set_cmap_preview
	callq	dialog_update_preview
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	dialog_reset_callback, .Lfunc_end16-dialog_reset_callback
	.cfi_endproc

	.align	16, 0x90
	.type	create_save_file_chooser,@function
create_save_file_chooser:               # @create_save_file_chooser
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
	pushq	%rbx
	subq	$152, %rsp
.Ltmp60:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, create_save_file_chooser.window
	jne	.LBB17_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.121, %rdi
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movabsq	$.L.str.8, %rcx
	movl	$4294967290, %r8d       # imm = 0xFFFFFFFA
	movabsq	$.L.str.45, %r9
	movl	$4294967291, %r10d      # imm = 0xFFFFFFFB
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movl	$-5, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movl	%r10d, -52(%rbp)        # 4-byte Spill
	callq	gtk_file_chooser_dialog_new
	movq	%rax, create_save_file_chooser.window
	movq	create_save_file_chooser.window, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	create_save_file_chooser.window, %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movq	%rax, %rdi
	callq	gtk_dialog_set_default_response
	movq	create_save_file_chooser.window, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_do_overwrite_confirmation
	movabsq	$.L.str.11, %rsi
	movabsq	$gtk_widget_destroyed, %rax
	movabsq	$create_save_file_chooser.window, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	create_save_file_chooser.window, %rbx
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.10, %rsi
	movabsq	$save_file_chooser_response, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	create_save_file_chooser.window, %rdx
	movq	create_save_file_chooser.window, %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB17_2:                               # %if.end
	cmpq	$0, tpath
	je	.LBB17_4
# BB#3:                                 # %if.then.13
	movq	create_save_file_chooser.window, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	tpath, %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_filename
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB17_5
.LBB17_4:                               # %if.else
	movq	create_save_file_chooser.window, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	file_chooser_set_default_folder
.LBB17_5:                               # %if.end.19
	movq	create_save_file_chooser.window, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end17:
	.size	create_save_file_chooser, .Lfunc_end17-create_save_file_chooser
	.cfi_endproc

	.align	16, 0x90
	.type	explorer_radio_update,@function
explorer_radio_update:                  # @explorer_radio_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp63:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_radio_button_update
	movl	wvals(%rip), %eax
	orl	$8, %eax
	subl	$8, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	je	.LBB18_1
	jmp	.LBB18_2
.LBB18_1:                               # %sw.bb
	movl	$0, -20(%rbp)
	jmp	.LBB18_3
.LBB18_2:                               # %sw.default
	movl	$1, -20(%rbp)
.LBB18_3:                               # %sw.epilog
	movq	elements, %rax
	movq	112(%rax), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_scale_entry_set_sensitive
	movq	elements, %rax
	movq	120(%rax), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_scale_entry_set_sensitive
	callq	set_cmap_preview
	callq	dialog_update_preview
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	explorer_radio_update, .Lfunc_end18-explorer_radio_update
	.cfi_endproc

	.align	16, 0x90
	.type	explorer_number_of_colors_callback,@function
explorer_number_of_colors_callback:     # @explorer_number_of_colors_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp66:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_int_adjustment_update
	movq	gradient_samples, %rsi
	movq	%rsi, %rdi
	callq	g_free
	cmpq	$0, gradient_name
	jne	.LBB19_2
# BB#1:                                 # %if.then
	callq	gimp_context_get_gradient
	movq	%rax, gradient_name
.LBB19_2:                               # %if.end
	movabsq	$n_gradient_samples, %rcx
	movabsq	$gradient_samples, %r8
	movq	gradient_name, %rdi
	movl	wvals+124, %esi
	movl	wvals+128, %edx
	callq	gimp_gradient_get_uniform_samples
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	set_cmap_preview
	callq	dialog_update_preview
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	explorer_number_of_colors_callback, .Lfunc_end19-explorer_number_of_colors_callback
	.cfi_endproc

	.align	16, 0x90
	.type	explorer_gradient_select_callback,@function
explorer_gradient_select_callback:      # @explorer_gradient_select_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp69:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movq	gradient_name, %rdi
	callq	g_free
	movq	gradient_samples, %rcx
	movq	%rcx, %rdi
	callq	g_free
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movabsq	$n_gradient_samples, %rcx
	movabsq	$gradient_samples, %r8
	movq	%rax, gradient_name
	movq	gradient_name, %rdi
	movl	wvals+124, %esi
	movl	wvals+128, %edx
	callq	gimp_gradient_get_uniform_samples
	cmpl	$1, wvals+64
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jne	.LBB20_2
# BB#1:                                 # %if.then
	callq	set_cmap_preview
	callq	dialog_update_preview
.LBB20_2:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	explorer_gradient_select_callback, .Lfunc_end20-explorer_gradient_select_callback
	.cfi_endproc

	.align	16, 0x90
	.type	cmap_preview_size_allocate,@function
cmap_preview_size_allocate:             # @cmap_preview_size_allocate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp72:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-16(%rbp), %rax
	imull	12(%rax), %ecx
	imull	$3, %ecx, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movq	%rax, -40(%rbp)
	movl	$0, -28(%rbp)
.LBB21_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_3 Depth 2
                                        #       Child Loop BB21_6 Depth 3
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB21_15
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	$0, -24(%rbp)
.LBB21_3:                               # %for.cond.6
                                        #   Parent Loop BB21_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB21_6 Depth 3
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jge	.LBB21_13
# BB#4:                                 # %for.body.10
                                        #   in Loop: Header=BB21_3 Depth=2
	movl	$4, %eax
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %edx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-60(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movq	-16(%rbp), %rdi
	imull	8(%rdi), %eax
	addl	%eax, %ecx
	movl	%ecx, -20(%rbp)
	movl	-20(%rbp), %eax
	cmpl	wvals+124, %eax
	jle	.LBB21_10
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB21_3 Depth=2
	movl	$0, -32(%rbp)
.LBB21_6:                               # %for.cond.15
                                        #   Parent Loop BB21_1 Depth=1
                                        #     Parent Loop BB21_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$3, -32(%rbp)
	jge	.LBB21_9
# BB#7:                                 # %for.body.18
                                        #   in Loop: Header=BB21_6 Depth=3
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	imull	8(%rcx), %eax
	addl	-24(%rbp), %eax
	imull	$3, %eax, %eax
	addl	-32(%rbp), %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movb	$0, (%rdx,%rcx)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB21_6 Depth=3
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB21_6
.LBB21_9:                               # %for.end
                                        #   in Loop: Header=BB21_3 Depth=2
	jmp	.LBB21_11
.LBB21_10:                              # %if.else
                                        #   in Loop: Header=BB21_3 Depth=2
	movabsq	$colormap, %rax
	movslq	-20(%rbp), %rcx
	imulq	$3, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movb	(%rdx), %sil
	movl	-28(%rbp), %edi
	movq	-16(%rbp), %rcx
	imull	8(%rcx), %edi
	addl	-24(%rbp), %edi
	imull	$3, %edi, %edi
	movslq	%edi, %rcx
	movq	-40(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	movslq	-20(%rbp), %rcx
	imulq	$3, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movb	1(%rdx), %sil
	movl	-28(%rbp), %edi
	movq	-16(%rbp), %rcx
	imull	8(%rcx), %edi
	addl	-24(%rbp), %edi
	imull	$3, %edi, %edi
	addl	$1, %edi
	movslq	%edi, %rcx
	movq	-40(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	movslq	-20(%rbp), %rcx
	imulq	$3, %rcx, %rcx
	addq	%rcx, %rax
	movb	2(%rax), %sil
	movl	-28(%rbp), %edi
	movq	-16(%rbp), %rax
	imull	8(%rax), %edi
	addl	-24(%rbp), %edi
	imull	$3, %edi, %edi
	addl	$2, %edi
	movslq	%edi, %rax
	movq	-40(%rbp), %rcx
	movb	%sil, (%rcx,%rax)
.LBB21_11:                              # %if.end
                                        #   in Loop: Header=BB21_3 Depth=2
	jmp	.LBB21_12
.LBB21_12:                              # %for.inc.51
                                        #   in Loop: Header=BB21_3 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB21_3
.LBB21_13:                              # %for.end.53
                                        #   in Loop: Header=BB21_1 Depth=1
	jmp	.LBB21_14
.LBB21_14:                              # %for.inc.54
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB21_1
.LBB21_15:                              # %for.end.56
	xorl	%eax, %eax
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %ecx
	movq	-16(%rbp), %rdx
	movl	12(%rdx), %r8d
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rsi
	imull	$3, 8(%rsi), %r9d
	movl	%eax, %esi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%r9d, -76(%rbp)         # 4-byte Spill
	movl	%eax, %r9d
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, 8(%rsp)
	callq	gimp_preview_area_draw
	movq	cmap_preview, %rdi
	callq	gtk_widget_queue_draw
	movq	-40(%rbp), %rdi
	callq	g_free
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	cmap_preview_size_allocate, .Lfunc_end21-cmap_preview_size_allocate
	.cfi_endproc

	.globl	set_cmap_preview
	.align	16, 0x90
	.type	set_cmap_preview,@function
set_cmap_preview:                       # @set_cmap_preview
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp75:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	cmap_preview, %rcx
	jne	.LBB22_2
# BB#1:                                 # %if.then
	jmp	.LBB22_10
.LBB22_2:                               # %if.end
	callq	make_color_map
	movl	$1, -8(%rbp)
.LBB22_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-8(%rbp), %eax
	imull	-8(%rbp), %eax
	imull	-8(%rbp), %eax
	cmpl	wvals+124, %eax
	jge	.LBB22_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB22_3 Depth=1
	jmp	.LBB22_5
.LBB22_5:                               # %for.inc
                                        #   in Loop: Header=BB22_3 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB22_3
.LBB22_6:                               # %for.end
	movl	wvals+124, %eax
	cltd
	idivl	-8(%rbp)
	movl	%eax, -4(%rbp)
.LBB22_7:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	cmpl	wvals+124, %eax
	jge	.LBB22_9
# BB#8:                                 # %while.body
                                        #   in Loop: Header=BB22_7 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB22_7
.LBB22_9:                               # %while.end
	movq	cmap_preview, %rdi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %eax
	shll	$2, %eax
	movl	%eax, %edx
	callq	gtk_widget_set_size_request
.LBB22_10:                              # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	set_cmap_preview, .Lfunc_end22-set_cmap_preview
	.cfi_endproc

	.globl	dialog_update_preview
	.align	16, 0x90
	.type	dialog_update_preview,@function
dialog_update_preview:                  # @dialog_update_preview
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp78:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	wint, %rcx
	jne	.LBB23_2
# BB#1:                                 # %if.then
	jmp	.LBB23_9
.LBB23_2:                               # %if.end
	cmpl	$0, ready_now
	je	.LBB23_9
# BB#3:                                 # %land.lhs.true
	cmpl	$0, wvals+120
	je	.LBB23_9
# BB#4:                                 # %if.then.2
	movsd	wvals+8, %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, xmin
	movsd	wvals+16, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, xmax
	movsd	wvals+24, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, ymin
	movsd	wvals+32, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, ymax
	cvtsi2sdl	preview_width, %xmm0
	movsd	%xmm0, xbild
	cvtsi2sdl	preview_height, %xmm0
	movsd	%xmm0, ybild
	movsd	xmax, %xmm0             # xmm0 = mem[0],zero
	subsd	xmin, %xmm0
	divsd	xbild, %xmm0
	movsd	%xmm0, xdiff
	movsd	ymax, %xmm0             # xmm0 = mem[0],zero
	subsd	ymin, %xmm0
	divsd	ybild, %xmm0
	movsd	%xmm0, ydiff
	movq	wint+8, %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
.LBB23_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cmpl	preview_height, %eax
	jge	.LBB23_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB23_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$3, %r8d
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %edx
	movl	preview_width, %ecx
	callq	explorer_render_row
	imull	$3, preview_width, %eax
	movq	-16(%rbp), %rsi
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -16(%rbp)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB23_5 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB23_5
.LBB23_8:                               # %for.end
	callq	preview_redraw
.LBB23_9:                               # %if.end.8
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	dialog_update_preview, .Lfunc_end23-dialog_update_preview
	.cfi_endproc

	.align	16, 0x90
	.type	preview_redraw,@function
preview_redraw:                         # @preview_redraw
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp81:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$56, %rsp
.Ltmp82:
	.cfi_offset %rbx, -24
	movq	wint, %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	preview_width, %edx
	movl	preview_height, %r8d
	movq	wint+8, %rsi
	imull	$3, preview_width, %r9d
	movq	%rax, %rdi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -28(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-28(%rbp), %r10d        # 4-byte Reload
	movl	%ecx, -32(%rbp)         # 4-byte Spill
	movl	%r10d, %ecx
	movl	-32(%rbp), %r11d        # 4-byte Reload
	movl	%r9d, -36(%rbp)         # 4-byte Spill
	movl	%r11d, %r9d
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	-36(%rbp), %ebx         # 4-byte Reload
	movl	%ebx, 8(%rsp)
	callq	gimp_preview_area_draw
	movq	wint, %rdi
	callq	gtk_widget_queue_draw
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end24:
	.size	preview_redraw, .Lfunc_end24-preview_redraw
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI25_0:
	.quad	4616189618054758400     # double 4
.LCPI25_1:
	.quad	4607182418800017408     # double 1
.LCPI25_2:
	.quad	4638672431819522048     # double 127.5
.LCPI25_3:
	.quad	4643207697381772493     # double 255.90000000000001
	.text
	.globl	make_color_map
	.align	16, 0x90
	.type	make_color_map,@function
make_color_map:                         # @make_color_map
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp85:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movsd	.LCPI25_1, %xmm0        # xmm0 = mem[0],zero
	callq	atan
	movsd	.LCPI25_0, %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	cmpq	$0, gradient_samples
	jne	.LBB25_2
# BB#1:                                 # %if.then
	callq	gimp_context_get_gradient
	movabsq	$n_gradient_samples, %rcx
	movabsq	$gradient_samples, %r8
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movl	wvals+124, %esi
	movl	wvals+128, %edx
	callq	gimp_gradient_get_uniform_samples
	movq	-56(%rbp), %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	g_free
.LBB25_2:                               # %if.end
	movsd	.LCPI25_2, %xmm0        # xmm0 = mem[0],zero
	movaps	%xmm0, %xmm1
	mulsd	wvals+72, %xmm1
	movsd	%xmm1, -24(%rbp)
	movaps	%xmm0, %xmm1
	mulsd	wvals+80, %xmm1
	movsd	%xmm1, -32(%rbp)
	mulsd	wvals+88, %xmm0
	movsd	%xmm0, -40(%rbp)
	movl	$0, -4(%rbp)
.LBB25_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cmpl	wvals+124, %eax
	jge	.LBB25_39
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB25_3 Depth=1
	cmpl	$1, wvals+64
	jne	.LBB25_6
# BB#5:                                 # %if.then.8
                                        #   in Loop: Header=BB25_3 Depth=1
	movabsq	$colormap, %rax
	movslq	-4(%rbp), %rcx
	movl	%ecx, %edx
	shll	$2, %edx
	movslq	%edx, %rsi
	movq	gradient_samples(%rip), %rdi
	movsd	(%rdi,%rsi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	.LCPI25_3(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movb	%dl, %r8b
	movb	%r8b, colormap(%rcx,%rcx,2)
	movslq	-4(%rbp), %rcx
	movl	%ecx, %edx
	movl	%edx, %esi
	leal	1(,%rsi,4), %edx
	movslq	%edx, %rsi
	movq	gradient_samples(%rip), %rdi
	movsd	(%rdi,%rsi,8), %xmm0    # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movb	%dl, %r8b
	movb	%r8b, colormap+1(%rcx,%rcx,2)
	movl	-4(%rbp), %edx
	movl	%edx, %ecx
	leal	2(,%rcx,4), %edx
	movslq	%edx, %rcx
	movq	gradient_samples(%rip), %rsi
	movsd	(%rsi,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movb	%dl, %r8b
	movslq	-4(%rbp), %rcx
	imulq	$3, %rcx, %rcx
	addq	%rcx, %rax
	movb	%r8b, 2(%rax)
	jmp	.LBB25_37
.LBB25_6:                               # %if.else
                                        #   in Loop: Header=BB25_3 Depth=1
	cvtsi2sdl	-4(%rbp), %xmm0
	addsd	%xmm0, %xmm0
	cvtsi2sdl	wvals+124(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -8(%rbp)
	movl	wvals+96(%rip), %eax
	testl	%eax, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB25_7
	jmp	.LBB25_40
.LBB25_40:                              # %if.else
                                        #   in Loop: Header=BB25_3 Depth=1
	movl	-72(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB25_8
	jmp	.LBB25_41
.LBB25_41:                              # %if.else
                                        #   in Loop: Header=BB25_3 Depth=1
	movl	-72(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB25_9
	jmp	.LBB25_10
.LBB25_7:                               # %sw.bb
                                        #   in Loop: Header=BB25_3 Depth=1
	movsd	.LCPI25_1, %xmm0        # xmm0 = mem[0],zero
	cvttsd2si	-24(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	mulsd	-48(%rbp), %xmm2
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -96(%rbp)        # 8-byte Spill
	callq	sin
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB25_11
.LBB25_8:                               # %sw.bb.39
                                        #   in Loop: Header=BB25_3 Depth=1
	movsd	.LCPI25_1, %xmm0        # xmm0 = mem[0],zero
	cvttsd2si	-24(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	mulsd	-48(%rbp), %xmm2
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -112(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB25_11
.LBB25_9:                               # %sw.bb.48
                                        #   in Loop: Header=BB25_3 Depth=1
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-64(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB25_11
.LBB25_10:                              # %sw.default
                                        #   in Loop: Header=BB25_3 Depth=1
	jmp	.LBB25_11
.LBB25_11:                              # %sw.epilog
                                        #   in Loop: Header=BB25_3 Depth=1
	movl	wvals+100(%rip), %eax
	testl	%eax, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB25_12
	jmp	.LBB25_42
.LBB25_42:                              # %sw.epilog
                                        #   in Loop: Header=BB25_3 Depth=1
	movl	-116(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	je	.LBB25_13
	jmp	.LBB25_43
.LBB25_43:                              # %sw.epilog
                                        #   in Loop: Header=BB25_3 Depth=1
	movl	-116(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	je	.LBB25_14
	jmp	.LBB25_15
.LBB25_12:                              # %sw.bb.51
                                        #   in Loop: Header=BB25_3 Depth=1
	movsd	.LCPI25_1, %xmm0        # xmm0 = mem[0],zero
	cvttsd2si	-32(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	mulsd	-48(%rbp), %xmm2
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -144(%rbp)       # 8-byte Spill
	callq	sin
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB25_16
.LBB25_13:                              # %sw.bb.60
                                        #   in Loop: Header=BB25_3 Depth=1
	movsd	.LCPI25_1, %xmm0        # xmm0 = mem[0],zero
	cvttsd2si	-32(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	mulsd	-48(%rbp), %xmm2
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -160(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-152(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	-160(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB25_16
.LBB25_14:                              # %sw.bb.69
                                        #   in Loop: Header=BB25_3 Depth=1
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-64(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB25_16
.LBB25_15:                              # %sw.default.72
                                        #   in Loop: Header=BB25_3 Depth=1
	jmp	.LBB25_16
.LBB25_16:                              # %sw.epilog.73
                                        #   in Loop: Header=BB25_3 Depth=1
	movl	wvals+104(%rip), %eax
	testl	%eax, %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	je	.LBB25_17
	jmp	.LBB25_44
.LBB25_44:                              # %sw.epilog.73
                                        #   in Loop: Header=BB25_3 Depth=1
	movl	-164(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	je	.LBB25_18
	jmp	.LBB25_45
.LBB25_45:                              # %sw.epilog.73
                                        #   in Loop: Header=BB25_3 Depth=1
	movl	-164(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	je	.LBB25_19
	jmp	.LBB25_20
.LBB25_17:                              # %sw.bb.74
                                        #   in Loop: Header=BB25_3 Depth=1
	movsd	.LCPI25_1, %xmm0        # xmm0 = mem[0],zero
	cvttsd2si	-40(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	mulsd	-48(%rbp), %xmm2
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -192(%rbp)       # 8-byte Spill
	callq	sin
	movsd	-184(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	-192(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB25_21
.LBB25_18:                              # %sw.bb.83
                                        #   in Loop: Header=BB25_3 Depth=1
	movsd	.LCPI25_1, %xmm0        # xmm0 = mem[0],zero
	cvttsd2si	-40(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	mulsd	-48(%rbp), %xmm2
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -208(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-200(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	-208(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB25_21
.LBB25_19:                              # %sw.bb.92
                                        #   in Loop: Header=BB25_3 Depth=1
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-64(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB25_21
.LBB25_20:                              # %sw.default.95
                                        #   in Loop: Header=BB25_3 Depth=1
	jmp	.LBB25_21
.LBB25_21:                              # %sw.epilog.96
                                        #   in Loop: Header=BB25_3 Depth=1
	cmpl	$255, -8(%rbp)
	jge	.LBB25_23
# BB#22:                                # %cond.true
                                        #   in Loop: Header=BB25_3 Depth=1
	movl	-8(%rbp), %eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
	jmp	.LBB25_24
.LBB25_23:                              # %cond.false
                                        #   in Loop: Header=BB25_3 Depth=1
	movl	$255, %eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
	jmp	.LBB25_24
.LBB25_24:                              # %cond.end
                                        #   in Loop: Header=BB25_3 Depth=1
	movl	-212(%rbp), %eax        # 4-byte Reload
	movl	%eax, -8(%rbp)
	cmpl	$255, -12(%rbp)
	jge	.LBB25_26
# BB#25:                                # %cond.true.101
                                        #   in Loop: Header=BB25_3 Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, -216(%rbp)        # 4-byte Spill
	jmp	.LBB25_27
.LBB25_26:                              # %cond.false.102
                                        #   in Loop: Header=BB25_3 Depth=1
	movl	$255, %eax
	movl	%eax, -216(%rbp)        # 4-byte Spill
	jmp	.LBB25_27
.LBB25_27:                              # %cond.end.103
                                        #   in Loop: Header=BB25_3 Depth=1
	movl	-216(%rbp), %eax        # 4-byte Reload
	movl	%eax, -12(%rbp)
	cmpl	$255, -16(%rbp)
	jge	.LBB25_29
# BB#28:                                # %cond.true.107
                                        #   in Loop: Header=BB25_3 Depth=1
	movl	-16(%rbp), %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jmp	.LBB25_30
.LBB25_29:                              # %cond.false.108
                                        #   in Loop: Header=BB25_3 Depth=1
	movl	$255, %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jmp	.LBB25_30
.LBB25_30:                              # %cond.end.109
                                        #   in Loop: Header=BB25_3 Depth=1
	movl	-220(%rbp), %eax        # 4-byte Reload
	movl	%eax, -16(%rbp)
	cmpl	$0, wvals+108
	je	.LBB25_32
# BB#31:                                # %if.then.111
                                        #   in Loop: Header=BB25_3 Depth=1
	movl	$255, %eax
	subl	-8(%rbp), %eax
	movl	%eax, -8(%rbp)
.LBB25_32:                              # %if.end.113
                                        #   in Loop: Header=BB25_3 Depth=1
	cmpl	$0, wvals+112
	je	.LBB25_34
# BB#33:                                # %if.then.115
                                        #   in Loop: Header=BB25_3 Depth=1
	movl	$255, %eax
	subl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
.LBB25_34:                              # %if.end.117
                                        #   in Loop: Header=BB25_3 Depth=1
	cmpl	$0, wvals+116
	je	.LBB25_36
# BB#35:                                # %if.then.119
                                        #   in Loop: Header=BB25_3 Depth=1
	movl	$255, %eax
	subl	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
.LBB25_36:                              # %if.end.121
                                        #   in Loop: Header=BB25_3 Depth=1
	movabsq	$colormap, %rax
	movl	-8(%rbp), %ecx
	movb	%cl, %dl
	movslq	-4(%rbp), %rsi
	imulq	$3, %rsi, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movb	%dl, (%rdi)
	movl	-12(%rbp), %ecx
	movb	%cl, %dl
	movslq	-4(%rbp), %rsi
	imulq	$3, %rsi, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movb	%dl, 1(%rdi)
	movl	-16(%rbp), %ecx
	movb	%cl, %dl
	movslq	-4(%rbp), %rsi
	imulq	$3, %rsi, %rsi
	addq	%rsi, %rax
	movb	%dl, 2(%rax)
.LBB25_37:                              # %if.end.134
                                        #   in Loop: Header=BB25_3 Depth=1
	jmp	.LBB25_38
.LBB25_38:                              # %for.inc
                                        #   in Loop: Header=BB25_3 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB25_3
.LBB25_39:                              # %for.end
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	make_color_map, .Lfunc_end25-make_color_map
	.cfi_endproc

	.globl	dialog_change_scale
	.align	16, 0x90
	.type	dialog_change_scale,@function
dialog_change_scale:                    # @dialog_change_scale
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp86:
	.cfi_def_cfa_offset 16
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp88:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movl	$0, ready_now
	movq	elements, %rax
	movq	72(%rax), %rax
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	wvals+8, %xmm0          # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	movq	elements, %rax
	movq	80(%rax), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	wvals+16, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	movq	elements, %rax
	movq	88(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	wvals+24, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	movq	elements, %rax
	movq	96(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	wvals+32, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	movq	elements, %rax
	movq	104(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	wvals+40, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	movq	elements, %rax
	movq	112(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	wvals+48, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	movq	elements, %rax
	movq	120(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	wvals+56, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	movq	elements, %rax
	movq	144(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	wvals+72, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	movq	elements, %rax
	movq	152(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	wvals+80, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	movq	elements, %rax
	movq	160(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	wvals+88, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	movslq	wvals, %rax
	movq	elements, %rsi
	movq	(%rsi,%rax,8), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movslq	wvals+96, %rax
	movq	elements, %rdi
	movq	168(%rdi,%rax,8), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movslq	wvals+100, %rax
	movq	elements, %rdi
	movq	200(%rdi,%rax,8), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movslq	wvals+104, %rax
	movq	elements, %rdi
	movq	232(%rdi,%rax,8), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	elements, %rax
	movq	192(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	wvals+108, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	elements, %rax
	movq	224(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	wvals+112, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	elements, %rax
	movq	256(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	wvals+116, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movslq	wvals+64, %rax
	movq	elements, %rdi
	movq	264(%rdi,%rax,8), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movl	$1, ready_now
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	dialog_change_scale, .Lfunc_end26-dialog_change_scale
	.cfi_endproc

	.globl	get_line
	.align	16, 0x90
	.type	get_line,@function
get_line:                               # @get_line
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp89:
	.cfi_def_cfa_offset 16
.Ltmp90:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp91:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB27_2
# BB#1:                                 # %if.then
	movl	$1, line_no
	jmp	.LBB27_3
.LBB27_2:                               # %if.else
	movl	line_no, %eax
	addl	$1, %eax
	movl	%eax, line_no
.LBB27_3:                               # %if.end
	jmp	.LBB27_4
.LBB27_4:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	-32(%rbp), %rdx
	callq	fgets
	movq	%rax, -48(%rbp)
# BB#5:                                 # %do.cond
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-32(%rbp), %rdi
	callq	ferror
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cmpl	$0, %eax
	movb	%dl, -49(%rbp)          # 1-byte Spill
	jne	.LBB27_7
# BB#6:                                 # %land.rhs
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$35, %ecx
	sete	%dl
	movb	%dl, -49(%rbp)          # 1-byte Spill
.LBB27_7:                               # %land.end
                                        #   in Loop: Header=BB27_4 Depth=1
	movb	-49(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB27_4
# BB#8:                                 # %do.end
	movq	-16(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jle	.LBB27_10
# BB#9:                                 # %if.then.8
	movl	-40(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movb	$0, (%rdx,%rcx)
.LBB27_10:                              # %if.end.10
	movq	-32(%rbp), %rdi
	callq	ferror
	cmpl	$0, %eax
	je	.LBB27_12
# BB#11:                                # %if.then.13
	movabsq	$.L.str.92, %rdi
	movb	$0, %al
	callq	g_warning
	movq	$0, -8(%rbp)
	jmp	.LBB27_13
.LBB27_12:                              # %if.end.14
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB27_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	get_line, .Lfunc_end27-get_line
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp92:
	.cfi_def_cfa_offset 16
.Ltmp93:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp94:
	.cfi_def_cfa_register %rbp
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB28_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB28_2:                               # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end28:
	.size	g_warning, .Lfunc_end28-g_warning
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI29_0:
	.quad	4638707616191610880     # double 128
	.text
	.globl	load_options
	.align	16, 0x90
	.type	load_options,@function
load_options:                           # @load_options
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp95:
	.cfi_def_cfa_offset 16
.Ltmp96:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp97:
	.cfi_def_cfa_register %rbp
	subq	$880, %rsp              # imm = 0x370
	movl	$256, %eax              # imm = 0x100
	xorl	%ecx, %ecx
	leaq	-288(%rbp), %rdx
	movabsq	$standardvals, %r8
	movl	$136, %r9d
	movl	%r9d, %r10d
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	addq	$24, %rsi
	movq	%rsi, %rdi
	movq	%r8, %rsi
	movq	%rdx, -840(%rbp)        # 8-byte Spill
	movq	%r10, %rdx
	movl	%ecx, -844(%rbp)        # 4-byte Spill
	movl	%eax, -848(%rbp)        # 4-byte Spill
	callq	memcpy
	movq	-16(%rbp), %rdx
	movl	$0, 152(%rdx)
	movq	-24(%rbp), %rdx
	movq	-840(%rbp), %rdi        # 8-byte Reload
	movl	-848(%rbp), %esi        # 4-byte Reload
	movl	-844(%rbp), %ecx        # 4-byte Reload
	callq	get_line
	movq	%rax, -856(%rbp)        # 8-byte Spill
.LBB29_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rdi
	callq	feof
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cmpl	$0, %eax
	movb	%dl, -857(%rbp)         # 1-byte Spill
	jne	.LBB29_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB29_1 Depth=1
	leaq	-288(%rbp), %rdi
	movl	$.L.str.93, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -857(%rbp)         # 1-byte Spill
.LBB29_3:                               # %land.end
                                        #   in Loop: Header=BB29_1 Depth=1
	movb	-857(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB29_4
	jmp	.LBB29_60
.LBB29_4:                               # %while.body
                                        #   in Loop: Header=BB29_1 Depth=1
	movabsq	$.L.str.94, %rsi
	leaq	-800(%rbp), %rcx
	leaq	-544(%rbp), %rdx
	leaq	-288(%rbp), %rdi
	movb	$0, %al
	callq	__isoc99_sscanf
	leaq	-544(%rbp), %rdi
	movl	$.L.str.95, %r8d
	movl	%r8d, %esi
	movl	%eax, -864(%rbp)        # 4-byte Spill
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB29_8
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB29_1 Depth=1
	leaq	-800(%rbp), %rdi
	movl	$0, -804(%rbp)
	callq	atoi
	movl	%eax, -804(%rbp)
	cmpl	$0, -804(%rbp)
	jge	.LBB29_7
# BB#6:                                 # %if.then.15
	movl	$-1, -4(%rbp)
	jmp	.LBB29_61
.LBB29_7:                               # %if.end
                                        #   in Loop: Header=BB29_1 Depth=1
	movl	-804(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 24(%rcx)
	jmp	.LBB29_59
.LBB29_8:                               # %if.else
                                        #   in Loop: Header=BB29_1 Depth=1
	leaq	-544(%rbp), %rdi
	movl	$.L.str.96, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB29_10
# BB#9:                                 # %if.then.20
                                        #   in Loop: Header=BB29_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-800(%rbp), %rdi
	callq	g_ascii_strtod
	movq	-16(%rbp), %rsi
	movsd	%xmm0, 32(%rsi)
	jmp	.LBB29_58
.LBB29_10:                              # %if.else.24
                                        #   in Loop: Header=BB29_1 Depth=1
	leaq	-544(%rbp), %rdi
	movl	$.L.str.97, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB29_12
# BB#11:                                # %if.then.28
                                        #   in Loop: Header=BB29_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-800(%rbp), %rdi
	callq	g_ascii_strtod
	movq	-16(%rbp), %rsi
	movsd	%xmm0, 40(%rsi)
	jmp	.LBB29_57
.LBB29_12:                              # %if.else.32
                                        #   in Loop: Header=BB29_1 Depth=1
	leaq	-544(%rbp), %rdi
	movl	$.L.str.98, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB29_14
# BB#13:                                # %if.then.36
                                        #   in Loop: Header=BB29_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-800(%rbp), %rdi
	callq	g_ascii_strtod
	movq	-16(%rbp), %rsi
	movsd	%xmm0, 48(%rsi)
	jmp	.LBB29_56
.LBB29_14:                              # %if.else.40
                                        #   in Loop: Header=BB29_1 Depth=1
	leaq	-544(%rbp), %rdi
	movl	$.L.str.99, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB29_16
# BB#15:                                # %if.then.44
                                        #   in Loop: Header=BB29_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-800(%rbp), %rdi
	callq	g_ascii_strtod
	movq	-16(%rbp), %rsi
	movsd	%xmm0, 56(%rsi)
	jmp	.LBB29_55
.LBB29_16:                              # %if.else.48
                                        #   in Loop: Header=BB29_1 Depth=1
	leaq	-544(%rbp), %rdi
	movl	$.L.str.100, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB29_18
# BB#17:                                # %if.then.52
                                        #   in Loop: Header=BB29_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-800(%rbp), %rdi
	callq	g_ascii_strtod
	movsd	.LCPI29_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -816(%rbp)
	movsd	-816(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	-16(%rbp), %rsi
	movsd	%xmm0, 96(%rsi)
	jmp	.LBB29_54
.LBB29_18:                              # %if.else.57
                                        #   in Loop: Header=BB29_1 Depth=1
	leaq	-544(%rbp), %rdi
	movl	$.L.str.101, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB29_20
# BB#19:                                # %if.then.61
                                        #   in Loop: Header=BB29_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-800(%rbp), %rdi
	callq	g_ascii_strtod
	movsd	.LCPI29_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -824(%rbp)
	movsd	-824(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	-16(%rbp), %rsi
	movsd	%xmm0, 104(%rsi)
	jmp	.LBB29_53
.LBB29_20:                              # %if.else.67
                                        #   in Loop: Header=BB29_1 Depth=1
	leaq	-544(%rbp), %rdi
	movl	$.L.str.102, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB29_22
# BB#21:                                # %if.then.71
                                        #   in Loop: Header=BB29_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-800(%rbp), %rdi
	callq	g_ascii_strtod
	movsd	.LCPI29_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -832(%rbp)
	movsd	-832(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	-16(%rbp), %rsi
	movsd	%xmm0, 112(%rsi)
	jmp	.LBB29_52
.LBB29_22:                              # %if.else.77
                                        #   in Loop: Header=BB29_1 Depth=1
	leaq	-544(%rbp), %rdi
	movl	$.L.str.103, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB29_24
# BB#23:                                # %if.then.81
                                        #   in Loop: Header=BB29_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-800(%rbp), %rdi
	callq	g_ascii_strtod
	movq	-16(%rbp), %rsi
	movsd	%xmm0, 64(%rsi)
	jmp	.LBB29_51
.LBB29_24:                              # %if.else.85
                                        #   in Loop: Header=BB29_1 Depth=1
	leaq	-544(%rbp), %rdi
	movl	$.L.str.104, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB29_26
# BB#25:                                # %if.then.89
                                        #   in Loop: Header=BB29_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-800(%rbp), %rdi
	callq	g_ascii_strtod
	movq	-16(%rbp), %rsi
	movsd	%xmm0, 72(%rsi)
	jmp	.LBB29_50
.LBB29_26:                              # %if.else.93
                                        #   in Loop: Header=BB29_1 Depth=1
	leaq	-544(%rbp), %rdi
	movl	$.L.str.105, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB29_28
# BB#27:                                # %if.then.97
                                        #   in Loop: Header=BB29_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-800(%rbp), %rdi
	callq	g_ascii_strtod
	movq	-16(%rbp), %rsi
	movsd	%xmm0, 80(%rsi)
	jmp	.LBB29_49
.LBB29_28:                              # %if.else.101
                                        #   in Loop: Header=BB29_1 Depth=1
	leaq	-544(%rbp), %rdi
	movl	$.L.str.106, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB29_30
# BB#29:                                # %if.then.105
                                        #   in Loop: Header=BB29_1 Depth=1
	leaq	-800(%rbp), %rdi
	callq	atoi
	movq	-16(%rbp), %rdi
	movl	%eax, 120(%rdi)
	jmp	.LBB29_48
.LBB29_30:                              # %if.else.109
                                        #   in Loop: Header=BB29_1 Depth=1
	leaq	-544(%rbp), %rdi
	movl	$.L.str.107, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB29_32
# BB#31:                                # %if.then.113
                                        #   in Loop: Header=BB29_1 Depth=1
	leaq	-800(%rbp), %rdi
	callq	atoi
	movq	-16(%rbp), %rdi
	movl	%eax, 124(%rdi)
	jmp	.LBB29_47
.LBB29_32:                              # %if.else.117
                                        #   in Loop: Header=BB29_1 Depth=1
	leaq	-544(%rbp), %rdi
	movl	$.L.str.108, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB29_34
# BB#33:                                # %if.then.121
                                        #   in Loop: Header=BB29_1 Depth=1
	leaq	-800(%rbp), %rdi
	callq	atoi
	movq	-16(%rbp), %rdi
	movl	%eax, 128(%rdi)
	jmp	.LBB29_46
.LBB29_34:                              # %if.else.125
                                        #   in Loop: Header=BB29_1 Depth=1
	leaq	-544(%rbp), %rdi
	movl	$.L.str.109, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB29_36
# BB#35:                                # %if.then.129
                                        #   in Loop: Header=BB29_1 Depth=1
	leaq	-800(%rbp), %rdi
	callq	atoi
	movq	-16(%rbp), %rdi
	movl	%eax, 132(%rdi)
	jmp	.LBB29_45
.LBB29_36:                              # %if.else.133
                                        #   in Loop: Header=BB29_1 Depth=1
	leaq	-544(%rbp), %rdi
	movl	$.L.str.110, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB29_38
# BB#37:                                # %if.then.137
                                        #   in Loop: Header=BB29_1 Depth=1
	leaq	-800(%rbp), %rdi
	callq	atoi
	movq	-16(%rbp), %rdi
	movl	%eax, 136(%rdi)
	jmp	.LBB29_44
.LBB29_38:                              # %if.else.141
                                        #   in Loop: Header=BB29_1 Depth=1
	leaq	-544(%rbp), %rdi
	movl	$.L.str.111, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB29_40
# BB#39:                                # %if.then.145
                                        #   in Loop: Header=BB29_1 Depth=1
	leaq	-800(%rbp), %rdi
	callq	atoi
	movq	-16(%rbp), %rdi
	movl	%eax, 140(%rdi)
	jmp	.LBB29_43
.LBB29_40:                              # %if.else.149
                                        #   in Loop: Header=BB29_1 Depth=1
	leaq	-544(%rbp), %rdi
	movl	$.L.str.112, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB29_42
# BB#41:                                # %if.then.153
                                        #   in Loop: Header=BB29_1 Depth=1
	leaq	-800(%rbp), %rdi
	callq	atoi
	movq	-16(%rbp), %rdi
	movl	%eax, 88(%rdi)
.LBB29_42:                              # %if.end.157
                                        #   in Loop: Header=BB29_1 Depth=1
	jmp	.LBB29_43
.LBB29_43:                              # %if.end.158
                                        #   in Loop: Header=BB29_1 Depth=1
	jmp	.LBB29_44
.LBB29_44:                              # %if.end.159
                                        #   in Loop: Header=BB29_1 Depth=1
	jmp	.LBB29_45
.LBB29_45:                              # %if.end.160
                                        #   in Loop: Header=BB29_1 Depth=1
	jmp	.LBB29_46
.LBB29_46:                              # %if.end.161
                                        #   in Loop: Header=BB29_1 Depth=1
	jmp	.LBB29_47
.LBB29_47:                              # %if.end.162
                                        #   in Loop: Header=BB29_1 Depth=1
	jmp	.LBB29_48
.LBB29_48:                              # %if.end.163
                                        #   in Loop: Header=BB29_1 Depth=1
	jmp	.LBB29_49
.LBB29_49:                              # %if.end.164
                                        #   in Loop: Header=BB29_1 Depth=1
	jmp	.LBB29_50
.LBB29_50:                              # %if.end.165
                                        #   in Loop: Header=BB29_1 Depth=1
	jmp	.LBB29_51
.LBB29_51:                              # %if.end.166
                                        #   in Loop: Header=BB29_1 Depth=1
	jmp	.LBB29_52
.LBB29_52:                              # %if.end.167
                                        #   in Loop: Header=BB29_1 Depth=1
	jmp	.LBB29_53
.LBB29_53:                              # %if.end.168
                                        #   in Loop: Header=BB29_1 Depth=1
	jmp	.LBB29_54
.LBB29_54:                              # %if.end.169
                                        #   in Loop: Header=BB29_1 Depth=1
	jmp	.LBB29_55
.LBB29_55:                              # %if.end.170
                                        #   in Loop: Header=BB29_1 Depth=1
	jmp	.LBB29_56
.LBB29_56:                              # %if.end.171
                                        #   in Loop: Header=BB29_1 Depth=1
	jmp	.LBB29_57
.LBB29_57:                              # %if.end.172
                                        #   in Loop: Header=BB29_1 Depth=1
	jmp	.LBB29_58
.LBB29_58:                              # %if.end.173
                                        #   in Loop: Header=BB29_1 Depth=1
	jmp	.LBB29_59
.LBB29_59:                              # %if.end.174
                                        #   in Loop: Header=BB29_1 Depth=1
	movl	$256, %esi              # imm = 0x100
	xorl	%ecx, %ecx
	leaq	-288(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	get_line
	movq	%rax, -872(%rbp)        # 8-byte Spill
	jmp	.LBB29_1
.LBB29_60:                              # %while.end
	movl	$0, -4(%rbp)
.LBB29_61:                              # %return
	movl	-4(%rbp), %eax
	addq	$880, %rsp              # imm = 0x370
	popq	%rbp
	retq
.Lfunc_end29:
	.size	load_options, .Lfunc_end29-load_options
	.cfi_endproc

	.globl	explorer_load
	.align	16, 0x90
	.type	explorer_load,@function
explorer_load:                          # @explorer_load
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
.Ltmp99:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp100:
	.cfi_def_cfa_register %rbp
	subq	$352, %rsp              # imm = 0x160
# BB#1:                                 # %do.body
	cmpq	$0, filename
	je	.LBB30_3
# BB#2:                                 # %if.then
	jmp	.LBB30_4
.LBB30_3:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.113, %rsi
	movl	$1859, %edx             # imm = 0x743
	movabsq	$.L__func__.explorer_load, %rcx
	movabsq	$.L.str.114, %r8
	callq	g_assertion_message_expr
.LBB30_4:                               # %if.end
	jmp	.LBB30_5
.LBB30_5:                               # %do.end
	movabsq	$.L.str.115, %rsi
	movq	filename, %rdi
	callq	fopen
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB30_7
# BB#6:                                 # %if.then.1
	movabsq	$.L.str.116, %rdi
	callq	gettext
	movq	filename, %rdi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	-288(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_message
	jmp	.LBB30_12
.LBB30_7:                               # %if.end.6
	movl	$256, %esi              # imm = 0x100
	movl	$1, %ecx
	leaq	-272(%rbp), %rdi
	movq	-8(%rbp), %rdx
	callq	get_line
	movabsq	$.L.str.117, %rdi
	leaq	-272(%rbp), %rdx
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	movq	%rdx, -312(%rbp)        # 8-byte Spill
	callq	strlen
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	-312(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	strncmp
	cmpl	$0, %eax
	je	.LBB30_9
# BB#8:                                 # %if.then.13
	movabsq	$.L.str.118, %rdi
	callq	gettext
	movq	filename, %rdi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movq	-8(%rbp), %rdi
	callq	fclose
	movl	%eax, -324(%rbp)        # 4-byte Spill
	jmp	.LBB30_12
.LBB30_9:                               # %if.end.17
	movq	current_obj, %rdi
	movq	-8(%rbp), %rsi
	callq	load_options
	cmpl	$0, %eax
	je	.LBB30_11
# BB#10:                                # %if.then.20
	movabsq	$.L.str.119, %rdi
	callq	gettext
	movq	filename, %rdi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	line_no, %edx
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movq	-8(%rbp), %rdi
	callq	fclose
	movl	%eax, -340(%rbp)        # 4-byte Spill
	jmp	.LBB30_12
.LBB30_11:                              # %if.end.24
	movabsq	$wvals, %rax
	movl	$136, %ecx
	movl	%ecx, %edx
	movq	current_obj, %rsi
	addq	$24, %rsi
	movq	%rax, %rdi
	callq	memcpy
	movq	-8(%rbp), %rdi
	callq	fclose
	movl	%eax, -344(%rbp)        # 4-byte Spill
.LBB30_12:                              # %return
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end30:
	.size	explorer_load, .Lfunc_end30-explorer_load
	.cfi_endproc

	.align	16, 0x90
	.type	preview_draw_crosshair,@function
preview_draw_crosshair:                 # @preview_draw_crosshair
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp101:
	.cfi_def_cfa_offset 16
.Ltmp102:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp103:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	wint+8, %rax
	movl	preview_width, %esi
	imull	-8(%rbp), %esi
	addl	$0, %esi
	imull	$3, %esi, %esi
	movslq	%esi, %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movl	$0, -12(%rbp)
.LBB31_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	preview_width, %eax
	jge	.LBB31_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	xorl	$254, %ecx
	movb	%cl, %dl
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %ecx
	xorl	$254, %ecx
	movb	%cl, %dl
	movb	%dl, 1(%rax)
	movq	-24(%rbp), %rax
	movzbl	2(%rax), %ecx
	xorl	$254, %ecx
	movb	%cl, %dl
	movb	%dl, 2(%rax)
	movq	-24(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -24(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB31_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB31_1
.LBB31_4:                               # %for.end
	movq	wint+8, %rax
	imull	$0, preview_width, %ecx
	addl	-4(%rbp), %ecx
	imull	$3, %ecx, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movl	$0, -16(%rbp)
.LBB31_5:                               # %for.cond.17
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	preview_height, %eax
	jge	.LBB31_8
# BB#6:                                 # %for.body.20
                                        #   in Loop: Header=BB31_5 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	xorl	$254, %ecx
	movb	%cl, %dl
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %ecx
	xorl	$254, %ecx
	movb	%cl, %dl
	movb	%dl, 1(%rax)
	movq	-24(%rbp), %rax
	movzbl	2(%rax), %ecx
	xorl	$254, %ecx
	movb	%cl, %dl
	movb	%dl, 2(%rax)
	imull	$3, preview_width, %ecx
	movq	-24(%rbp), %rax
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -24(%rbp)
# BB#7:                                 # %for.inc.36
                                        #   in Loop: Header=BB31_5 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB31_5
.LBB31_8:                               # %for.end.38
	popq	%rbp
	retq
.Lfunc_end31:
	.size	preview_draw_crosshair, .Lfunc_end31-preview_draw_crosshair
	.cfi_endproc

	.align	16, 0x90
	.type	file_chooser_set_default_folder,@function
file_chooser_set_default_folder:        # @file_chooser_set_default_folder
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp104:
	.cfi_def_cfa_offset 16
.Ltmp105:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp106:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, fractalexplorer_path
	jne	.LBB32_2
# BB#1:                                 # %if.then
	jmp	.LBB32_5
.LBB32_2:                               # %if.end
	movl	$256, %esi              # imm = 0x100
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	fractalexplorer_path, %rdi
	callq	gimp_path_parse
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_path_get_user_writable_dir
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB32_4
# BB#3:                                 # %if.then.3
	callq	gimp_directory
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -24(%rbp)
.LBB32_4:                               # %if.end.6
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_file_chooser_set_current_folder
	movq	-24(%rbp), %rdi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	g_free
	movq	-16(%rbp), %rdi
	callq	gimp_path_free
.LBB32_5:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	file_chooser_set_default_folder, .Lfunc_end32-file_chooser_set_default_folder
	.cfi_endproc

	.align	16, 0x90
	.type	load_file_chooser_response,@function
load_file_chooser_response:             # @load_file_chooser_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp107:
	.cfi_def_cfa_offset 16
.Ltmp108:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp109:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB33_4
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gtk_file_chooser_get_filename
	movl	$1, %esi
	movq	%rax, filename
	movq	filename, %rdi
	callq	g_file_test
	cmpl	$0, %eax
	je	.LBB33_3
# BB#2:                                 # %if.then.2
	callq	explorer_load
.LBB33_3:                               # %if.end
	movq	maindlg, %rdi
	callq	gtk_widget_show
	callq	dialog_change_scale
	callq	set_cmap_preview
	callq	dialog_update_preview
.LBB33_4:                               # %if.end.3
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_destroy
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	load_file_chooser_response, .Lfunc_end33-load_file_chooser_response
	.cfi_endproc

	.align	16, 0x90
	.type	save_file_chooser_response,@function
save_file_chooser_response:             # @save_file_chooser_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp110:
	.cfi_def_cfa_offset 16
.Ltmp111:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp112:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB34_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gtk_file_chooser_get_filename
	movq	%rax, filename
	callq	save_callback
.LBB34_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_destroy
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	save_file_chooser_response, .Lfunc_end34-save_file_chooser_response
	.cfi_endproc

	.align	16, 0x90
	.type	save_callback,@function
save_callback:                          # @save_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp113:
	.cfi_def_cfa_offset 16
.Ltmp114:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp115:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movabsq	$.L.str.122, %rsi
	movq	filename, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	fopen
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB35_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.123, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_message
	jmp	.LBB35_5
.LBB35_2:                               # %if.end
	movabsq	$.L.str.117, %rdi
	movq	-8(%rbp), %rsi
	callq	fputs
	movabsq	$.L.str.124, %rdi
	movq	-8(%rbp), %rsi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	fputs
	movabsq	$.L.str.125, %rdi
	movq	-8(%rbp), %rsi
	movl	%eax, -40(%rbp)         # 4-byte Spill
	callq	fputs
	movabsq	$.L.str.124, %rdi
	movq	-8(%rbp), %rsi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	fputs
	movq	-8(%rbp), %rdi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	save_options
	movq	-8(%rbp), %rdi
	callq	ferror
	cmpl	$0, %eax
	je	.LBB35_4
# BB#3:                                 # %if.then.11
	movabsq	$.L.str.126, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-8(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	ferror
	movl	%eax, %edi
	callq	g_strerror
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_message
.LBB35_4:                               # %if.end.16
	movq	-8(%rbp), %rdi
	callq	fclose
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB35_5:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	save_callback, .Lfunc_end35-save_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI36_0:
	.quad	4638707616191610880     # double 128
	.text
	.align	16, 0x90
	.type	save_options,@function
save_options:                           # @save_options
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp116:
	.cfi_def_cfa_offset 16
.Ltmp117:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp118:
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp              # imm = 0x120
	movabsq	$.L.str.127, %rsi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	wvals, %edx
	movb	$0, %al
	callq	fprintf
	movl	$64, %esi
	movabsq	$.L.str.128, %rdx
	leaq	-80(%rbp), %rdi
	movsd	wvals+8, %xmm0          # xmm0 = mem[0],zero
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.129, %rsi
	leaq	-80(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	$64, %esi
	movabsq	$.L.str.128, %rdx
	leaq	-80(%rbp), %rdi
	movsd	wvals+16, %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.130, %rsi
	leaq	-80(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	$64, %esi
	movabsq	$.L.str.128, %rdx
	leaq	-80(%rbp), %rdi
	movsd	wvals+24, %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.131, %rsi
	leaq	-80(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	$64, %esi
	movabsq	$.L.str.128, %rdx
	leaq	-80(%rbp), %rdi
	movsd	wvals+32, %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.132, %rsi
	leaq	-80(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	$64, %esi
	movabsq	$.L.str.128, %rdx
	leaq	-80(%rbp), %rdi
	movsd	wvals+40, %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.133, %rsi
	leaq	-80(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	$64, %esi
	movabsq	$.L.str.128, %rdx
	leaq	-80(%rbp), %rdi
	movsd	wvals+48, %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.134, %rsi
	leaq	-80(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	$64, %esi
	movabsq	$.L.str.128, %rdx
	leaq	-80(%rbp), %rdi
	movsd	wvals+56, %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.135, %rsi
	leaq	-80(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	$64, %esi
	movabsq	$.L.str.128, %rdx
	movsd	.LCPI36_0, %xmm0        # xmm0 = mem[0],zero
	leaq	-80(%rbp), %rdi
	mulsd	wvals+72, %xmm0
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.136, %rsi
	leaq	-80(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	$64, %esi
	movabsq	$.L.str.128, %rdx
	movsd	.LCPI36_0, %xmm0        # xmm0 = mem[0],zero
	leaq	-80(%rbp), %rdi
	mulsd	wvals+80, %xmm0
	movl	%eax, -212(%rbp)        # 4-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.137, %rsi
	leaq	-80(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	$64, %esi
	movabsq	$.L.str.128, %rdx
	movsd	.LCPI36_0, %xmm0        # xmm0 = mem[0],zero
	leaq	-80(%rbp), %rdi
	mulsd	wvals+88, %xmm0
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.138, %rsi
	leaq	-80(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.139, %rsi
	movq	-8(%rbp), %rdi
	movl	wvals+96, %edx
	movl	%eax, -244(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.140, %rsi
	movq	-8(%rbp), %rdi
	movl	wvals+100, %edx
	movl	%eax, -248(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.141, %rsi
	movq	-8(%rbp), %rdi
	movl	wvals+104, %edx
	movl	%eax, -252(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.142, %rsi
	movq	-8(%rbp), %rdi
	movl	wvals+108, %edx
	movl	%eax, -256(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.143, %rsi
	movq	-8(%rbp), %rdi
	movl	wvals+112, %edx
	movl	%eax, -260(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.144, %rsi
	movq	-8(%rbp), %rdi
	movl	wvals+116, %edx
	movl	%eax, -264(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.145, %rsi
	movq	-8(%rbp), %rdi
	movl	wvals+64, %edx
	movl	%eax, -268(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.124, %rdi
	movq	-8(%rbp), %rsi
	movl	%eax, -272(%rbp)        # 4-byte Spill
	callq	fputs
	movabsq	$.L.str.146, %rsi
	movq	-8(%rbp), %rdi
	movl	%eax, -276(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.124, %rdi
	movq	-8(%rbp), %rsi
	movl	%eax, -280(%rbp)        # 4-byte Spill
	callq	fputs
	movl	%eax, -284(%rbp)        # 4-byte Spill
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end36:
	.size	save_options, .Lfunc_end36-save_options
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"fractal-explorer"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"fractalexplorer-path"
	.size	.L.str.1, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimprc"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"fractalexplorer"
	.size	.L.str.3, 16

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"No %s in gimprc:\nYou need to add an entry like\n(%s \"%s\")\nto your %s file."
	.size	.L.str.4, 74

	.type	elements,@object        # @elements
	.local	elements
	.comm	elements,8,8
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Fractal Explorer"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-fractal-explorer"
	.size	.L.str.6, 22

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"plug-in-fractalexplorer"
	.size	.L.str.7, 24

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gtk-cancel"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gtk-ok"
	.size	.L.str.9, 7

	.type	maindlg,@object         # @maindlg
	.local	maindlg
	.comm	maindlg,8,8
	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"response"
	.size	.L.str.10, 9

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"destroy"
	.size	.L.str.11, 8

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"button-press-event"
	.size	.L.str.12, 19

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"button-release-event"
	.size	.L.str.13, 21

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"motion-notify-event"
	.size	.L.str.14, 20

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"leave-notify-event"
	.size	.L.str.15, 19

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"enter-notify-event"
	.size	.L.str.16, 19

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Realtime preview"
	.size	.L.str.17, 17

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"toggled"
	.size	.L.str.18, 8

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"If enabled the preview will be redrawn automatically"
	.size	.L.str.19, 53

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"R_edraw preview"
	.size	.L.str.20, 16

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"clicked"
	.size	.L.str.21, 8

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Zoom"
	.size	.L.str.22, 5

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gtk-zoom-in"
	.size	.L.str.23, 12

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gtk-zoom-out"
	.size	.L.str.24, 13

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gtk-undo"
	.size	.L.str.25, 9

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Undo last zoom change"
	.size	.L.str.26, 22

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gtk-redo"
	.size	.L.str.27, 9

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Redo last zoom change"
	.size	.L.str.28, 22

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"_Parameters"
	.size	.L.str.29, 12

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Fractal Parameters"
	.size	.L.str.30, 19

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Left:"
	.size	.L.str.31, 6

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"value-changed"
	.size	.L.str.32, 14

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Right:"
	.size	.L.str.33, 7

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Top:"
	.size	.L.str.34, 5

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Bottom:"
	.size	.L.str.35, 8

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Iterations:"
	.size	.L.str.36, 12

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"The higher the number of iterations, the more details will be calculated"
	.size	.L.str.37, 73

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"CX:"
	.size	.L.str.38, 4

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Changes aspect of fractal"
	.size	.L.str.39, 26

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"CY:"
	.size	.L.str.40, 4

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"gtk-open"
	.size	.L.str.41, 9

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Load a fractal from file"
	.size	.L.str.42, 25

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"gimp-reset"
	.size	.L.str.43, 11

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Reset parameters to default values"
	.size	.L.str.44, 35

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"gtk-save"
	.size	.L.str.45, 9

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Save active fractal to file"
	.size	.L.str.46, 28

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Fractal Type"
	.size	.L.str.47, 13

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Mandelbrot"
	.size	.L.str.48, 11

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Julia"
	.size	.L.str.49, 6

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Barnsley 1"
	.size	.L.str.50, 11

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Barnsley 2"
	.size	.L.str.51, 11

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Barnsley 3"
	.size	.L.str.52, 11

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Spider"
	.size	.L.str.53, 7

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Man'o'war"
	.size	.L.str.54, 10

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Lambda"
	.size	.L.str.55, 7

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Sierpinski"
	.size	.L.str.56, 11

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Co_lors"
	.size	.L.str.57, 8

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Number of Colors"
	.size	.L.str.58, 17

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Number of colors:"
	.size	.L.str.59, 18

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Change the number of colors in the mapping"
	.size	.L.str.60, 43

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Use loglog smoothing"
	.size	.L.str.61, 21

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Use log log smoothing to eliminate \"banding\" in the result"
	.size	.L.str.62, 59

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Color Density"
	.size	.L.str.63, 14

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"Red:"
	.size	.L.str.64, 5

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"Change the intensity of the red channel"
	.size	.L.str.65, 40

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Green:"
	.size	.L.str.66, 7

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"Change the intensity of the green channel"
	.size	.L.str.67, 42

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"Blue:"
	.size	.L.str.68, 6

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"Change the intensity of the blue channel"
	.size	.L.str.69, 41

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"Color Function"
	.size	.L.str.70, 15

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"Red"
	.size	.L.str.71, 4

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"Sine"
	.size	.L.str.72, 5

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"Cosine"
	.size	.L.str.73, 7

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"color-function\004None"
	.size	.L.str.74, 20

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"Use sine-function for this color component"
	.size	.L.str.75, 43

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"Use cosine-function for this color component"
	.size	.L.str.76, 45

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"Use linear mapping instead of any trigonometrical function for this color channel"
	.size	.L.str.77, 82

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"Inversion"
	.size	.L.str.78, 10

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"If you enable this option higher color values will be swapped with lower ones and vice versa"
	.size	.L.str.79, 93

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"Green"
	.size	.L.str.80, 6

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"Blue"
	.size	.L.str.81, 5

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"Color Mode"
	.size	.L.str.82, 11

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"As specified above"
	.size	.L.str.83, 19

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"gimp-item-data"
	.size	.L.str.84, 15

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"Create a color-map with the options you specified above (color density/function). The result is visible in the preview image"
	.size	.L.str.85, 125

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"Apply active gradient to final image"
	.size	.L.str.86, 37

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"Create a color-map using a gradient from the gradient editor"
	.size	.L.str.87, 61

	.type	n_gradient_samples,@object # @n_gradient_samples
	.local	n_gradient_samples
	.comm	n_gradient_samples,4,4
	.type	gradient_samples,@object # @gradient_samples
	.local	gradient_samples
	.comm	gradient_samples,8,8
	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"FractalExplorer Gradient"
	.size	.L.str.88, 25

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"gradient-set"
	.size	.L.str.89, 13

	.type	cmap_preview,@object    # @cmap_preview
	.local	cmap_preview
	.comm	cmap_preview,8,8
	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"size-allocate"
	.size	.L.str.90, 14

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"_Fractals"
	.size	.L.str.91, 10

	.type	ready_now,@object       # @ready_now
	.local	ready_now
	.comm	ready_now,4,4
	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"Error reading file"
	.size	.L.str.92, 19

	.type	standardvals,@object    # @standardvals
	.data
	.align	8
standardvals:
	.long	0                       # 0x0
	.zero	4
	.quad	-4611686018427387904    # double -2
	.quad	4611686018427387904     # double 2
	.quad	-4613937818241073152    # double -1.5
	.quad	4609434218613702656     # double 1.5
	.quad	4632233691727265792     # double 50
	.quad	-4618441417868443648    # double -0.75
	.quad	-4626998257160447590    # double -0.20000000000000001
	.long	0                       # 0x0
	.zero	4
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	256                     # 0x100
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	standardvals, 136

	.type	.L.str.93,@object       # @.str.93
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.93:
	.asciz	"<EOF>"
	.size	.L.str.93, 6

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"%255s %255s"
	.size	.L.str.94, 12

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"fractaltype:"
	.size	.L.str.95, 13

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"xmin:"
	.size	.L.str.96, 6

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"xmax:"
	.size	.L.str.97, 6

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"ymin:"
	.size	.L.str.98, 6

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"ymax:"
	.size	.L.str.99, 6

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"redstretch:"
	.size	.L.str.100, 12

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"greenstretch:"
	.size	.L.str.101, 14

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"bluestretch:"
	.size	.L.str.102, 13

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"iter:"
	.size	.L.str.103, 6

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"cx:"
	.size	.L.str.104, 4

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"cy:"
	.size	.L.str.105, 4

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"redmode:"
	.size	.L.str.106, 9

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"greenmode:"
	.size	.L.str.107, 11

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"bluemode:"
	.size	.L.str.108, 10

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"redinvert:"
	.size	.L.str.109, 11

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"greeninvert:"
	.size	.L.str.110, 13

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"blueinvert:"
	.size	.L.str.111, 12

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"colormode:"
	.size	.L.str.112, 11

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"fractal-explorer-dialogs.c"
	.size	.L.str.113, 27

	.type	.L__func__.explorer_load,@object # @__func__.explorer_load
.L__func__.explorer_load:
	.asciz	"explorer_load"
	.size	.L__func__.explorer_load, 14

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"filename != NULL"
	.size	.L.str.114, 17

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"rt"
	.size	.L.str.115, 3

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"Could not open '%s' for reading: %s"
	.size	.L.str.116, 36

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"Fractal Explorer Plug-In Version 2 - (c) 1997 <cotting@mygale.org>\n"
	.size	.L.str.117, 68

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"'%s' is not a FractalExplorer file"
	.size	.L.str.118, 35

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"'%s' is corrupt. Line %d Option section incorrect"
	.size	.L.str.119, 50

	.type	x_press,@object         # @x_press
	.data
	.align	8
x_press:
	.quad	-4616189618054758400    # double -1
	.size	x_press, 8

	.type	y_press,@object         # @y_press
	.align	8
y_press:
	.quad	-4616189618054758400    # double -1
	.size	y_press, 8

	.type	zoomindex,@object       # @zoomindex
	.local	zoomindex
	.comm	zoomindex,4,4
	.type	zooms,@object           # @zooms
	.local	zooms
	.comm	zooms,13600,16
	.type	zoommax,@object         # @zoommax
	.local	zoommax
	.comm	zoommax,4,4
	.type	oldxpos,@object         # @oldxpos
	.align	4
oldxpos:
	.long	4294967295              # 0xffffffff
	.size	oldxpos, 4

	.type	oldypos,@object         # @oldypos
	.align	4
oldypos:
	.long	4294967295              # 0xffffffff
	.size	oldypos, 4

	.type	preview_enter_notify_event.cursor,@object # @preview_enter_notify_event.cursor
	.local	preview_enter_notify_event.cursor
	.comm	preview_enter_notify_event.cursor,8,8
	.type	gradient_name,@object   # @gradient_name
	.local	gradient_name
	.comm	gradient_name,8,8
	.type	create_load_file_chooser.window,@object # @create_load_file_chooser.window
	.local	create_load_file_chooser.window
	.comm	create_load_file_chooser.window,8,8
	.type	.L.str.120,@object      # @.str.120
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.120:
	.asciz	"Load Fractal Parameters"
	.size	.L.str.120, 24

	.type	create_save_file_chooser.window,@object # @create_save_file_chooser.window
	.local	create_save_file_chooser.window
	.comm	create_save_file_chooser.window,8,8
	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"Save Fractal Parameters"
	.size	.L.str.121, 24

	.type	tpath,@object           # @tpath
	.local	tpath
	.comm	tpath,8,8
	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"wt+"
	.size	.L.str.122, 4

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"Could not open '%s' for writing: %s"
	.size	.L.str.123, 36

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"#**********************************************************************\n"
	.size	.L.str.124, 73

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"# This is a data file for the Fractal Explorer plug-in for GIMP       *\n"
	.size	.L.str.125, 73

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"Could not write '%s': %s"
	.size	.L.str.126, 25

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"fractaltype: %i\n"
	.size	.L.str.127, 17

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"%0.15f"
	.size	.L.str.128, 7

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"xmin: %s\n"
	.size	.L.str.129, 10

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"xmax: %s\n"
	.size	.L.str.130, 10

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"ymin: %s\n"
	.size	.L.str.131, 10

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"ymax: %s\n"
	.size	.L.str.132, 10

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"iter: %s\n"
	.size	.L.str.133, 10

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"cx: %s\n"
	.size	.L.str.134, 8

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"cy: %s\n"
	.size	.L.str.135, 8

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"redstretch: %s\n"
	.size	.L.str.136, 16

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"greenstretch: %s\n"
	.size	.L.str.137, 18

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"bluestretch: %s\n"
	.size	.L.str.138, 17

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"redmode: %i\n"
	.size	.L.str.139, 13

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"greenmode: %i\n"
	.size	.L.str.140, 15

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"bluemode: %i\n"
	.size	.L.str.141, 14

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"redinvert: %i\n"
	.size	.L.str.142, 15

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"greeninvert: %i\n"
	.size	.L.str.143, 17

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"blueinvert: %i\n"
	.size	.L.str.144, 16

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"colormode: %i\n"
	.size	.L.str.145, 15

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"<EOF>\n"
	.size	.L.str.146, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
