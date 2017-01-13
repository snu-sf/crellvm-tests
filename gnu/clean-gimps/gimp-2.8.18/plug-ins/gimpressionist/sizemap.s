	.text
	.file	"sizemap.bc"
	.globl	size_map_free_resources
	.align	16, 0x90
	.type	size_map_free_resources,@function
size_map_free_resources:                # @size_map_free_resources
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
	movabsq	$update_vector_preview_backup, %rdi
	callq	ppm_kill
	movabsq	$update_vector_preview_sbuffer, %rdi
	callq	ppm_kill
	popq	%rbp
	retq
.Lfunc_end0:
	.size	size_map_free_resources, .Lfunc_end0-size_map_free_resources
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4607182418800017408     # double 1
.LCPI1_1:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI1_2:
	.quad	4622325772547050701     # double 10.9
.LCPI1_3:
	.quad	4602678819172646912     # double 0.5
.LCPI1_4:
	.quad	4617315517961601024     # double 5
.LCPI1_5:
	.quad	4632233691727265792     # double 50
.LCPI1_6:
	.quad	4636737291354636288     # double 100
.LCPI1_7:
	.quad	4621819117588971520     # double 10
	.text
	.globl	create_sizemap_dialog
	.align	16, 0x90
	.type	create_sizemap_dialog,@function
create_sizemap_dialog:                  # @create_sizemap_dialog
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$808, %rsp              # imm = 0x328
.Ltmp6:
	.cfi_offset %rbx, -56
.Ltmp7:
	.cfi_offset %r12, -48
.Ltmp8:
	.cfi_offset %r13, -40
.Ltmp9:
	.cfi_offset %r14, -32
.Ltmp10:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	callq	initsmvectors
	cmpq	$0, smwindow
	je	.LBB1_2
# BB#1:                                 # %if.then
	callq	updatesmvectorprev
	callq	updatesmpreviewprev
	movq	smwindow, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	jmp	.LBB1_3
