	.text
	.file	"layer-options-dialog.bc"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_1:
	.quad	4607182418800017408     # double 1
.LCPI0_2:
	.quad	4688247212092686336     # double 262144
.LCPI0_3:
	.quad	4621819117588971520     # double 10
	.text
	.globl	layer_options_dialog_new
	.align	16, 0x90
	.type	layer_options_dialog_new,@function
layer_options_dialog_new:               # @layer_options_dialog_new
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
	subq	$872, %rsp              # imm = 0x368
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
	movq	48(%rbp), %rax
	movq	40(%rbp), %r10
	movq	32(%rbp), %r11
	movq	24(%rbp), %rbx
	movq	16(%rbp), %r14
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movl	%r9d, -92(%rbp)
	movq	%r14, -104(%rbp)
	movq	%rbx, -112(%rbp)
	movq	%r11, -120(%rbp)
	movq	%r10, -128(%rbp)
	movq	%rax, -136(%rbp)
# BB#1:                                 # %do.body
	movq	-56(%rbp), %rax
	movq	%rax, -216(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -224(%rbp)
	cmpq	$0, -216(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -228(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-216(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-224(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -228(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-216(%rbp), %rdi
	movq	-224(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -228(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-228(%rbp), %eax
	movl	%eax, -232(%rbp)
	cmpl	$0, -232(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.layer_options_dialog_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_58
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	cmpq	$0, -64(%rbp)
	je	.LBB0_22
# BB#14:                                # %lor.lhs.false
	movq	-64(%rbp), %rax
	movq	%rax, -240(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -248(%rbp)
	cmpq	$0, -240(%rbp)
	jne	.LBB0_16
# BB#15:                                # %if.then.21
	movl	$0, -252(%rbp)
	jmp	.LBB0_21
.LBB0_16:                               # %if.else.22
	movq	-240(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_19
# BB#17:                                # %land.lhs.true.25
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-248(%rbp), %rax
	jne	.LBB0_19
# BB#18:                                # %if.then.29
	movl	$1, -252(%rbp)
	jmp	.LBB0_20
.LBB0_19:                               # %if.else.30
	movq	-240(%rbp), %rdi
	movq	-248(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -252(%rbp)
.LBB0_20:                               # %if.end.32
	jmp	.LBB0_21
.LBB0_21:                               # %if.end.33
	movl	-252(%rbp), %eax
	movl	%eax, -256(%rbp)
	cmpl	$0, -256(%rbp)
	je	.LBB0_23
.LBB0_22:                               # %if.then.36
	jmp	.LBB0_24
.LBB0_23:                               # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.layer_options_dialog_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_58
.LBB0_24:                               # %if.end.38
	jmp	.LBB0_25
.LBB0_25:                               # %do.end.39
	jmp	.LBB0_26
.LBB0_26:                               # %do.body.40
	movq	-72(%rbp), %rax
	movq	%rax, -264(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -272(%rbp)
	cmpq	$0, -264(%rbp)
	jne	.LBB0_28
# BB#27:                                # %if.then.49
	movl	$0, -276(%rbp)
	jmp	.LBB0_33
.LBB0_28:                               # %if.else.50
	movq	-264(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_31
# BB#29:                                # %land.lhs.true.53
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-272(%rbp), %rax
	jne	.LBB0_31
# BB#30:                                # %if.then.57
	movl	$1, -276(%rbp)
	jmp	.LBB0_32
.LBB0_31:                               # %if.else.58
	movq	-264(%rbp), %rdi
	movq	-272(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -276(%rbp)
.LBB0_32:                               # %if.end.60
	jmp	.LBB0_33
.LBB0_33:                               # %if.end.61
	movl	-276(%rbp), %eax
	movl	%eax, -280(%rbp)
	cmpl	$0, -280(%rbp)
	je	.LBB0_35
# BB#34:                                # %if.then.64
	jmp	.LBB0_36
.LBB0_35:                               # %if.else.65
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.layer_options_dialog_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_58
.LBB0_36:                               # %if.end.66
	jmp	.LBB0_37
.LBB0_37:                               # %do.end.67
	jmp	.LBB0_38
.LBB0_38:                               # %do.body.68
	movq	-80(%rbp), %rax
	movq	%rax, -288(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -296(%rbp)
	cmpq	$0, -288(%rbp)
	jne	.LBB0_40
# BB#39:                                # %if.then.77
	movl	$0, -300(%rbp)
	jmp	.LBB0_45
.LBB0_40:                               # %if.else.78
	movq	-288(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_43
# BB#41:                                # %land.lhs.true.81
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-296(%rbp), %rax
	jne	.LBB0_43
# BB#42:                                # %if.then.85
	movl	$1, -300(%rbp)
	jmp	.LBB0_44
.LBB0_43:                               # %if.else.86
	movq	-288(%rbp), %rdi
	movq	-296(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -300(%rbp)
.LBB0_44:                               # %if.end.88
	jmp	.LBB0_45
.LBB0_45:                               # %if.end.89
	movl	-300(%rbp), %eax
	movl	%eax, -304(%rbp)
	cmpl	$0, -304(%rbp)
	je	.LBB0_47
# BB#46:                                # %if.then.92
	jmp	.LBB0_48
.LBB0_47:                               # %if.else.93
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.layer_options_dialog_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_58
.LBB0_48:                               # %if.end.94
	jmp	.LBB0_49
.LBB0_49:                               # %do.end.95
	movl	$72, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movq	%rax, -144(%rbp)
	movq	-56(%rbp), %rax
	movq	-144(%rbp), %rdi
	movq	%rax, 48(%rdi)
	movq	-72(%rbp), %rax
	movq	-144(%rbp), %rdi
	movq	%rax, 56(%rdi)
	movq	-64(%rbp), %rax
	movq	-144(%rbp), %rdi
	movq	%rax, 64(%rdi)
	movl	-92(%rbp), %ecx
	movq	-144(%rbp), %rax
	movl	%ecx, 32(%rax)
	cmpq	$0, -64(%rbp)
	je	.LBB0_51
# BB#50:                                # %if.then.101
	movq	-64(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -152(%rbp)
	jmp	.LBB0_52
.LBB0_51:                               # %if.else.104
	movq	-56(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -152(%rbp)
.LBB0_52:                               # %if.end.107
	movabsq	$gimp_standard_help_func, %rax
	movabsq	$.L.str.5, %rcx
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movabsq	$.L.str.6, %rsi
	movl	$4294967291, %edi       # imm = 0xFFFFFFFB
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movq	-152(%rbp), %r10
	movq	-72(%rbp), %r11
	movq	-104(%rbp), %rbx
	movq	-112(%rbp), %r14
	movq	-120(%rbp), %r8
	movq	-128(%rbp), %r15
	movq	-80(%rbp), %r12
	movq	-136(%rbp), %r13
	movl	%edi, -340(%rbp)        # 4-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -352(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movl	%edx, -356(%rbp)        # 4-byte Spill
	movq	%rbx, %rdx
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%r14, %rcx
	movq	%r9, -376(%rbp)         # 8-byte Spill
	movq	%r15, %r9
	movq	%r12, (%rsp)
	movq	%rax, 8(%rsp)
	movq	%r13, 16(%rsp)
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	movl	$-6, 32(%rsp)
	movq	-352(%rbp), %r10        # 8-byte Reload
	movq	%r10, 40(%rsp)
	movl	$-5, 48(%rsp)
	movq	$0, 56(%rsp)
	movb	$0, %al
	callq	gimp_viewable_dialog_new
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-144(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$layer_options_dialog_free, %rcx
	movq	-144(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_object_weak_ref
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
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
	movl	$2, %esi
	xorl	%edx, %edx
	movl	$3, %ecx
	movl	$1, %r8d
	cmpq	$0, -64(%rbp)
	cmovnel	%r8d, %ecx
	movl	%ecx, %edi
	callq	gtk_table_new
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$6, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	movq	-168(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$6, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	movq	-160(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-168(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -436(%rbp)        # 4-byte Spill
	movl	-436(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-168(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_entry_new
	movq	-144(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-168(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rdi
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movss	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-144(%rbp), %rsi
	movq	8(%rsi), %r8
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	-144(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, -464(%rbp)        # 8-byte Spill
	movq	%rcx, -472(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_activates_default
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	cmpq	$0, -64(%rbp)
	jne	.LBB0_54
# BB#53:                                # %if.then.144
	leaq	-312(%rbp), %rsi
	leaq	-320(%rbp), %rdx
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_resolution
	movabsq	$.L.str.8, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-168(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r9d
	movl	$6, %r8d
	movq	-176(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, -500(%rbp)        # 4-byte Spill
	movl	-500(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -504(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	$6, (%rsp)
	movl	$2, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-176(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.9, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-168(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r8d
	movl	$3, %r9d
	movl	$6, %r10d
	movq	-176(%rbp), %rsi
	movq	%rax, %rdi
	movl	$6, (%rsp)
	movl	$2, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -524(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-176(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-184(%rbp), %rdi
	movsd	.LCPI0_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_3, %xmm4         # xmm4 = mem[0],zero
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
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
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
	movabsq	$.L.str.10, %rax
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
	movq	-144(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-144(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$4, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	movq	-144(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$2, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	movq	-144(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-192(%rbp), %rsi
	movq	%rax, -592(%rbp)        # 8-byte Spill
	movq	%rsi, -600(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_size_entry_add_field
	movq	-144(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	$2, %r8d
	xorl	%r9d, %r9d
	movq	-192(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -612(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	-612(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-192(%rbp), %rdi
	callq	gtk_widget_show
	movq	-168(%rbp), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	$2, %edx
	movl	$3, %r9d
	movl	$6, %r8d
	xorl	%r10d, %r10d
	movq	-144(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rax, %rdi
	movl	%edx, -628(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-628(%rbp), %r11d       # 4-byte Reload
	movl	%ecx, -632(%rbp)        # 4-byte Spill
	movl	%r11d, %ecx
	movl	-632(%rbp), %ebx        # 4-byte Reload
	movl	%r8d, -636(%rbp)        # 4-byte Spill
	movl	%ebx, %r8d
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -640(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-144(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_show
	movq	-144(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_set_unit
	movq	-144(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movsd	-312(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gimp_size_entry_set_resolution
	movq	-144(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	xorl	%edx, %edx
	movsd	-320(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_resolution
	movq	-144(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movsd	.LCPI0_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_2, %xmm1         # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval_boundaries
	movq	-144(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movsd	.LCPI0_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_2, %xmm1         # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval_boundaries
	movq	-144(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rdi
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	gimp_image_get_width
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm1
	movq	-696(%rbp), %rdi        # 8-byte Reload
	callq	gimp_size_entry_set_size
	movq	-144(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -704(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-704(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rdi
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	gimp_image_get_height
	movl	$1, %esi
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm1
	movq	-712(%rbp), %rdi        # 8-byte Reload
	callq	gimp_size_entry_set_size
	movq	-144(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -720(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rdi
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	gimp_image_get_width
	xorl	%esi, %esi
	cvtsi2sdl	%eax, %xmm0
	movq	-728(%rbp), %rdi        # 8-byte Reload
	callq	gimp_size_entry_set_refval
	movq	-144(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -736(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-736(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rdi
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	gimp_image_get_height
	movl	$1, %esi
	cvtsi2sdl	%eax, %xmm0
	movq	-744(%rbp), %rdi        # 8-byte Reload
	callq	gimp_size_entry_set_refval
	callq	gimp_fill_type_get_type
	movabsq	$.L.str.11, %rdi
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	xorl	%esi, %esi
	movl	$3, %edx
	movabsq	$gimp_radio_button_update, %rdi
	leaq	-208(%rbp), %r14
	movq	-144(%rbp), %r15
	addq	$32, %r15
	movq	-752(%rbp), %r12        # 8-byte Reload
	movq	%rdi, -760(%rbp)        # 8-byte Spill
	movq	%r12, %rdi
	movq	%rax, %rcx
	movq	-760(%rbp), %r8         # 8-byte Reload
	movq	%r15, %r9
	movq	%r14, (%rsp)
	callq	gimp_enum_radio_frame_new_with_range
	movq	%rax, -200(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-768(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-144(%rbp), %rcx
	movl	32(%rcx), %esi
	movq	%rax, %rdi
	callq	gimp_int_radio_group_set_active
	movq	-160(%rbp), %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-776(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-200(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -780(%rbp)        # 4-byte Spill
	movl	-780(%rbp), %ecx        # 4-byte Reload
	movl	-780(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-200(%rbp), %rdi
	callq	gtk_widget_show
	jmp	.LBB0_57
.LBB0_54:                               # %if.else.225
	movq	-64(%rbp), %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-792(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_text_layer
	cmpl	$0, %eax
	je	.LBB0_56
# BB#55:                                # %if.then.230
	movabsq	$.L.str.12, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	-144(%rbp), %rdi
	movq	%rax, 24(%rdi)
	movq	-144(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-800(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, -808(%rbp)        # 8-byte Spill
	movq	%rsi, -816(%rbp)        # 8-byte Spill
	callq	gimp_text_layer_get_type
	movq	-816(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	120(%rax), %esi
	movq	-808(%rbp), %rdi        # 8-byte Reload
	callq	gtk_toggle_button_set_active
	movq	-168(%rbp), %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-824(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	$2, %edx
	movl	$6, %r8d
	xorl	%r9d, %r9d
	movq	-144(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rax, %rdi
	movl	%edx, -828(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-828(%rbp), %r10d       # 4-byte Reload
	movl	%ecx, -832(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	-832(%rbp), %r11d       # 4-byte Reload
	movl	%r8d, -836(%rbp)        # 4-byte Spill
	movl	%r11d, %r8d
	movl	%r9d, -840(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-144(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.13, %rsi
	movabsq	$layer_options_dialog_toggle_rename, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-144(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	-144(%rbp), %rbx
	movq	%rax, %rdx
	movq	%rbx, %rcx
	callq	g_signal_connect_data
	movq	%rax, -848(%rbp)        # 8-byte Spill
.LBB0_56:                               # %if.end.244
	jmp	.LBB0_57
.LBB0_57:                               # %if.end.245
	movq	-144(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB0_58:                               # %return
	movq	-48(%rbp), %rax
	addq	$872, %rsp              # imm = 0x368
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	layer_options_dialog_new, .Lfunc_end0-layer_options_dialog_new
	.cfi_endproc

	.align	16, 0x90
	.type	layer_options_dialog_free,@function
layer_options_dialog_free:              # @layer_options_dialog_free
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
	.size	layer_options_dialog_free, .Lfunc_end1-layer_options_dialog_free
	.cfi_endproc

	.align	16, 0x90
	.type	layer_options_dialog_toggle_rename,@function
layer_options_dialog_toggle_rename:     # @layer_options_dialog_toggle_rename
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	je	.LBB2_6
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_text_layer
	cmpl	$0, %eax
	je	.LBB2_6
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_text_layer_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_text_layer_get_text
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB2_5
# BB#3:                                 # %land.lhs.true.12
	movq	-32(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB2_5
# BB#4:                                 # %if.then.15
	movl	$30, %esi
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_utf8_strtrim
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	movq	-40(%rbp), %rdi
	callq	g_free
.LBB2_5:                                # %if.end
	jmp	.LBB2_6
.LBB2_6:                                # %if.end.20
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	layer_options_dialog_toggle_rename, .Lfunc_end2-layer_options_dialog_toggle_rename
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Dialogs"
	.size	.L.str, 13

	.type	.L__func__.layer_options_dialog_new,@object # @__func__.layer_options_dialog_new
.L__func__.layer_options_dialog_new:
	.asciz	"layer_options_dialog_new"
	.size	.L__func__.layer_options_dialog_new, 25

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"layer == NULL || GIMP_IS_LAYER (layer)"
	.size	.L.str.2, 39

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.3, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GTK_IS_WIDGET (parent)"
	.size	.L.str.4, 23

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gtk-cancel"
	.size	.L.str.5, 11

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gtk-ok"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Layer _name:"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Width:"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Height:"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%a"
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Layer Fill Type"
	.size	.L.str.11, 16

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Set name from _text"
	.size	.L.str.12, 20

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"toggled"
	.size	.L.str.13, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
