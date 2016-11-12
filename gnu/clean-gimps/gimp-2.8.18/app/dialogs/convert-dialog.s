	.text
	.file	"convert-dialog.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4611686018427387904     # double 2
.LCPI0_1:
	.quad	4643211215818981376     # double 256
.LCPI0_2:
	.quad	4607182418800017408     # double 1
.LCPI0_3:
	.quad	4620693217682128896     # double 8
	.text
	.globl	convert_dialog_new
	.align	16, 0x90
	.type	convert_dialog_new,@function
convert_dialog_new:                     # @convert_dialog_new
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
	subq	$736, %rsp              # imm = 0x2E0
.Ltmp3:
	.cfi_offset %rbx, -48
.Ltmp4:
	.cfi_offset %r12, -40
.Ltmp5:
	.cfi_offset %r14, -32
.Ltmp6:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -72(%rbp)
# BB#1:                                 # %do.body
	movq	-48(%rbp), %rax
	movq	%rax, -176(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -184(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -188(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-176(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-184(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -188(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -188(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-188(%rbp), %eax
	movl	%eax, -192(%rbp)
	cmpl	$0, -192(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.convert_dialog_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB0_55
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-56(%rbp), %rax
	movq	%rax, -200(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -208(%rbp)
	cmpq	$0, -200(%rbp)
	jne	.LBB0_15
# BB#14:                                # %if.then.20
	movl	$0, -212(%rbp)
	jmp	.LBB0_20
.LBB0_15:                               # %if.else.21
	movq	-200(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_18
# BB#16:                                # %land.lhs.true.24
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-208(%rbp), %rax
	jne	.LBB0_18
# BB#17:                                # %if.then.28
	movl	$1, -212(%rbp)
	jmp	.LBB0_19
.LBB0_18:                               # %if.else.29
	movq	-200(%rbp), %rdi
	movq	-208(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -212(%rbp)
.LBB0_19:                               # %if.end.31
	jmp	.LBB0_20
.LBB0_20:                               # %if.end.32
	movl	-212(%rbp), %eax
	movl	%eax, -216(%rbp)
	cmpl	$0, -216(%rbp)
	je	.LBB0_22
# BB#21:                                # %if.then.35
	jmp	.LBB0_23
.LBB0_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.convert_dialog_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB0_55
.LBB0_23:                               # %if.end.37
	jmp	.LBB0_24
.LBB0_24:                               # %do.end.38
	jmp	.LBB0_25
.LBB0_25:                               # %do.body.39
	movq	-64(%rbp), %rax
	movq	%rax, -224(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -232(%rbp)
	cmpq	$0, -224(%rbp)
	jne	.LBB0_27
# BB#26:                                # %if.then.48
	movl	$0, -236(%rbp)
	jmp	.LBB0_32
.LBB0_27:                               # %if.else.49
	movq	-224(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_30
# BB#28:                                # %land.lhs.true.52
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-232(%rbp), %rax
	jne	.LBB0_30
# BB#29:                                # %if.then.56
	movl	$1, -236(%rbp)
	jmp	.LBB0_31
.LBB0_30:                               # %if.else.57
	movq	-224(%rbp), %rdi
	movq	-232(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -236(%rbp)
.LBB0_31:                               # %if.end.59
	jmp	.LBB0_32
.LBB0_32:                               # %if.end.60
	movl	-236(%rbp), %eax
	movl	%eax, -240(%rbp)
	cmpl	$0, -240(%rbp)
	je	.LBB0_34
# BB#33:                                # %if.then.63
	jmp	.LBB0_35
.LBB0_34:                               # %if.else.64
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.convert_dialog_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB0_55
.LBB0_35:                               # %if.end.65
	jmp	.LBB0_36
.LBB0_36:                               # %do.end.66
	jmp	.LBB0_37
.LBB0_37:                               # %do.body.67
	cmpq	$0, -72(%rbp)
	je	.LBB0_46
# BB#38:                                # %lor.lhs.false
	movq	-72(%rbp), %rax
	movq	%rax, -248(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -256(%rbp)
	cmpq	$0, -248(%rbp)
	jne	.LBB0_40
# BB#39:                                # %if.then.77
	movl	$0, -260(%rbp)
	jmp	.LBB0_45
.LBB0_40:                               # %if.else.78
	movq	-248(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_43
# BB#41:                                # %land.lhs.true.81
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-256(%rbp), %rax
	jne	.LBB0_43
# BB#42:                                # %if.then.85
	movl	$1, -260(%rbp)
	jmp	.LBB0_44
.LBB0_43:                               # %if.else.86
	movq	-248(%rbp), %rdi
	movq	-256(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -260(%rbp)
.LBB0_44:                               # %if.end.88
	jmp	.LBB0_45
.LBB0_45:                               # %if.end.89
	movl	-260(%rbp), %eax
	movl	%eax, -264(%rbp)
	cmpl	$0, -264(%rbp)
	je	.LBB0_47
.LBB0_46:                               # %if.then.92
	jmp	.LBB0_48
.LBB0_47:                               # %if.else.93
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.convert_dialog_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB0_55
.LBB0_48:                               # %if.end.94
	jmp	.LBB0_49
.LBB0_49:                               # %do.end.95
	movl	$72, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	-80(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movl	saved_dither_type, %ecx
	movq	-80(%rbp), %rax
	movl	%ecx, 48(%rax)
	movl	saved_alpha_dither, %ecx
	movq	-80(%rbp), %rax
	movl	%ecx, 52(%rax)
	movl	saved_remove_dups, %ecx
	movq	-80(%rbp), %rax
	movl	%ecx, 56(%rax)
	movl	saved_num_colors, %ecx
	movq	-80(%rbp), %rax
	movl	%ecx, 60(%rax)
	movl	saved_palette_type, %ecx
	movq	-80(%rbp), %rax
	movl	%ecx, 64(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rdi
	movq	-56(%rbp), %rsi
	movq	%rsi, -280(%rbp)        # 8-byte Spill
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.8, %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.6, %rsi
	movabsq	$.L.str.7, %r8
	movabsq	$gimp_standard_help_func, %rdi
	movabsq	$.L.str.9, %rdx
	movl	$4294967290, %ecx       # imm = 0xFFFFFFFA
	xorl	%r9d, %r9d
	movl	%r9d, %r10d
	movq	-64(%rbp), %r11
	movq	-288(%rbp), %rbx        # 8-byte Reload
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	-280(%rbp), %r14        # 8-byte Reload
	movq	%rsi, -312(%rbp)        # 8-byte Spill
	movq	%r14, %rsi
	movq	-296(%rbp), %r15        # 8-byte Reload
	movq	%rdx, -320(%rbp)        # 8-byte Spill
	movq	%r15, %rdx
	movq	-312(%rbp), %r12        # 8-byte Reload
	movl	%ecx, -324(%rbp)        # 4-byte Spill
	movq	%r12, %rcx
	movq	%rax, %r9
	movq	%r11, (%rsp)
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r12, 16(%rsp)
	movq	-320(%rbp), %r11        # 8-byte Reload
	movq	%r11, 24(%rsp)
	movl	$-6, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	movq	%r10, -336(%rbp)        # 8-byte Spill
	callq	gimp_viewable_dialog_new
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rdi
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$4294967291, %edx       # imm = 0xFFFFFFFB
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_dialog_add_button
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rdi
	movl	$4, %esi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_image_new_from_stock
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_button_set_image
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-80(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_resizable
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$convert_dialog_free, %rsi
	movq	-80(%rbp), %rdi
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-392(%rbp), %rdx        # 8-byte Reload
	callq	g_object_weak_ref
	movabsq	$.L.str.11, %rsi
	movabsq	$convert_dialog_response, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-80(%rbp), %rdi
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-400(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-80(%rbp), %rdi
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	convert_dialog_palette_box
	movl	$1, %edi
	movl	$12, %esi
	movq	%rax, -160(%rbp)
	callq	gtk_box_new
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_convert_palette_type_get_type
	movabsq	$.L.str.12, %rdi
	movl	$3, %ecx
	movl	$4, %edx
	cmpq	$0, -160(%rbp)
	cmovnel	%edx, %ecx
	movq	%rax, -440(%rbp)        # 8-byte Spill
	movl	%ecx, -444(%rbp)        # 4-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	xorl	%esi, %esi
	movabsq	$gimp_radio_button_update, %rdi
	leaq	-88(%rbp), %r10
	movq	-80(%rbp), %r11
	addq	$64, %r11
	movq	-440(%rbp), %rbx        # 8-byte Reload
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movl	-444(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	movq	-456(%rbp), %r8         # 8-byte Reload
	movq	%r11, %r9
	movq	%r10, (%rsp)
	callq	gimp_enum_radio_frame_new_with_range
	movq	%rax, -144(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rcx
	movl	64(%rcx), %esi
	movq	%rax, %rdi
	callq	gimp_int_radio_group_set_active
	movq	-96(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-144(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -476(%rbp)        # 4-byte Spill
	movl	-476(%rbp), %ecx        # 4-byte Reload
	movl	-476(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-144(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -112(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_enum_radio_frame_add
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.13, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -120(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -500(%rbp)        # 4-byte Spill
	movl	-500(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	movq	-80(%rbp), %rax
	cmpl	$256, 60(%rax)          # imm = 0x100
	jne	.LBB0_52
# BB#50:                                # %land.lhs.true.153
	movq	-48(%rbp), %rdi
	callq	gimp_image_has_alpha
	cmpl	$0, %eax
	je	.LBB0_52
# BB#51:                                # %if.then.156
	movq	-80(%rbp), %rax
	movl	$255, 60(%rax)
.LBB0_52:                               # %if.end.158
	leaq	-128(%rbp), %rdi
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI0_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI0_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_3, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	xorl	%esi, %esi
	movq	-80(%rbp), %rax
	cvtsi2sdl	60(%rax), %xmm3
	movsd	%xmm0, -512(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-512(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-512(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -136(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movq	-112(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -532(%rbp)        # 4-byte Spill
	movl	-532(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-136(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.14, %rsi
	movabsq	$gimp_int_adjustment_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-128(%rbp), %rdi
	movq	-80(%rbp), %r10
	addq	$60, %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	cmpq	$0, -160(%rbp)
	movq	%rax, -544(%rbp)        # 8-byte Spill
	je	.LBB0_54
# BB#53:                                # %if.then.168
	movq	-144(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %edx
	movl	$1, %ecx
	movq	-160(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_enum_radio_frame_add
	movq	-160(%rbp), %rdi
	callq	gtk_widget_show
.LBB0_54:                               # %if.end.171
	movq	-144(%rbp), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movabsq	$.L.str.15, %rdi
	movq	%rax, -104(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movl	56(%rsi), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-104(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$3, %r8d
	movq	-152(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-152(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.16, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-152(%rbp), %rdi
	movq	-80(%rbp), %r10
	addq	$56, %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.17, %rsi
	movabsq	$.L.str.18, %rcx
	movl	$6, %r8d
	movq	-88(%rbp), %rdx
	movq	-152(%rbp), %rdi
	movq	%rdi, -584(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-584(%rbp), %rdx        # 8-byte Reload
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	g_object_bind_property
	movabsq	$.L.str.19, %rdi
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -144(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-144(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-144(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -104(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -628(%rbp)        # 4-byte Spill
	movl	-628(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.20, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -120(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -644(%rbp)        # 4-byte Spill
	movl	-644(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_convert_dither_type_get_type
	movq	%rax, %rdi
	callq	gimp_enum_combo_box_new
	movq	%rax, -168(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-168(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movq	-112(%rbp), %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-168(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-168(%rbp), %rdi
	callq	gtk_widget_show
	movq	-168(%rbp), %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_int_combo_box_get_active, %rsi
	movq	-80(%rbp), %rdi
	movl	48(%rdi), %ecx
	movq	-80(%rbp), %rdi
	addq	$48, %rdi
	movq	%rdi, -680(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -688(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movq	-688(%rbp), %rdx        # 8-byte Reload
	movq	-680(%rbp), %rcx        # 8-byte Reload
	callq	gimp_int_combo_box_connect
	movabsq	$.L.str.21, %rdi
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-704(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rcx
	movl	52(%rcx), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-104(%rbp), %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-152(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-152(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.16, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-152(%rbp), %rdi
	movq	-80(%rbp), %r10
	addq	$52, %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-80(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movq	%rax, -720(%rbp)        # 8-byte Spill
.LBB0_55:                               # %return
	movq	-40(%rbp), %rax
	addq	$736, %rsp              # imm = 0x2E0
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	convert_dialog_new, .Lfunc_end0-convert_dialog_new
	.cfi_endproc

	.align	16, 0x90
	.type	convert_dialog_free,@function
convert_dialog_free:                    # @convert_dialog_free
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movl	$72, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#2:                                 # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	convert_dialog_free, .Lfunc_end1-convert_dialog_free
	.cfi_endproc

	.align	16, 0x90
	.type	convert_dialog_response,@function
convert_dialog_response:                # @convert_dialog_response
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
	pushq	%rbx
	subq	$104, %rsp
.Ltmp13:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	cmpl	$-5, -20(%rbp)
	jne	.LBB2_8
# BB#1:                                 # %if.then
	movabsq	$.L.str.22, %rdi
	movq	$0, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movl	$2, %esi
	leaq	-48(%rbp), %rdi
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	movl	60(%rcx), %edx
	movq	-32(%rbp), %rcx
	movl	48(%rcx), %ecx
	movq	-32(%rbp), %r8
	movl	52(%r8), %r8d
	movq	-32(%rbp), %r9
	movl	56(%r9), %r9d
	movq	-32(%rbp), %r10
	movl	64(%r10), %r11d
	movq	-32(%rbp), %r10
	movq	40(%r10), %r10
	movq	-40(%rbp), %rbx
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%r11d, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, 24(%rsp)
	callq	gimp_image_convert
	cmpl	$0, %eax
	jne	.LBB2_5
# BB#2:                                 # %if.then.4
	movl	$80, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	32(%rcx), %rdi
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
	leaq	-48(%rbp), %rdi
	callq	g_clear_error
	cmpq	$0, -40(%rbp)
	je	.LBB2_4
# BB#3:                                 # %if.then.9
	movq	-40(%rbp), %rdi
	callq	gimp_progress_end
.LBB2_4:                                # %if.end
	jmp	.LBB2_9
.LBB2_5:                                # %if.end.10
	cmpq	$0, -40(%rbp)
	je	.LBB2_7
# BB#6:                                 # %if.then.12
	movq	-40(%rbp), %rdi
	callq	gimp_progress_end
.LBB2_7:                                # %if.end.13
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_image_flush
	movq	-32(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, saved_dither_type
	movq	-32(%rbp), %rax
	movl	52(%rax), %ecx
	movl	%ecx, saved_alpha_dither
	movq	-32(%rbp), %rax
	movl	56(%rax), %ecx
	movl	%ecx, saved_remove_dups
	movq	-32(%rbp), %rax
	movl	60(%rax), %ecx
	movl	%ecx, saved_num_colors
	movq	-32(%rbp), %rax
	movl	64(%rax), %ecx
	movl	%ecx, saved_palette_type
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, saved_palette
.LBB2_8:                                # %if.end.21
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_destroy
.LBB2_9:                                # %return
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	convert_dialog_response, .Lfunc_end2-convert_dialog_response
	.cfi_endproc

	.align	16, 0x90
	.type	convert_dialog_palette_box,@function
convert_dialog_palette_box:             # @convert_dialog_palette_box
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	movq	-24(%rbp), %rdi
	movq	496(%rdi), %rdi
	callq	gimp_data_factory_get_container
	movabsq	$convert_dialog_palette_filter, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	gimp_container_filter
	movq	-16(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_container_is_empty
	cmpl	$0, %eax
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
	movq	$0, -8(%rbp)
	jmp	.LBB3_20
.LBB3_2:                                # %if.end
	movabsq	$.L.str.23, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	callq	gimp_context_new
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$g_object_unref, %rdx
	movq	-16(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rax, %rdi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	g_object_weak_ref
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$g_object_unref, %rdx
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rax, %rdi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	g_object_weak_ref
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_list_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	40(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB3_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB3_14
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB3_7
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movabsq	$.L.str.24, %rsi
	movq	%rax, %rdi
	callq	g_ascii_strcasecmp
	cmpl	$0, %eax
	jne	.LBB3_7
# BB#6:                                 # %if.then.22
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB3_7:                                # %if.end.23
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	saved_palette, %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB3_9
# BB#8:                                 # %if.then.25
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	saved_palette, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movl	$1, -52(%rbp)
.LBB3_9:                                # %if.end.26
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_10
.LBB3_10:                               # %for.inc
                                        #   in Loop: Header=BB3_3 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB3_12
# BB#11:                                # %cond.true
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB3_13
.LBB3_12:                               # %cond.false
                                        #   in Loop: Header=BB3_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB3_13
.LBB3_13:                               # %cond.end
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB3_3
.LBB3_14:                               # %for.end
	cmpl	$0, -52(%rbp)
	jne	.LBB3_19
# BB#15:                                # %if.then.29
	cmpq	$0, -48(%rbp)
	je	.LBB3_17
# BB#16:                                # %if.then.31
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 40(%rcx)
	jmp	.LBB3_18
.LBB3_17:                               # %if.else
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_list_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	40(%rax), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, 40(%rsi)
.LBB3_18:                               # %if.end.39
	jmp	.LBB3_19
.LBB3_19:                               # %if.end.40
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gimp_context_set_palette
	movabsq	$.L.str.25, %rsi
	movabsq	$convert_dialog_palette_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	-16(%rbp), %rdx
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movl	$4, %ecx
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_palette_box_new
	movq	%rax, -8(%rbp)
.LBB3_20:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	convert_dialog_palette_box, .Lfunc_end3-convert_dialog_palette_box
	.cfi_endproc

	.align	16, 0x90
	.type	convert_dialog_palette_filter,@function
convert_dialog_palette_filter:          # @convert_dialog_palette_filter
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_palette_get_n_colors
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cmpl	$0, %eax
	movb	%dl, -33(%rbp)          # 1-byte Spill
	jle	.LBB4_2
# BB#1:                                 # %land.rhs
	movq	-24(%rbp), %rdi
	callq	gimp_palette_get_n_colors
	cmpl	$256, %eax              # imm = 0x100
	setle	%cl
	movb	%cl, -33(%rbp)          # 1-byte Spill
.LBB4_2:                                # %land.end
	movb	-33(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	convert_dialog_palette_filter, .Lfunc_end4-convert_dialog_palette_filter
	.cfi_endproc

	.align	16, 0x90
	.type	convert_dialog_palette_changed,@function
convert_dialog_palette_changed:         # @convert_dialog_palette_changed
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	jmp	.LBB5_5
.LBB5_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	gimp_palette_get_n_colors
	cmpl	$256, %eax              # imm = 0x100
	jle	.LBB5_4
# BB#3:                                 # %if.then.1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	32(%rcx), %rdi
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.26, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gimp_message
	jmp	.LBB5_5
.LBB5_4:                                # %if.else
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 40(%rcx)
.LBB5_5:                                # %if.end.5
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	convert_dialog_palette_changed, .Lfunc_end5-convert_dialog_palette_changed
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Dialogs"
	.size	.L.str, 13

	.type	.L__func__.convert_dialog_new,@object # @__func__.convert_dialog_new
.L__func__.convert_dialog_new:
	.asciz	"convert_dialog_new"
	.size	.L__func__.convert_dialog_new, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GTK_IS_WIDGET (parent)"
	.size	.L.str.3, 23

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"progress == NULL || GIMP_IS_PROGRESS (progress)"
	.size	.L.str.4, 48

	.type	saved_dither_type,@object # @saved_dither_type
	.local	saved_dither_type
	.comm	saved_dither_type,4,4
	.type	saved_alpha_dither,@object # @saved_alpha_dither
	.local	saved_alpha_dither
	.comm	saved_alpha_dither,4,4
	.type	saved_remove_dups,@object # @saved_remove_dups
	.data
	.align	4
saved_remove_dups:
	.long	1                       # 0x1
	.size	saved_remove_dups, 4

	.type	saved_num_colors,@object # @saved_num_colors
	.align	4
saved_num_colors:
	.long	256                     # 0x100
	.size	saved_num_colors, 4

	.type	saved_palette_type,@object # @saved_palette_type
	.local	saved_palette_type
	.comm	saved_palette_type,4,4
	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"Indexed Color Conversion"
	.size	.L.str.5, 25

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-image-convert-indexed"
	.size	.L.str.6, 27

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-convert-indexed"
	.size	.L.str.7, 21

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Convert Image to Indexed Colors"
	.size	.L.str.8, 32

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gtk-cancel"
	.size	.L.str.9, 11

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"C_onvert"
	.size	.L.str.10, 9

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"response"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Colormap"
	.size	.L.str.12, 9

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"_Maximum number of colors:"
	.size	.L.str.13, 27

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"value-changed"
	.size	.L.str.14, 14

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"_Remove unused colors from colormap"
	.size	.L.str.15, 36

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"toggled"
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"active"
	.size	.L.str.17, 7

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"sensitive"
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Dithering"
	.size	.L.str.19, 10

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Color _dithering:"
	.size	.L.str.20, 18

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Enable dithering of _transparency"
	.size	.L.str.21, 34

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Converting to indexed colors"
	.size	.L.str.22, 29

	.type	saved_palette,@object   # @saved_palette
	.local	saved_palette
	.comm	saved_palette,8,8
	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"convert-dialog"
	.size	.L.str.23, 15

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Web"
	.size	.L.str.24, 4

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"palette-changed"
	.size	.L.str.25, 16

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Cannot convert to a palette with more than 256 colors."
	.size	.L.str.26, 55


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