.LBB1_2:                                # %if.end
	movabsq	$.L.str, %rdi
	callq	gettext
	movq	-48(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_toplevel
	movabsq	$.L.str.1, %rsi
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.2, %r9
	movabsq	$.L.str.3, %rdi
	movl	$1, %edx
	movabsq	$.L.str.4, %r10
	movl	$4294967290, %r11d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.5, %rbx
	movl	$4294967291, %r14d      # imm = 0xFFFFFFFB
	xorl	%r15d, %r15d
	movl	%r15d, %r12d
	movq	-104(%rbp), %r13        # 8-byte Reload
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%r13, %rdi
	movl	%edx, -116(%rbp)        # 4-byte Spill
	movq	%rax, %rdx
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$1, 8(%rsp)
	movq	%r10, 16(%rsp)
	movl	$-6, 24(%rsp)
	movq	%rbx, 32(%rsp)
	movl	$-5, 40(%rsp)
	movq	$0, 48(%rsp)
	movb	$0, %al
	movl	%r14d, -120(%rbp)       # 4-byte Spill
	movq	%r12, -128(%rbp)        # 8-byte Spill
	movl	%r11d, -132(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, smwindow
	movq	smwindow, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$1, %edx
	movl	$4294967290, %ecx       # imm = 0xFFFFFFFA
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movabsq	$.L.str.6, %rsi
	movabsq	$smresponse, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	xorl	%ecx, %ecx
	movq	smwindow, %r10
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	movq	%r9, %rcx
	movq	%r9, %r8
	movl	-156(%rbp), %r9d        # 4-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.7, %rsi
	movabsq	$gtk_widget_destroyed, %rcx
	movabsq	$smwindow, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	smwindow, %rdi
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movl	$2, %edi
	movl	$5, %esi
	xorl	%edx, %edx
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	smwindow, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -212(%rbp)        # 4-byte Spill
	movl	-212(%rbp), %ecx        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.8, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_frame_new
	movq	%rax, -56(%rbp)
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-72(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -236(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-236(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -240(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-240(%rbp), %r8d        # 4-byte Reload
	movl	-236(%rbp), %r9d        # 4-byte Reload
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_box_new
	movq	%rax, -88(%rbp)
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_event_box_new
	movabsq	$.L.str.9, %rdi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	-88(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -268(%rbp)        # 4-byte Spill
	movl	-268(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_preview_area_new
	movl	$150, %ecx
	movq	%rax, smvectorprev
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_widget_set_size_request
	movq	-64(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$256, %esi              # imm = 0x100
	movq	-64(%rbp), %rdi
	callq	gtk_widget_add_events
	movabsq	$.L.str.10, %rsi
	movabsq	$smmapclick, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-64(%rbp), %r10
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-288(%rbp), %rcx        # 8-byte Reload
	movq	-288(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-64(%rbp), %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movsd	.LCPI1_5, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI1_6, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI1_0, %xmm3         # xmm3 = mem[0],zero
	movsd	%xmm3, -304(%rbp)       # 8-byte Spill
	movsd	-304(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-304(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	callq	gtk_adjustment_new
	movl	$1, %edi
	movq	%rax, smvectprevbrightadjust
	movq	smvectprevbrightadjust, %rsi
	callq	gtk_scale_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_scale_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_scale_set_draw_value
	movq	-88(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.11, %rsi
	movabsq	$updatesmvectorprev, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%r9d, %r9d
	movq	smvectprevbrightadjust, %rdi
	movq	%rax, %rcx
	movq	%rax, %r8
	callq	g_signal_connect_data
	movabsq	$.L.str.12, %rdi
	movq	-56(%rbp), %rcx
	movq	%rax, -328(%rbp)        # 8-byte Spill
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.13, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_frame_new
	movq	%rax, -56(%rbp)
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-72(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	movl	$2, %ecx
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_preview_area_new
	movl	$150, %ecx
	movq	%rax, smpreviewprev
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_widget_set_size_request
	movq	-64(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_box_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_homogeneous
	movq	-88(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-72(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r9d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, -388(%rbp)        # 4-byte Spill
	movl	-388(%rbp), %r8d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.14, %rdi
	callq	gtk_button_new_with_mnemonic
	movq	%rax, -56(%rbp)
	movq	%rax, prev_button
	movq	-88(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -404(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-404(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -408(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-408(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.15, %rsi
	movabsq	$smprevclick, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r10
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-416(%rbp), %rcx        # 8-byte Reload
	movq	-416(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.16, %rdi
	movq	-56(%rbp), %rcx
	movq	%rax, -424(%rbp)        # 8-byte Spill
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.17, %rdi
	callq	gtk_button_new_with_mnemonic
	movq	%rax, -56(%rbp)
	movq	%rax, next_button
	movq	-88(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movl	$1, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.15, %rsi
	movabsq	$smnextclick, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r10
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-448(%rbp), %rcx        # 8-byte Reload
	movq	-448(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.18, %rdi
	movq	-56(%rbp), %rcx
	movq	%rax, -456(%rbp)        # 8-byte Spill
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.19, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_button_new_with_mnemonic
	movq	%rax, -56(%rbp)
	movq	%rax, add_button
	movq	-88(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movl	$1, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.15, %rsi
	movabsq	$smaddclick, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r10
	movq	%rdi, -480(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-480(%rbp), %rcx        # 8-byte Reload
	movq	-480(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.20, %rdi
	movq	-56(%rbp), %rcx
	movq	%rax, -488(%rbp)        # 8-byte Spill
	movq	%rcx, -496(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.21, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_button_new_with_mnemonic
	movq	%rax, -56(%rbp)
	movq	%rax, kill_button
	movq	-88(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movl	$1, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.15, %rsi
	movabsq	$smdeleteclick, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r10
	movq	%rdi, -512(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-512(%rbp), %rcx        # 8-byte Reload
	movq	-512(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.22, %rdi
	movq	-56(%rbp), %rcx
	movq	%rax, -520(%rbp)        # 8-byte Spill
	movq	%rcx, -528(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movl	$3, %edi
	movl	$4, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-72(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$2, %r9d
	movl	$3, %r11d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	movl	%r11d, %r9d
	callq	gtk_table_attach_defaults
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movq	-80(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.23, %rdi
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.24, %rdi
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$150, %r8d
	movl	$6, %r9d
	movsd	.LCPI1_5, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI1_6, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI1_0, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI1_7, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %edx
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -576(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -580(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	-568(%rbp), %rcx        # 8-byte Reload
	movsd	%xmm1, -592(%rbp)       # 8-byte Spill
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-592(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-592(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.11, %rsi
	movabsq	$angsmadjmove, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	%rax, sizadjust
	movq	sizadjust, %rax
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-600(%rbp), %rcx        # 8-byte Reload
	movq	-600(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-80(%rbp), %rcx
	movq	%rax, -608(%rbp)        # 8-byte Spill
	movq	%rcx, -616(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.25, %rdi
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.26, %rdi
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$150, %r8d
	movl	$6, %r9d
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI1_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI1_4, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI1_3, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm3, %xmm3
	xorl	%r11d, %r11d
	movl	%r11d, %ecx
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	-632(%rbp), %r10        # 8-byte Reload
	movq	%rcx, -640(%rbp)        # 8-byte Spill
	movq	%r10, %rcx
	movsd	%xmm1, -648(%rbp)       # 8-byte Spill
	movsd	-648(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	%xmm3, -656(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm3
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-656(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-656(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.11, %rsi
	movabsq	$strsmadjmove, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	%rax, smstradjust
	movq	smstradjust, %rax
	movq	%rdi, -664(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-664(%rbp), %rcx        # 8-byte Reload
	movq	-664(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-80(%rbp), %rcx
	movq	%rax, -672(%rbp)        # 8-byte Spill
	movq	%rcx, -680(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.27, %rdi
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.28, %rdi
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	movl	$150, %r8d
	movl	$6, %r9d
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI1_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI1_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI1_3, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r11d
	xorps	%xmm3, %xmm3
	xorl	%r14d, %r14d
	movl	%r14d, %ecx
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	-696(%rbp), %r10        # 8-byte Reload
	movq	%rcx, -704(%rbp)        # 8-byte Spill
	movq	%r10, %rcx
	movsd	%xmm1, -712(%rbp)       # 8-byte Spill
	movsd	-712(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	%xmm3, -720(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm3
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-720(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-720(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -724(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.11, %rsi
	movabsq	$smstrexpsmadjmove, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	%rax, smstrexpadjust
	movq	smstrexpadjust, %rax
	movq	%rdi, -736(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-736(%rbp), %rcx        # 8-byte Reload
	movq	-736(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.29, %rdi
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -56(%rbp)
	movq	%rax, size_voronoi
	movq	-80(%rbp), %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-752(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %edx
	movl	$4, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_table_attach_defaults
	movq	-56(%rbp), %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-768(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	pcvals+5064, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movabsq	$.L.str.15, %rsi
	movabsq	$smstrexpsmadjmove, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r10
	movq	%rdi, -776(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-776(%rbp), %rcx        # 8-byte Reload
	movq	-776(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.30, %rdi
	movq	-56(%rbp), %rcx
	movq	%rax, -784(%rbp)        # 8-byte Spill
	movq	%rcx, -792(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-792(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	smwindow, %rdi
	callq	gtk_widget_show
	callq	updatesmvectorprev
	callq	updatesmpreviewprev
.LBB1_3:                                # %return
	addq	$808, %rsp              # imm = 0x328
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	create_sizemap_dialog, .Lfunc_end1-create_sizemap_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
.LCPI2_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	initsmvectors,@function
initsmvectors:                          # @initsmvectors
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
	cmpl	$0, pcvals+5048
	je	.LBB2_6
# BB#1:                                 # %if.then
	movl	pcvals+5048, %eax
	movl	%eax, numsmvect
	movl	$0, -4(%rbp)
.LBB2_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cmpl	numsmvect, %eax
	jge	.LBB2_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB2_2 Depth=1
	movabsq	$pcvals, %rax
	addq	$3448, %rax             # imm = 0xD78
	movabsq	$smvector, %rcx
	movslq	-4(%rbp), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movslq	-4(%rbp), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	%rdx, (%rcx)
	movq	8(%rax), %rdx
	movq	%rdx, 8(%rcx)
	movq	16(%rax), %rdx
	movq	%rdx, 16(%rcx)
	movq	24(%rax), %rax
	movq	%rax, 24(%rcx)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB2_2
.LBB2_5:                                # %for.end
	jmp	.LBB2_7
.LBB2_6:                                # %if.else
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI2_1, %xmm2         # xmm2 = mem[0],zero
	movl	$1, numsmvect
	movsd	%xmm2, smvector
	movsd	%xmm2, smvector+8
	movsd	%xmm1, smvector+16
	movsd	%xmm0, smvector+24
.LBB2_7:                                # %if.end
	movl	selectedsmvector, %eax
	cmpl	numsmvect, %eax
	jl	.LBB2_9
# BB#8:                                 # %if.then.4
	movl	numsmvect, %eax
	subl	$1, %eax
	movl	%eax, selectedsmvector
.LBB2_9:                                # %if.end.5
	popq	%rbp
	retq
.Lfunc_end2:
	.size	initsmvectors, .Lfunc_end2-initsmvectors
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4602678819172646912     # double 0.5
.LCPI3_1:
	.quad	4607182418800017408     # double 1
.LCPI3_2:
	.quad	4636737291354636288     # double 100
.LCPI3_3:
	.quad	4639481672377565184     # double 150
	.text
	.align	16, 0x90
	.type	updatesmvectorprev,@function
updatesmvectorprev:                     # @updatesmvectorprev
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
	subq	$96, %rsp
	movw	.Lupdatesmvectorprev.gray, %ax
	movw	%ax, -27(%rbp)
	movb	.Lupdatesmvectorprev.gray+2, %cl
	movb	%cl, -25(%rbp)
	movw	.Lupdatesmvectorprev.red, %ax
	movw	%ax, -30(%rbp)
	movb	.Lupdatesmvectorprev.red+2, %cl
	movb	%cl, -28(%rbp)
	movw	.Lupdatesmvectorprev.white, %ax
	movw	%ax, -33(%rbp)
	movb	.Lupdatesmvectorprev.white+2, %cl
	movb	%cl, -31(%rbp)
	cmpq	$0, smvectprevbrightadjust
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	smvectprevbrightadjust, %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI3_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_2, %xmm2         # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm0
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
	jmp	.LBB3_3
.LBB3_2:                                # %if.else
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
.LBB3_3:                                # %if.end
	cmpl	$0, updatesmvectorprev.ok
	je	.LBB3_5
# BB#4:                                 # %lor.lhs.false
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	updatesmvectorprev.last_val, %xmm0
	jne	.LBB3_5
	jp	.LBB3_5
	jmp	.LBB3_9
.LBB3_5:                                # %if.then.2
	movabsq	$update_vector_preview_backup, %rdi
	callq	infile_copy_to_ppm
	movabsq	$update_vector_preview_backup, %rdi
	movl	$1, %eax
	cvtsd2ss	-24(%rbp), %xmm0
	movl	%eax, %esi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	ppm_apply_brightness
	cmpl	$150, update_vector_preview_backup
	jne	.LBB3_7
# BB#6:                                 # %lor.lhs.false.5
	cmpl	$150, update_vector_preview_backup+4
	je	.LBB3_8
.LBB3_7:                                # %if.then.8
	movabsq	$update_vector_preview_backup, %rdi
	movl	$150, %eax
	movl	%eax, %esi
	movl	%eax, %edx
	callq	resize_fast
.LBB3_8:                                # %if.end.9
	movl	$1, updatesmvectorprev.ok
.LBB3_9:                                # %if.end.10
	movabsq	$update_vector_preview_backup, %rdi
	movabsq	$update_vector_preview_sbuffer, %rsi
	callq	ppm_copy
	movl	$0, -4(%rbp)
.LBB3_10:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cmpl	numsmvect, %eax
	jge	.LBB3_16
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB3_10 Depth=1
	movsd	.LCPI3_3, %xmm0         # xmm0 = mem[0],zero
	movabsq	$smvector, %rax
	movslq	-4(%rbp), %rcx
	shlq	$5, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movaps	%xmm0, %xmm1
	mulsd	(%rdx), %xmm1
	cvttsd2si	%xmm1, %esi
	movl	%esi, -8(%rbp)
	movslq	-4(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	mulsd	8(%rax), %xmm0
	cvttsd2si	%xmm0, %esi
	movl	%esi, -12(%rbp)
	movl	-4(%rbp), %esi
	cmpl	selectedsmvector, %esi
	jne	.LBB3_13
# BB#12:                                # %if.then.22
                                        #   in Loop: Header=BB3_10 Depth=1
	movabsq	$update_vector_preview_sbuffer, %rdi
	leaq	-30(%rbp), %rsi
	movl	-8(%rbp), %eax
	subl	$5, %eax
	cvtsi2ssl	%eax, %xmm0
	cvtsi2ssl	-12(%rbp), %xmm1
	movl	-8(%rbp), %eax
	addl	$5, %eax
	cvtsi2ssl	%eax, %xmm2
	cvtsi2ssl	-12(%rbp), %xmm3
	callq	ppm_drawline
	movabsq	$update_vector_preview_sbuffer, %rdi
	leaq	-30(%rbp), %rsi
	cvtsi2ssl	-8(%rbp), %xmm0
	movl	-12(%rbp), %eax
	subl	$5, %eax
	cvtsi2ssl	%eax, %xmm1
	cvtsi2ssl	-8(%rbp), %xmm2
	movl	-12(%rbp), %eax
	addl	$5, %eax
	cvtsi2ssl	%eax, %xmm3
	callq	ppm_drawline
	jmp	.LBB3_14
.LBB3_13:                               # %if.else.35
                                        #   in Loop: Header=BB3_10 Depth=1
	movabsq	$update_vector_preview_sbuffer, %rdi
	leaq	-27(%rbp), %rsi
	movl	-8(%rbp), %eax
	subl	$5, %eax
	cvtsi2ssl	%eax, %xmm0
	cvtsi2ssl	-12(%rbp), %xmm1
	movl	-8(%rbp), %eax
	addl	$5, %eax
	cvtsi2ssl	%eax, %xmm2
	cvtsi2ssl	-12(%rbp), %xmm3
	callq	ppm_drawline
	movabsq	$update_vector_preview_sbuffer, %rdi
	leaq	-27(%rbp), %rsi
	cvtsi2ssl	-8(%rbp), %xmm0
	movl	-12(%rbp), %eax
	subl	$5, %eax
	cvtsi2ssl	%eax, %xmm1
	cvtsi2ssl	-8(%rbp), %xmm2
	movl	-12(%rbp), %eax
	addl	$5, %eax
	cvtsi2ssl	%eax, %xmm3
	callq	ppm_drawline
.LBB3_14:                               # %if.end.50
                                        #   in Loop: Header=BB3_10 Depth=1
	movabsq	$update_vector_preview_sbuffer, %rdi
	leaq	-33(%rbp), %rsi
	cvtsi2ssl	-8(%rbp), %xmm0
	cvtsi2ssl	-12(%rbp), %xmm1
	callq	ppm_put_rgb
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB3_10 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB3_10
.LBB3_16:                               # %for.end
	movq	smvectorprev, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$150, %edx
	movl	$450, %r8d              # imm = 0x1C2
	movq	update_vector_preview_sbuffer+8, %rsi
	movq	%rax, %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-60(%rbp), %r9d         # 4-byte Reload
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	movl	%r9d, %ecx
	movl	%r8d, -68(%rbp)         # 4-byte Spill
	movl	%r9d, %r8d
	movl	-64(%rbp), %r9d         # 4-byte Reload
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$450, 8(%rsp)           # imm = 0x1C2
	callq	gimp_preview_area_draw
	movq	prev_button, %rdi
	cmpl	$1, numsmvect
	setg	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %esi
	callq	gtk_widget_set_sensitive
	movq	next_button, %rdi
	cmpl	$1, numsmvect
	setg	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %esi
	callq	gtk_widget_set_sensitive
	movq	add_button, %rdi
	cmpl	$50, numsmvect
	setl	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %esi
	callq	gtk_widget_set_sensitive
	movq	kill_button, %rdi
	cmpl	$1, numsmvect
	setg	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %esi
	callq	gtk_widget_set_sensitive
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	updatesmvectorprev, .Lfunc_end3-updatesmvectorprev
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4617315517961601024     # double 5
.LCPI4_1:
	.quad	4639481672377565184     # double 150
	.text
	.align	16, 0x90
	.type	updatesmpreviewprev,@function
updatesmpreviewprev:                    # @updatesmpreviewprev
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
	subq	$80, %rsp
	xorl	%esi, %esi
	movl	$3, %eax
	movl	%eax, %edx
	leaq	-11(%rbp), %rcx
	movq	%rcx, %rdi
	callq	memset
	movw	.Lupdatesmpreviewprev.gray, %r8w
	movw	%r8w, -14(%rbp)
	movb	.Lupdatesmpreviewprev.gray+2, %r9b
	movb	%r9b, -12(%rbp)
	cmpq	$0, updatesmpreviewprev.nsbuffer+8
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movabsq	$updatesmpreviewprev.nsbuffer, %rdi
	movl	$150, %eax
	movl	%eax, %esi
	movl	%eax, %edx
	callq	ppm_new
.LBB4_2:                                # %if.end
	movabsq	$updatesmpreviewprev.nsbuffer, %rdi
	leaq	-11(%rbp), %rsi
	callq	fill
	movl	$6, -8(%rbp)
.LBB4_3:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_5 Depth 2
	cmpl	$146, -8(%rbp)
	jge	.LBB4_10
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	$6, -4(%rbp)
.LBB4_5:                                # %for.cond.2
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$146, -4(%rbp)
	jge	.LBB4_8
# BB#6:                                 # %for.body.4
                                        #   in Loop: Header=BB4_5 Depth=2
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-4(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	cvtsi2sdl	-8(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	getsiz_from_gui
	movabsq	$updatesmpreviewprev.nsbuffer, %rdi
	leaq	-14(%rbp), %rsi
	movsd	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
	cvtsi2sdl	-4(%rbp), %xmm0
	subsd	-24(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	cvtsi2sdl	-8(%rbp), %xmm1
	subsd	-24(%rbp), %xmm1
	cvtsd2ss	%xmm1, %xmm1
	cvtsi2sdl	-4(%rbp), %xmm2
	addsd	-24(%rbp), %xmm2
	cvtsd2ss	%xmm2, %xmm2
	cvtsi2sdl	-8(%rbp), %xmm3
	subsd	-24(%rbp), %xmm3
	cvtsd2ss	%xmm3, %xmm3
	callq	ppm_drawline
	movabsq	$updatesmpreviewprev.nsbuffer, %rdi
	leaq	-14(%rbp), %rsi
	cvtsi2sdl	-4(%rbp), %xmm0
	addsd	-24(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	cvtsi2sdl	-8(%rbp), %xmm1
	subsd	-24(%rbp), %xmm1
	cvtsd2ss	%xmm1, %xmm1
	cvtsi2sdl	-4(%rbp), %xmm2
	addsd	-24(%rbp), %xmm2
	cvtsd2ss	%xmm2, %xmm2
	cvtsi2sdl	-8(%rbp), %xmm3
	addsd	-24(%rbp), %xmm3
	cvtsd2ss	%xmm3, %xmm3
	callq	ppm_drawline
	movabsq	$updatesmpreviewprev.nsbuffer, %rdi
	leaq	-14(%rbp), %rsi
	cvtsi2sdl	-4(%rbp), %xmm0
	addsd	-24(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	cvtsi2sdl	-8(%rbp), %xmm1
	addsd	-24(%rbp), %xmm1
	cvtsd2ss	%xmm1, %xmm1
	cvtsi2sdl	-4(%rbp), %xmm2
	subsd	-24(%rbp), %xmm2
	cvtsd2ss	%xmm2, %xmm2
	cvtsi2sdl	-8(%rbp), %xmm3
	addsd	-24(%rbp), %xmm3
	cvtsd2ss	%xmm3, %xmm3
	callq	ppm_drawline
	movabsq	$updatesmpreviewprev.nsbuffer, %rdi
	leaq	-14(%rbp), %rsi
	cvtsi2sdl	-4(%rbp), %xmm0
	subsd	-24(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	cvtsi2sdl	-8(%rbp), %xmm1
	addsd	-24(%rbp), %xmm1
	cvtsd2ss	%xmm1, %xmm1
	cvtsi2sdl	-4(%rbp), %xmm2
	subsd	-24(%rbp), %xmm2
	cvtsd2ss	%xmm2, %xmm2
	cvtsi2sdl	-8(%rbp), %xmm3
	subsd	-24(%rbp), %xmm3
	cvtsd2ss	%xmm3, %xmm3
	callq	ppm_drawline
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB4_5 Depth=2
	movl	-4(%rbp), %eax
	addl	$10, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB4_5
.LBB4_8:                                # %for.end
                                        #   in Loop: Header=BB4_3 Depth=1
	jmp	.LBB4_9
.LBB4_9:                                # %for.inc.58
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	-8(%rbp), %eax
	addl	$10, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB4_3
.LBB4_10:                               # %for.end.60
	movq	smpreviewprev, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$150, %edx
	movl	$450, %r8d              # imm = 0x1C2
	movq	updatesmpreviewprev.nsbuffer+8, %rsi
	movq	%rax, %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -44(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-44(%rbp), %r9d         # 4-byte Reload
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	movl	%r9d, %ecx
	movl	%r8d, -52(%rbp)         # 4-byte Spill
	movl	%r9d, %r8d
	movl	-48(%rbp), %r9d         # 4-byte Reload
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$450, 8(%rsp)           # imm = 0x1C2
	callq	gimp_preview_area_draw
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	updatesmpreviewprev, .Lfunc_end4-updatesmpreviewprev
	.cfi_endproc

	.align	16, 0x90
	.type	smresponse,@function
smresponse:                             # @smresponse
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-12(%rbp), %esi
	movl	%esi, %eax
	subl	$-5, %eax
	movl	%esi, -32(%rbp)         # 4-byte Spill
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB5_1
	jmp	.LBB5_9
.LBB5_9:                                # %entry
	movl	-32(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jne	.LBB5_6
	jmp	.LBB5_1
.LBB5_1:                                # %sw.bb
	movl	$0, -28(%rbp)
.LBB5_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	numsmvect, %eax
	jge	.LBB5_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB5_2 Depth=1
	movabsq	$smvector, %rax
	movabsq	$pcvals, %rcx
	addq	$3448, %rcx             # imm = 0xD78
	movslq	-28(%rbp), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movslq	-28(%rbp), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	%rdx, (%rcx)
	movq	8(%rax), %rdx
	movq	%rdx, 8(%rcx)
	movq	16(%rax), %rdx
	movq	%rdx, 16(%rcx)
	movq	24(%rax), %rax
	movq	%rax, 24(%rcx)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB5_2 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB5_2
.LBB5_5:                                # %for.end
	movl	numsmvect, %eax
	movl	%eax, pcvals+5048
	movq	smstrexpadjust, %rdi
	callq	gtk_adjustment_get_value
	movsd	%xmm0, pcvals+5056
	movq	size_voronoi, %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movl	%eax, pcvals+5064
.LBB5_6:                                # %sw.epilog
	cmpl	$1, -12(%rbp)
	je	.LBB5_8
# BB#7:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gtk_widget_hide
.LBB5_8:                                # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	smresponse, .Lfunc_end5-smresponse
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
.LCPI6_1:
	.quad	4639481672377565184     # double 150
	.text
	.align	16, 0x90
	.type	smmapclick,@function
smmapclick:                             # @smmapclick
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
	cmpl	$1, 52(%rsi)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movabsq	$smvector, %rax
	movsd	.LCPI6_1, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rcx
	movsd	24(%rcx), %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movslq	selectedsmvector, %rcx
	shlq	$5, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movsd	%xmm1, (%rdx)
	movq	-16(%rbp), %rcx
	movsd	32(%rcx), %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movslq	selectedsmvector, %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movsd	%xmm1, 8(%rax)
	jmp	.LBB6_7
.LBB6_2:                                # %if.else
	movq	-16(%rbp), %rax
	cmpl	$2, 52(%rax)
	jne	.LBB6_6
# BB#3:                                 # %if.then.8
	movl	numsmvect, %eax
	addl	$1, %eax
	cmpl	$50, %eax
	jne	.LBB6_5
# BB#4:                                 # %if.then.10
	jmp	.LBB6_8
.LBB6_5:                                # %if.end
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movabsq	$smvector, %rax
	xorps	%xmm1, %xmm1
	movsd	.LCPI6_1, %xmm2         # xmm2 = mem[0],zero
	movq	-16(%rbp), %rcx
	movsd	24(%rcx), %xmm3         # xmm3 = mem[0],zero
	divsd	%xmm2, %xmm3
	movslq	numsmvect, %rcx
	shlq	$5, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movsd	%xmm3, (%rdx)
	movq	-16(%rbp), %rcx
	movsd	32(%rcx), %xmm3         # xmm3 = mem[0],zero
	divsd	%xmm2, %xmm3
	movslq	numsmvect, %rcx
	shlq	$5, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movsd	%xmm3, 8(%rdx)
	movslq	numsmvect, %rcx
	shlq	$5, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movsd	%xmm1, 16(%rdx)
	movslq	numsmvect, %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movsd	%xmm0, 24(%rax)
	movl	numsmvect, %esi
	movl	%esi, selectedsmvector
	movl	numsmvect, %esi
	addl	$1, %esi
	movl	%esi, numsmvect
	callq	updatesmsliders
.LBB6_6:                                # %if.end.25
	jmp	.LBB6_7
.LBB6_7:                                # %if.end.26
	callq	updatesmvectorprev
	callq	updatesmpreviewprev
.LBB6_8:                                # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	smmapclick, .Lfunc_end6-smmapclick
	.cfi_endproc

	.align	16, 0x90
	.type	smprevclick,@function
smprevclick:                            # @smprevclick
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	selectedsmvector, %eax
	addl	$-1, %eax
	movl	%eax, selectedsmvector
	cmpl	$0, selectedsmvector
	jge	.LBB7_2
# BB#1:                                 # %if.then
	movl	numsmvect, %eax
	subl	$1, %eax
	movl	%eax, selectedsmvector
.LBB7_2:                                # %if.end
	callq	updatesmsliders
	callq	updatesmvectorprev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	smprevclick, .Lfunc_end7-smprevclick
	.cfi_endproc

	.align	16, 0x90
	.type	smnextclick,@function
smnextclick:                            # @smnextclick
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
	movl	selectedsmvector, %eax
	addl	$1, %eax
	movl	%eax, selectedsmvector
	movl	selectedsmvector, %eax
	cmpl	numsmvect, %eax
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movl	$0, selectedsmvector
.LBB8_2:                                # %if.end
	callq	updatesmsliders
	callq	updatesmvectorprev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	smnextclick, .Lfunc_end8-smnextclick
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4607182418800017408     # double 1
.LCPI9_1:
	.quad	4632233691727265792     # double 50
.LCPI9_2:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	smaddclick,@function
smaddclick:                             # @smaddclick
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
	subq	$16, %rsp
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movabsq	$smvector, %rax
	movsd	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI9_2, %xmm2         # xmm2 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movslq	numsmvect, %rsi
	shlq	$5, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movsd	%xmm2, (%rdi)
	movslq	numsmvect, %rsi
	shlq	$5, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movsd	%xmm2, 8(%rdi)
	movslq	numsmvect, %rsi
	shlq	$5, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movsd	%xmm1, 16(%rdi)
	movslq	numsmvect, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rax
	movsd	%xmm0, 24(%rax)
	movl	numsmvect, %ecx
	movl	%ecx, selectedsmvector
	movl	numsmvect, %ecx
	addl	$1, %ecx
	movl	%ecx, numsmvect
	callq	updatesmsliders
	callq	updatesmvectorprev
	callq	updatesmpreviewprev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	smaddclick, .Lfunc_end9-smaddclick
	.cfi_endproc

	.align	16, 0x90
	.type	smdeleteclick,@function
smdeleteclick:                          # @smdeleteclick
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
	movl	selectedsmvector, %eax
	movl	%eax, -20(%rbp)
.LBB10_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	numsmvect, %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB10_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movabsq	$smvector, %rax
	movslq	-20(%rbp), %rcx
	shlq	$5, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movl	-20(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movq	%rcx, (%rdx)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rdx)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rdx)
	movq	24(%rax), %rax
	movq	%rax, 24(%rdx)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB10_1
.LBB10_4:                               # %for.end
	movl	numsmvect, %eax
	addl	$-1, %eax
	movl	%eax, numsmvect
	movl	selectedsmvector, %eax
	cmpl	numsmvect, %eax
	jl	.LBB10_6
# BB#5:                                 # %if.then
	movl	$0, selectedsmvector
.LBB10_6:                               # %if.end
	callq	updatesmsliders
	callq	updatesmvectorprev
	callq	updatesmpreviewprev
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	smdeleteclick, .Lfunc_end10-smdeleteclick
	.cfi_endproc

	.align	16, 0x90
	.type	angsmadjmove,@function
angsmadjmove:                           # @angsmadjmove
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$0, smadjignore
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movq	sizadjust, %rdi
	callq	gtk_adjustment_get_value
	movabsq	$smvector, %rdi
	movslq	selectedsmvector, %rax
	shlq	$5, %rax
	addq	%rax, %rdi
	movsd	%xmm0, 16(%rdi)
	callq	updatesmvectorprev
	callq	updatesmpreviewprev
.LBB11_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	angsmadjmove, .Lfunc_end11-angsmadjmove
	.cfi_endproc

	.align	16, 0x90
	.type	strsmadjmove,@function
strsmadjmove:                           # @strsmadjmove
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$0, smadjignore
	jne	.LBB12_2
# BB#1:                                 # %if.then
	movq	smstradjust, %rdi
	callq	gtk_adjustment_get_value
	movabsq	$smvector, %rdi
	movslq	selectedsmvector, %rax
	shlq	$5, %rax
	addq	%rax, %rdi
	movsd	%xmm0, 24(%rdi)
	callq	updatesmvectorprev
	callq	updatesmpreviewprev
.LBB12_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	strsmadjmove, .Lfunc_end12-strsmadjmove
	.cfi_endproc

	.align	16, 0x90
	.type	smstrexpsmadjmove,@function
smstrexpsmadjmove:                      # @smstrexpsmadjmove
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
	cmpl	$0, smadjignore
	jne	.LBB13_2
# BB#1:                                 # %if.then
	callq	updatesmvectorprev
	callq	updatesmpreviewprev
.LBB13_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	smstrexpsmadjmove, .Lfunc_end13-smstrexpsmadjmove
	.cfi_endproc

	.align	16, 0x90
	.type	getsiz_from_gui,@function
getsiz_from_gui:                        # @getsiz_from_gui
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
	subq	$64, %rsp
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	numsmvect, %edi
	movq	smstrexpadjust, %rax
	movl	%edi, -20(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movsd	%xmm1, -40(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_value
	movq	size_voronoi, %rax
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movabsq	$smvector, %rsi
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	-20(%rbp), %edi         # 4-byte Reload
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movl	%eax, %edx
	callq	getsiz_proto
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	getsiz_from_gui, .Lfunc_end14-getsiz_from_gui
	.cfi_endproc

	.align	16, 0x90
	.type	updatesmsliders,@function
updatesmsliders:                        # @updatesmsliders
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
	movabsq	$smvector, %rax
	movl	$1, smadjignore
	movq	sizadjust, %rdi
	movslq	selectedsmvector, %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_value
	movabsq	$smvector, %rax
	movq	smstradjust, %rdi
	movslq	selectedsmvector, %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_value
	movl	$0, smadjignore
	popq	%rbp
	retq
.Lfunc_end15:
	.size	updatesmsliders, .Lfunc_end15-updatesmsliders
	.cfi_endproc

	.type	update_vector_preview_backup,@object # @update_vector_preview_backup
	.local	update_vector_preview_backup
	.comm	update_vector_preview_backup,16,8
	.type	update_vector_preview_sbuffer,@object # @update_vector_preview_sbuffer
	.local	update_vector_preview_sbuffer
	.comm	update_vector_preview_sbuffer,16,8
	.type	smwindow,@object        # @smwindow
	.local	smwindow
	.comm	smwindow,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Size Map Editor"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-gimpressionist"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"plug-in-gimpressionist"
	.size	.L.str.2, 23

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gtk-apply"
	.size	.L.str.3, 10

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
	.asciz	"response"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"destroy"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Smvectors"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"The smvector-field. Left-click to move selected smvector, Right-click to point it towards mouse, Middle-click to add a new smvector."
	.size	.L.str.9, 133

	.type	smvectorprev,@object    # @smvectorprev
	.local	smvectorprev
	.comm	smvectorprev,8,8
	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"button-press-event"
	.size	.L.str.10, 19

	.type	smvectprevbrightadjust,@object # @smvectprevbrightadjust
	.local	smvectprevbrightadjust
	.comm	smvectprevbrightadjust,8,8
	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"value-changed"
	.size	.L.str.11, 14

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Adjust the preview's brightness"
	.size	.L.str.12, 32

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Preview"
	.size	.L.str.13, 8

	.type	smpreviewprev,@object   # @smpreviewprev
	.local	smpreviewprev
	.comm	smpreviewprev,8,8
	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"_<<"
	.size	.L.str.14, 4

	.type	prev_button,@object     # @prev_button
	.local	prev_button
	.comm	prev_button,8,8
	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"clicked"
	.size	.L.str.15, 8

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Select previous smvector"
	.size	.L.str.16, 25

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"_>>"
	.size	.L.str.17, 4

	.type	next_button,@object     # @next_button
	.local	next_button
	.comm	next_button,8,8
	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Select next smvector"
	.size	.L.str.18, 21

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"A_dd"
	.size	.L.str.19, 5

	.type	add_button,@object      # @add_button
	.local	add_button
	.comm	add_button,8,8
	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Add new smvector"
	.size	.L.str.20, 17

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"_Kill"
	.size	.L.str.21, 6

	.type	kill_button,@object     # @kill_button
	.local	kill_button
	.comm	kill_button,8,8
	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Delete selected smvector"
	.size	.L.str.22, 25

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"_Size:"
	.size	.L.str.23, 7

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Change the angle of the selected smvector"
	.size	.L.str.24, 42

	.type	sizadjust,@object       # @sizadjust
	.local	sizadjust
	.comm	sizadjust,8,8
	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"S_trength:"
	.size	.L.str.25, 11

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Change the strength of the selected smvector"
	.size	.L.str.26, 45

	.type	smstradjust,@object     # @smstradjust
	.local	smstradjust
	.comm	smstradjust,8,8
	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"St_rength exp.:"
	.size	.L.str.27, 16

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Change the exponent of the strength"
	.size	.L.str.28, 36

	.type	smstrexpadjust,@object  # @smstrexpadjust
	.local	smstrexpadjust
	.comm	smstrexpadjust,8,8
	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"_Voronoi"
	.size	.L.str.29, 9

	.type	size_voronoi,@object    # @size_voronoi
	.local	size_voronoi
	.comm	size_voronoi,8,8
	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Voronoi-mode makes only the smvector closest to the given point have any influence"
	.size	.L.str.30, 83

	.type	numsmvect,@object       # @numsmvect
	.local	numsmvect
	.comm	numsmvect,4,4
	.type	smvector,@object        # @smvector
	.local	smvector
	.comm	smvector,1600,16
	.type	selectedsmvector,@object # @selectedsmvector
	.local	selectedsmvector
	.comm	selectedsmvector,4,4
	.type	updatesmvectorprev.ok,@object # @updatesmvectorprev.ok
	.local	updatesmvectorprev.ok
	.comm	updatesmvectorprev.ok,4,4
	.type	updatesmvectorprev.last_val,@object # @updatesmvectorprev.last_val
	.local	updatesmvectorprev.last_val
	.comm	updatesmvectorprev.last_val,8,8
	.type	.Lupdatesmvectorprev.gray,@object # @updatesmvectorprev.gray
	.section	.rodata,"a",@progbits
.Lupdatesmvectorprev.gray:
	.zero	3,120
	.size	.Lupdatesmvectorprev.gray, 3

	.type	.Lupdatesmvectorprev.red,@object # @updatesmvectorprev.red
.Lupdatesmvectorprev.red:
	.asciz	"\377\000"
	.size	.Lupdatesmvectorprev.red, 3

	.type	.Lupdatesmvectorprev.white,@object # @updatesmvectorprev.white
.Lupdatesmvectorprev.white:
	.zero	3,255
	.size	.Lupdatesmvectorprev.white, 3

	.type	updatesmpreviewprev.nsbuffer,@object # @updatesmpreviewprev.nsbuffer
	.local	updatesmpreviewprev.nsbuffer
	.comm	updatesmpreviewprev.nsbuffer,16,8
	.type	.Lupdatesmpreviewprev.gray,@object # @updatesmpreviewprev.gray
.Lupdatesmpreviewprev.gray:
	.zero	3,120
	.size	.Lupdatesmpreviewprev.gray, 3

	.type	smadjignore,@object     # @smadjignore
	.local	smadjignore
	.comm	smadjignore,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
