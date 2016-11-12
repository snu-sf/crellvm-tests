	.text
	.file	"offset-dialog.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4607182418800017408     # double 1
.LCPI0_1:
	.quad	4621819117588971520     # double 10
	.text
	.globl	offset_dialog_new
	.align	16, 0x90
	.type	offset_dialog_new,@function
offset_dialog_new:                      # @offset_dialog_new
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
	subq	$952, %rsp              # imm = 0x3B8
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
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	$0, -176(%rbp)
# BB#1:                                 # %do.body
	movq	-56(%rbp), %rax
	movq	%rax, -184(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -192(%rbp)
	cmpq	$0, -184(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -196(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-184(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-192(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -196(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-184(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -196(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-196(%rbp), %eax
	movl	%eax, -200(%rbp)
	cmpl	$0, -200(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.offset_dialog_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_69
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-64(%rbp), %rax
	movq	%rax, -208(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -216(%rbp)
	cmpq	$0, -208(%rbp)
	jne	.LBB0_15
# BB#14:                                # %if.then.20
	movl	$0, -220(%rbp)
	jmp	.LBB0_20
.LBB0_15:                               # %if.else.21
	movq	-208(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_18
# BB#16:                                # %land.lhs.true.24
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-216(%rbp), %rax
	jne	.LBB0_18
# BB#17:                                # %if.then.28
	movl	$1, -220(%rbp)
	jmp	.LBB0_19
.LBB0_18:                               # %if.else.29
	movq	-208(%rbp), %rdi
	movq	-216(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -220(%rbp)
.LBB0_19:                               # %if.end.31
	jmp	.LBB0_20
.LBB0_20:                               # %if.end.32
	movl	-220(%rbp), %eax
	movl	%eax, -224(%rbp)
	cmpl	$0, -224(%rbp)
	je	.LBB0_22
# BB#21:                                # %if.then.35
	jmp	.LBB0_23
.LBB0_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.offset_dialog_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_69
.LBB0_23:                               # %if.end.37
	jmp	.LBB0_24
.LBB0_24:                               # %do.end.38
	jmp	.LBB0_25
.LBB0_25:                               # %do.body.39
	movq	-72(%rbp), %rax
	movq	%rax, -232(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -240(%rbp)
	cmpq	$0, -232(%rbp)
	jne	.LBB0_27
# BB#26:                                # %if.then.48
	movl	$0, -244(%rbp)
	jmp	.LBB0_32
.LBB0_27:                               # %if.else.49
	movq	-232(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_30
# BB#28:                                # %land.lhs.true.52
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-240(%rbp), %rax
	jne	.LBB0_30
# BB#29:                                # %if.then.56
	movl	$1, -244(%rbp)
	jmp	.LBB0_31
.LBB0_30:                               # %if.else.57
	movq	-232(%rbp), %rdi
	movq	-240(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -244(%rbp)
.LBB0_31:                               # %if.end.59
	jmp	.LBB0_32
.LBB0_32:                               # %if.end.60
	movl	-244(%rbp), %eax
	movl	%eax, -248(%rbp)
	cmpl	$0, -248(%rbp)
	je	.LBB0_34
# BB#33:                                # %if.then.63
	jmp	.LBB0_35
.LBB0_34:                               # %if.else.64
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.offset_dialog_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_69
.LBB0_35:                               # %if.end.65
	jmp	.LBB0_36
.LBB0_36:                               # %do.end.66
	movl	$40, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movq	%rax, -88(%rbp)
	movq	-64(%rbp), %rax
	movq	-88(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-56(%rbp), %rdi
	callq	gimp_drawable_has_alpha
	orl	$8, %eax
	movq	-88(%rbp), %rdi
	movl	%eax, 24(%rdi)
	movq	-56(%rbp), %rdi
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	gimp_item_get_image
	leaq	-160(%rbp), %rsi
	leaq	-168(%rbp), %rdx
	movq	-88(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-88(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_image_get_resolution
	movq	-56(%rbp), %rax
	movq	%rax, -256(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -264(%rbp)
	cmpq	$0, -256(%rbp)
	jne	.LBB0_38
# BB#37:                                # %if.then.82
	movl	$0, -268(%rbp)
	jmp	.LBB0_43
.LBB0_38:                               # %if.else.83
	movq	-256(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_41
# BB#39:                                # %land.lhs.true.86
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-264(%rbp), %rax
	jne	.LBB0_41
# BB#40:                                # %if.then.90
	movl	$1, -268(%rbp)
	jmp	.LBB0_42
.LBB0_41:                               # %if.else.91
	movq	-256(%rbp), %rdi
	movq	-264(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -268(%rbp)
.LBB0_42:                               # %if.end.93
	jmp	.LBB0_43
.LBB0_43:                               # %if.end.94
	movl	-268(%rbp), %eax
	movl	%eax, -272(%rbp)
	cmpl	$0, -272(%rbp)
	je	.LBB0_45
# BB#44:                                # %if.then.97
	movabsq	$.L.str.4, %rdi
	callq	gettext
	movq	%rax, -176(%rbp)
	jmp	.LBB0_66
.LBB0_45:                               # %if.else.99
	movq	-56(%rbp), %rax
	movq	%rax, -280(%rbp)
	callq	gimp_layer_mask_get_type
	movq	%rax, -288(%rbp)
	cmpq	$0, -280(%rbp)
	jne	.LBB0_47
# BB#46:                                # %if.then.108
	movl	$0, -292(%rbp)
	jmp	.LBB0_52
.LBB0_47:                               # %if.else.109
	movq	-280(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_50
# BB#48:                                # %land.lhs.true.112
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-288(%rbp), %rax
	jne	.LBB0_50
# BB#49:                                # %if.then.116
	movl	$1, -292(%rbp)
	jmp	.LBB0_51
.LBB0_50:                               # %if.else.117
	movq	-280(%rbp), %rdi
	movq	-288(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -292(%rbp)
.LBB0_51:                               # %if.end.119
	jmp	.LBB0_52
.LBB0_52:                               # %if.end.120
	movl	-292(%rbp), %eax
	movl	%eax, -296(%rbp)
	cmpl	$0, -296(%rbp)
	je	.LBB0_54
# BB#53:                                # %if.then.123
	movabsq	$.L.str.5, %rdi
	callq	gettext
	movq	%rax, -176(%rbp)
	jmp	.LBB0_65
.LBB0_54:                               # %if.else.125
	movq	-56(%rbp), %rax
	movq	%rax, -304(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -312(%rbp)
	cmpq	$0, -304(%rbp)
	jne	.LBB0_56
# BB#55:                                # %if.then.134
	movl	$0, -316(%rbp)
	jmp	.LBB0_61
.LBB0_56:                               # %if.else.135
	movq	-304(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_59
# BB#57:                                # %land.lhs.true.138
	movq	-304(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-312(%rbp), %rax
	jne	.LBB0_59
# BB#58:                                # %if.then.142
	movl	$1, -316(%rbp)
	jmp	.LBB0_60
.LBB0_59:                               # %if.else.143
	movq	-304(%rbp), %rdi
	movq	-312(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -316(%rbp)
.LBB0_60:                               # %if.end.145
	jmp	.LBB0_61
.LBB0_61:                               # %if.end.146
	movl	-316(%rbp), %eax
	movl	%eax, -320(%rbp)
	cmpl	$0, -320(%rbp)
	je	.LBB0_63
# BB#62:                                # %if.then.149
	movabsq	$.L.str.6, %rdi
	callq	gettext
	movq	%rax, -176(%rbp)
	jmp	.LBB0_64
.LBB0_63:                               # %if.else.151
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.offset_dialog_new, %rsi
	movb	$0, %al
	callq	g_warning
.LBB0_64:                               # %if.end.152
	jmp	.LBB0_65
.LBB0_65:                               # %if.end.153
	jmp	.LBB0_66
.LBB0_66:                               # %if.end.154
	movq	-56(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rdi
	movq	-64(%rbp), %rsi
	movq	%rsi, -344(%rbp)        # 8-byte Spill
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.13, %rdi
	movq	-176(%rbp), %r9
	movq	-72(%rbp), %rsi
	movq	%rax, -360(%rbp)        # 8-byte Spill
	movq	%rsi, -368(%rbp)        # 8-byte Spill
	movq	%r9, -376(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.9, %rcx
	movabsq	$.L.str.10, %r8
	movabsq	$gimp_standard_help_func, %rsi
	movabsq	$.L.str.11, %rdi
	movabsq	$.L.str.12, %r9
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967291, %r10d      # imm = 0xFFFFFFFB
	xorl	%r11d, %r11d
	movl	%r11d, %ebx
	movq	-352(%rbp), %r14        # 8-byte Reload
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	-344(%rbp), %r15        # 8-byte Reload
	movq	%rsi, -392(%rbp)        # 8-byte Spill
	movq	%r15, %rsi
	movq	-360(%rbp), %r12        # 8-byte Reload
	movl	%edx, -396(%rbp)        # 4-byte Spill
	movq	%r12, %rdx
	movq	-376(%rbp), %r13        # 8-byte Reload
	movq	%r9, -408(%rbp)         # 8-byte Spill
	movq	%r13, %r9
	movq	-368(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	-392(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	movq	-384(%rbp), %r11        # 8-byte Reload
	movq	%r11, 16(%rsp)
	movq	-408(%rbp), %r11        # 8-byte Reload
	movq	%r11, 24(%rsp)
	movl	$-6, 32(%rsp)
	movq	%rax, 40(%rsp)
	movl	$-5, 48(%rsp)
	movq	$0, 56(%rsp)
	movb	$0, %al
	movq	%rbx, -416(%rbp)        # 8-byte Spill
	movl	%r10d, -420(%rbp)       # 4-byte Spill
	callq	gimp_viewable_dialog_new
	movq	-88(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-88(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_resizable
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$offset_dialog_free, %rsi
	movq	-88(%rbp), %rdi
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-448(%rbp), %rdx        # 8-byte Reload
	callq	g_object_weak_ref
	movabsq	$.L.str.14, %rsi
	movabsq	$offset_response, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	-88(%rbp), %rdi
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-456(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movl	$1, %edi
	movl	$12, %esi
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.8, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -136(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -500(%rbp)        # 4-byte Spill
	movl	-500(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-136(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_box_new
	movq	%rax, -112(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -104(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -524(%rbp)        # 4-byte Spill
	movl	-524(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-152(%rbp), %rdi
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	movl	$2, %esi
	movsd	%xmm0, -536(%rbp)       # 8-byte Spill
	movsd	-536(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-536(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-536(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-536(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$10, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_width_chars
	movl	$1, %ecx
	xorl	%edx, %edx
	movabsq	$.L.str.15, %rax
	movl	$10, %esi
	movl	%ecx, %edi
	movl	%esi, -548(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	%edx, -552(%rbp)        # 4-byte Spill
	movq	%rax, %rdx
	movl	%ecx, -556(%rbp)        # 4-byte Spill
	movl	-556(%rbp), %r8d        # 4-byte Reload
	movl	-552(%rbp), %r9d        # 4-byte Reload
	movl	$10, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_size_entry_new
	movq	-88(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$4, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$4, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$2, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-128(%rbp), %rsi
	movq	%rax, -600(%rbp)        # 8-byte Spill
	movq	%rsi, -608(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_size_entry_add_field
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	$2, %r8d
	xorl	%r9d, %r9d
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -620(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	-620(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-128(%rbp), %rdi
	callq	gtk_widget_show
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.16, %rdi
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movl	%ecx, %edx
	callq	gimp_size_entry_attach_label
	movq	-88(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rax, -648(%rbp)        # 8-byte Spill
	movq	%rsi, -656(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.17, %rdi
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_size_entry_attach_label
	movq	-104(%rbp), %rsi
	movq	%rax, -672(%rbp)        # 8-byte Spill
	movq	%rsi, -680(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-88(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -684(%rbp)        # 4-byte Spill
	movl	-684(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_show
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-696(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_set_unit
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-704(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gimp_size_entry_set_resolution
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	xorl	%edx, %edx
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_resolution
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rdi
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	gimp_item_get_width
	xorl	%ecx, %ecx
	subl	%eax, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movq	-80(%rbp), %rdi
	movsd	%xmm0, -736(%rbp)       # 8-byte Spill
	callq	gimp_item_get_width
	xorl	%esi, %esi
	cvtsi2sdl	%eax, %xmm1
	movq	-728(%rbp), %rdi        # 8-byte Reload
	movsd	-736(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	gimp_size_entry_set_refval_boundaries
	movq	-88(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -744(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-744(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rdi
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	gimp_item_get_height
	xorl	%ecx, %ecx
	subl	%eax, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movq	-80(%rbp), %rdi
	movsd	%xmm0, -760(%rbp)       # 8-byte Spill
	callq	gimp_item_get_height
	movl	$1, %esi
	cvtsi2sdl	%eax, %xmm1
	movq	-752(%rbp), %rdi        # 8-byte Reload
	movsd	-760(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	gimp_size_entry_set_refval_boundaries
	movq	-88(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -768(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-768(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rdi
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	gimp_item_get_width
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm1
	movq	-776(%rbp), %rdi        # 8-byte Reload
	callq	gimp_size_entry_set_size
	movq	-88(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -784(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-784(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rdi
	movq	%rax, -792(%rbp)        # 8-byte Spill
	callq	gimp_item_get_height
	movl	$1, %esi
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm1
	movq	-792(%rbp), %rdi        # 8-byte Reload
	callq	gimp_size_entry_set_size
	movq	-88(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -800(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-800(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-808(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval
	movabsq	$.L.str.18, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_button_new_with_mnemonic
	movq	%rax, -120(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-816(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -820(%rbp)        # 4-byte Spill
	movl	-820(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.19, %rsi
	movabsq	$offset_halfheight_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rdi
	movq	-88(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.20, %rdi
	movq	%rax, -832(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.21, %rdi
	movq	-88(%rbp), %rcx
	addq	$24, %rcx
	movq	-88(%rbp), %rdx
	movl	24(%rdx), %r8d
	movq	%rax, -840(%rbp)        # 8-byte Spill
	movl	%r8d, -844(%rbp)        # 4-byte Spill
	movq	%rcx, -856(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.22, %rdi
	movq	%rax, -864(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.23, %rdi
	movq	%rax, -872(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	movabsq	$gimp_radio_button_update, %rcx
	movl	$8, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	leaq	-144(%rbp), %rsi
	movq	-840(%rbp), %r11        # 8-byte Reload
	movq	%rsi, -880(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	%rdx, -888(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-856(%rbp), %rcx        # 8-byte Reload
	movl	-844(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -892(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movq	-864(%rbp), %rbx        # 8-byte Reload
	movl	%r9d, -896(%rbp)        # 4-byte Spill
	movq	%rbx, %r9
	movl	$8, (%rsp)
	movq	$0, 8(%rsp)
	movq	-872(%rbp), %r14        # 8-byte Reload
	movq	%r14, 16(%rsp)
	movl	$0, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	%rax, 40(%rsp)
	movl	$1, 48(%rsp)
	movq	-880(%rbp), %rax        # 8-byte Reload
	movq	%rax, 56(%rsp)
	movq	$0, 64(%rsp)
	movb	$0, %al
	callq	gimp_int_radio_group_new
	movq	%rax, -136(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	jne	.LBB0_68
# BB#67:                                # %if.then.278
	xorl	%esi, %esi
	movq	-144(%rbp), %rdi
	callq	gtk_widget_set_sensitive
.LBB0_68:                               # %if.end.279
	movq	-96(%rbp), %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-904(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -908(%rbp)        # 4-byte Spill
	movl	-908(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-136(%rbp), %rdi
	callq	gtk_widget_show
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB0_69:                               # %return
	movq	-48(%rbp), %rax
	addq	$952, %rsp              # imm = 0x3B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	offset_dialog_new, .Lfunc_end0-offset_dialog_new
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	movl	$.L.str, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end1:
	.size	g_warning, .Lfunc_end1-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	offset_dialog_free,@function
offset_dialog_free:                     # @offset_dialog_free
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movl	$40, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#2:                                 # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	offset_dialog_free, .Lfunc_end2-offset_dialog_free
	.cfi_endproc

	.align	16, 0x90
	.type	offset_response,@function
offset_response:                        # @offset_response
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB3_4
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then.2
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	callq	rint
	cvttsd2si	%xmm0, %esi
	movl	%esi, -44(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	xorl	%esi, %esi
	movl	$1, %ecx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movl	%esi, -72(%rbp)         # 4-byte Spill
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movq	-24(%rbp), %rax
	movl	24(%rax), %ecx
	andl	$8, %ecx
	cmpl	$0, %ecx
	movl	-72(%rbp), %ecx         # 4-byte Reload
	movl	-68(%rbp), %edx         # 4-byte Reload
	cmovnel	%edx, %ecx
	movq	-24(%rbp), %rax
	movl	24(%rax), %r8d
	andl	$1, %r8d
	movl	-44(%rbp), %r9d
	movl	-48(%rbp), %r10d
	movl	%ecx, %edx
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	callq	gimp_drawable_offset
	movq	-32(%rbp), %rdi
	callq	gimp_image_flush
.LBB3_3:                                # %if.end
	jmp	.LBB3_4
.LBB3_4:                                # %if.end.16
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_destroy
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	offset_response, .Lfunc_end3-offset_response
	.cfi_endproc

	.align	16, 0x90
	.type	offset_halfheight_callback,@function
offset_halfheight_callback:             # @offset_halfheight_callback
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_get_width
	xorl	%esi, %esi
	movl	$2, %ecx
	cltd
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm0
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	gimp_size_entry_set_refval
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_height
	movl	$1, %esi
	movl	$2, %ecx
	cltd
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm0
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	gimp_size_entry_set_refval
.LBB4_2:                                # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	offset_halfheight_callback, .Lfunc_end4-offset_halfheight_callback
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Dialogs"
	.size	.L.str, 13

	.type	.L__func__.offset_dialog_new,@object # @__func__.offset_dialog_new
.L__func__.offset_dialog_new:
	.asciz	"offset_dialog_new"
	.size	.L__func__.offset_dialog_new, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_DRAWABLE (drawable)"
	.size	.L.str.1, 28

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
	.asciz	"Offset Layer"
	.size	.L.str.4, 13

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Offset Layer Mask"
	.size	.L.str.5, 18

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Offset Channel"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%s: unexpected drawable type"
	.size	.L.str.7, 29

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Offset"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-drawable-offset"
	.size	.L.str.9, 21

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-tool-move"
	.size	.L.str.10, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-layer-offset"
	.size	.L.str.11, 18

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gtk-cancel"
	.size	.L.str.12, 11

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"_Offset"
	.size	.L.str.13, 8

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"response"
	.size	.L.str.14, 9

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%a"
	.size	.L.str.15, 3

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"_X:"
	.size	.L.str.16, 4

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"_Y:"
	.size	.L.str.17, 4

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Offset by  x/_2, y/2"
	.size	.L.str.18, 21

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"clicked"
	.size	.L.str.19, 8

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Edge Behavior"
	.size	.L.str.20, 14

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"_Wrap around"
	.size	.L.str.21, 13

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Fill with _background color"
	.size	.L.str.22, 28

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Make _transparent"
	.size	.L.str.23, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
