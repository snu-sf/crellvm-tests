	.text
	.file	"resize-dialog.bc"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_1:
	.quad	4607182418800017408     # double 1
.LCPI0_2:
	.quad	4621819117588971520     # double 10
	.text
	.globl	resize_dialog_new
	.align	16, 0x90
	.type	resize_dialog_new,@function
resize_dialog_new:                      # @resize_dialog_new
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
	subq	$1080, %rsp             # imm = 0x438
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
	movq	40(%rbp), %rax
	movq	32(%rbp), %r10
	movl	24(%rbp), %r11d
	movq	16(%rbp), %rbx
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	%rbx, -104(%rbp)
	movl	%r11d, -108(%rbp)
	movq	%r10, -120(%rbp)
	movq	%rax, -128(%rbp)
	movq	$0, -224(%rbp)
	movq	$0, -232(%rbp)
# BB#1:                                 # %do.body
	movq	-56(%rbp), %rax
	movq	%rax, -264(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -272(%rbp)
	cmpq	$0, -264(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -276(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-264(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-272(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.4
	movl	$1, -276(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.5
	movq	-264(%rbp), %rdi
	movq	-272(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -276(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.7
	movl	-276(%rbp), %eax
	movl	%eax, -280(%rbp)
	cmpl	$0, -280(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.9
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.resize_dialog_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_62
.LBB0_11:                               # %if.end.11
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.12
	movq	-64(%rbp), %rax
	movq	%rax, -288(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -296(%rbp)
	cmpq	$0, -288(%rbp)
	jne	.LBB0_15
# BB#14:                                # %if.then.21
	movl	$0, -300(%rbp)
	jmp	.LBB0_20
.LBB0_15:                               # %if.else.22
	movq	-288(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_18
# BB#16:                                # %land.lhs.true.25
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-296(%rbp), %rax
	jne	.LBB0_18
# BB#17:                                # %if.then.29
	movl	$1, -300(%rbp)
	jmp	.LBB0_19
.LBB0_18:                               # %if.else.30
	movq	-288(%rbp), %rdi
	movq	-296(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -300(%rbp)
.LBB0_19:                               # %if.end.32
	jmp	.LBB0_20
.LBB0_20:                               # %if.end.33
	movl	-300(%rbp), %eax
	movl	%eax, -304(%rbp)
	cmpl	$0, -304(%rbp)
	je	.LBB0_22
# BB#21:                                # %if.then.36
	jmp	.LBB0_23
.LBB0_22:                               # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.resize_dialog_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_62
.LBB0_23:                               # %if.end.38
	jmp	.LBB0_24
.LBB0_24:                               # %do.end.39
	jmp	.LBB0_25
.LBB0_25:                               # %do.body.40
	cmpq	$0, -120(%rbp)
	je	.LBB0_27
# BB#26:                                # %if.then.42
	jmp	.LBB0_28
.LBB0_27:                               # %if.else.43
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.resize_dialog_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_62
.LBB0_28:                               # %if.end.44
	jmp	.LBB0_29
.LBB0_29:                               # %do.end.45
	movq	-56(%rbp), %rax
	movq	%rax, -312(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -320(%rbp)
	cmpq	$0, -312(%rbp)
	jne	.LBB0_31
# BB#30:                                # %if.then.54
	movl	$0, -324(%rbp)
	jmp	.LBB0_36
.LBB0_31:                               # %if.else.55
	movq	-312(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_34
# BB#32:                                # %land.lhs.true.58
	movq	-312(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-320(%rbp), %rax
	jne	.LBB0_34
# BB#33:                                # %if.then.62
	movl	$1, -324(%rbp)
	jmp	.LBB0_35
.LBB0_34:                               # %if.else.63
	movq	-312(%rbp), %rdi
	movq	-320(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -324(%rbp)
.LBB0_35:                               # %if.end.65
	jmp	.LBB0_36
.LBB0_36:                               # %if.end.66
	movl	-324(%rbp), %eax
	movl	%eax, -328(%rbp)
	cmpl	$0, -328(%rbp)
	je	.LBB0_38
# BB#37:                                # %if.then.69
	movq	-56(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gimp_image_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rdi
	callq	gimp_image_get_width
	movl	%eax, -236(%rbp)
	movq	-224(%rbp), %rdi
	callq	gimp_image_get_height
	movabsq	$.L.str.4, %rdi
	movl	%eax, -240(%rbp)
	callq	gettext
	movq	%rax, -232(%rbp)
	jmp	.LBB0_50
.LBB0_38:                               # %if.else.75
	movq	-56(%rbp), %rax
	movq	%rax, -336(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -344(%rbp)
	cmpq	$0, -336(%rbp)
	jne	.LBB0_40
# BB#39:                                # %if.then.84
	movl	$0, -348(%rbp)
	jmp	.LBB0_45
.LBB0_40:                               # %if.else.85
	movq	-336(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_43
# BB#41:                                # %land.lhs.true.88
	movq	-336(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-344(%rbp), %rax
	jne	.LBB0_43
# BB#42:                                # %if.then.92
	movl	$1, -348(%rbp)
	jmp	.LBB0_44
.LBB0_43:                               # %if.else.93
	movq	-336(%rbp), %rdi
	movq	-344(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -348(%rbp)
.LBB0_44:                               # %if.end.95
	jmp	.LBB0_45
.LBB0_45:                               # %if.end.96
	movl	-348(%rbp), %eax
	movl	%eax, -352(%rbp)
	cmpl	$0, -352(%rbp)
	je	.LBB0_47
# BB#46:                                # %if.then.99
	movq	-56(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -360(%rbp)
	movq	-360(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, -224(%rbp)
	movq	-360(%rbp), %rdi
	callq	gimp_item_get_width
	movl	%eax, -236(%rbp)
	movq	-360(%rbp), %rdi
	callq	gimp_item_get_height
	movabsq	$.L.str.5, %rdi
	movl	%eax, -240(%rbp)
	callq	gettext
	movq	%rax, -232(%rbp)
	jmp	.LBB0_49
.LBB0_47:                               # %if.else.107
	jmp	.LBB0_48
.LBB0_48:                               # %do.body.108
	movabsq	$.L.str, %rdi
	movl	$8, %esi
	movabsq	$.L.str.6, %rdx
	movabsq	$.L.str.7, %rcx
	movl	$134, %r8d
	movabsq	$.L__func__.resize_dialog_new, %r9
	movb	$0, %al
	callq	g_log
	movq	$0, -48(%rbp)
	jmp	.LBB0_62
.LBB0_49:                               # %if.end.110
	jmp	.LBB0_50
.LBB0_50:                               # %if.end.111
	movabsq	$.L.str.8, %rax
	movabsq	$.L.str.9, %rcx
	movl	$1, %edx
	movabsq	$.L.str.10, %rsi
	movl	$4294967290, %edi       # imm = 0xFFFFFFFA
	movl	$4294967291, %r8d       # imm = 0xFFFFFFFB
	xorl	%r9d, %r9d
	movl	%r9d, %r10d
	movq	-56(%rbp), %r11
	movq	-64(%rbp), %rbx
	movq	-72(%rbp), %r14
	movq	-80(%rbp), %r15
	movq	-72(%rbp), %r9
	movq	-88(%rbp), %r12
	movq	-96(%rbp), %r13
	movq	%rax, -432(%rbp)        # 8-byte Spill
	movq	-104(%rbp), %rax
	movl	%edi, -436(%rbp)        # 4-byte Spill
	movq	%r11, %rdi
	movq	%rsi, -448(%rbp)        # 8-byte Spill
	movq	%rbx, %rsi
	movl	%edx, -452(%rbp)        # 4-byte Spill
	movq	%r14, %rdx
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	movq	%r15, %rcx
	movq	-432(%rbp), %r11        # 8-byte Reload
	movl	%r8d, -468(%rbp)        # 4-byte Spill
	movq	%r11, %r8
	movq	%r12, (%rsp)
	movq	%r13, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	-464(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	-448(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 40(%rsp)
	movl	$-6, 48(%rsp)
	movq	%r11, 56(%rsp)
	movl	$-5, 64(%rsp)
	movq	$0, 72(%rsp)
	movb	$0, %al
	movq	%r10, -480(%rbp)        # 8-byte Spill
	callq	gimp_viewable_dialog_new
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_resizable
	movq	-136(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$4294967291, %edx       # imm = 0xFFFFFFFB
	movl	$4294967290, %ecx       # imm = 0xFFFFFFFA
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movl	$72, %ecx
	movl	%ecx, %edi
	callq	g_slice_alloc0
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -216(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$resize_dialog_free, %rsi
	movq	-216(%rbp), %rdi
	movq	%rdi, -504(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-504(%rbp), %rdx        # 8-byte Reload
	callq	g_object_weak_ref
	leaq	-248(%rbp), %rsi
	leaq	-256(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	-216(%rbp), %rdi
	movq	%rax, (%rdi)
	movl	-236(%rbp), %ecx
	movq	-216(%rbp), %rax
	movl	%ecx, 8(%rax)
	movl	-240(%rbp), %ecx
	movq	-216(%rbp), %rax
	movl	%ecx, 12(%rax)
	movl	-108(%rbp), %ecx
	movq	-216(%rbp), %rax
	movl	%ecx, 16(%rax)
	movq	-216(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-120(%rbp), %rax
	movq	-216(%rbp), %rdi
	movq	%rax, 56(%rdi)
	movq	-128(%rbp), %rax
	movq	-216(%rbp), %rdi
	movq	%rax, 64(%rdi)
	movq	-224(%rbp), %rdi
	callq	gimp_image_get_resolution
	callq	gimp_size_box_get_type
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.12, %rcx
	movabsq	$.L.str.13, %r9
	movabsq	$.L.str.14, %rdx
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.16, %r10
	xorl	%r8d, %r8d
	movabsq	$.L.str.17, %r11
	xorl	%r14d, %r14d
	movl	%r14d, %ebx
	movl	-236(%rbp), %r14d
	movl	-240(%rbp), %r15d
	movl	-108(%rbp), %r12d
	movsd	-248(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-256(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	%rdi, -512(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -520(%rbp)        # 8-byte Spill
	movl	%r14d, %edx
	movl	%r8d, -524(%rbp)        # 4-byte Spill
	movl	%r15d, %r8d
	movl	%r12d, (%rsp)
	movq	-520(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-512(%rbp), %r13        # 8-byte Reload
	movq	%r13, 16(%rsp)
	movq	%r10, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r11, 40(%rsp)
	movl	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movb	$2, %al
	movq	%rbx, -536(%rbp)        # 8-byte Spill
	callq	g_object_new
	movabsq	$.L.str.18, %rsi
	movabsq	$resize_dialog_response, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-216(%rbp), %rdi
	movq	%rax, 24(%rdi)
	movq	-136(%rbp), %rax
	movq	-216(%rbp), %rdi
	movq	%rdi, -544(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-544(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movl	$1, %edi
	movl	$12, %esi
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-136(%rbp), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-144(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-144(%rbp), %rdi
	callq	gtk_widget_show
	movq	-232(%rbp), %rdi
	callq	gimp_frame_new
	movq	%rax, -168(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-168(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -588(%rbp)        # 4-byte Spill
	movl	-588(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-168(%rbp), %rdi
	callq	gtk_widget_show
	movq	-168(%rbp), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-216(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-216(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.19, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -168(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-168(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -612(%rbp)        # 4-byte Spill
	movl	-612(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-168(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -152(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-152(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-152(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-200(%rbp), %rdi
	movsd	.LCPI0_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_2, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	movl	$2, %esi
	movsd	%xmm0, -632(%rbp)       # 8-byte Spill
	movsd	-632(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-632(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-632(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-632(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$8, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_width_chars
	movl	$1, %ecx
	movabsq	$.L.str.20, %rdx
	xorl	%esi, %esi
	movl	$8, %r8d
	movl	-108(%rbp), %r9d
	movl	%ecx, %edi
	movl	%esi, -644(%rbp)        # 4-byte Spill
	movl	%r9d, %esi
	movl	-644(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -648(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	$8, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_size_entry_new
	movq	%rax, -192(%rbp)
	movq	-216(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-192(%rbp), %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$6, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	movq	-192(%rbp), %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$6, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	movq	-192(%rbp), %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %esi
	movl	$12, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	movq	-192(%rbp), %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$2, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	movq	-192(%rbp), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-184(%rbp), %rsi
	movq	%rax, -696(%rbp)        # 8-byte Spill
	movq	%rsi, -704(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-704(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-696(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_size_entry_add_field
	movq	-192(%rbp), %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	$2, %r8d
	xorl	%r9d, %r9d
	movq	-184(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -716(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	-716(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-184(%rbp), %rdi
	callq	gtk_widget_show
	movq	-192(%rbp), %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-728(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.21, %rdi
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movq	-736(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movl	%ecx, %edx
	callq	gimp_size_entry_attach_label
	movq	-192(%rbp), %rsi
	movq	%rax, -744(%rbp)        # 8-byte Spill
	movq	%rsi, -752(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-752(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.22, %rdi
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_size_entry_attach_label
	movq	-152(%rbp), %rsi
	movq	%rax, -768(%rbp)        # 8-byte Spill
	movq	%rsi, -776(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-776(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-192(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -780(%rbp)        # 4-byte Spill
	movl	-780(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-192(%rbp), %rdi
	callq	gtk_widget_show
	movq	-192(%rbp), %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-792(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movsd	-248(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gimp_size_entry_set_resolution
	movq	-192(%rbp), %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-800(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	xorl	%edx, %edx
	movsd	-256(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_resolution
	movq	-192(%rbp), %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-808(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	movsd	%xmm0, -816(%rbp)       # 8-byte Spill
	movsd	-816(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_size_entry_set_refval_boundaries
	movq	-192(%rbp), %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-824(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	movsd	%xmm0, -832(%rbp)       # 8-byte Spill
	movsd	-832(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_size_entry_set_refval_boundaries
	movq	-192(%rbp), %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-840(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval
	movq	-192(%rbp), %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-848(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval
	movabsq	$.L.str.23, %rsi
	movabsq	$offset_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-192(%rbp), %rdi
	movq	-216(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.24, %rdi
	movq	%rax, -856(%rbp)        # 8-byte Spill
	callq	gtk_button_new_from_stock
	movq	%rax, -176(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-864(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %edx
	movl	$5, %ecx
	movl	$1, %r8d
	movl	$2, %r9d
	movq	-176(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_table_attach_defaults
	movq	-176(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.25, %rsi
	movabsq	$offset_center_clicked, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-176(%rbp), %rdi
	movq	-216(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movss	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	movss	%xmm0, -868(%rbp)       # 4-byte Spill
	movss	-868(%rbp), %xmm2       # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	%xmm1, -872(%rbp)       # 4-byte Spill
	movaps	%xmm2, %xmm1
	movss	-872(%rbp), %xmm2       # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	-872(%rbp), %xmm3       # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	movq	%rax, -880(%rbp)        # 8-byte Spill
	callq	gtk_alignment_new
	movq	%rax, -160(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-888(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-160(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-160(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_frame_new
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -896(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-896(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-160(%rbp), %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-904(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-168(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-168(%rbp), %rdi
	callq	gtk_widget_show
	movl	-236(%rbp), %edi
	movl	-240(%rbp), %esi
	callq	gimp_offset_area_new
	movq	-216(%rbp), %r10
	movq	%rax, 40(%r10)
	movq	-168(%rbp), %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-912(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-216(%rbp), %rsi
	movq	40(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-216(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gtk_widget_show
	movl	$200, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	leaq	-236(%rbp), %r8
	leaq	-240(%rbp), %r9
	movq	-56(%rbp), %rdi
	callq	gimp_viewable_get_preview_size
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	-236(%rbp), %edx
	movl	-240(%rbp), %ecx
	callq	gimp_viewable_get_pixbuf
	movq	%rax, -208(%rbp)
	cmpq	$0, -208(%rbp)
	je	.LBB0_52
# BB#51:                                # %if.then.207
	movq	-216(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
	callq	gimp_offset_area_get_type
	movq	-920(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-208(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_offset_area_set_pixbuf
.LBB0_52:                               # %if.end.211
	movabsq	$.L.str.26, %rsi
	movabsq	$offsets_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-216(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	-216(%rbp), %rdi
	movq	%rdi, -928(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-928(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.27, %rsi
	movabsq	$size_notify, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-216(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	-216(%rbp), %rdi
	movq	%rdi, -936(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-936(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -944(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rcx, -368(%rbp)
	movq	%rax, -952(%rbp)        # 8-byte Spill
	callq	gimp_image_get_type
	movq	%rax, -376(%rbp)
	cmpq	$0, -368(%rbp)
	jne	.LBB0_54
# BB#53:                                # %if.then.224
	movl	$0, -380(%rbp)
	jmp	.LBB0_59
.LBB0_54:                               # %if.else.225
	movq	-368(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_57
# BB#55:                                # %land.lhs.true.228
	movq	-368(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-376(%rbp), %rax
	jne	.LBB0_57
# BB#56:                                # %if.then.232
	movl	$1, -380(%rbp)
	jmp	.LBB0_58
.LBB0_57:                               # %if.else.233
	movq	-368(%rbp), %rdi
	movq	-376(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -380(%rbp)
.LBB0_58:                               # %if.end.235
	jmp	.LBB0_59
.LBB0_59:                               # %if.end.236
	movl	-380(%rbp), %eax
	movl	%eax, -384(%rbp)
	cmpl	$0, -384(%rbp)
	je	.LBB0_61
# BB#60:                                # %if.then.239
	movabsq	$.L.str.28, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -168(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-960(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-168(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -964(%rbp)        # 4-byte Spill
	movl	-964(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-168(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -392(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -976(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-976(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-392(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-392(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.29, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -400(%rbp)
	movq	-392(%rbp), %rax
	movq	%rax, -984(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-984(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-400(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -988(%rbp)        # 4-byte Spill
	movl	-988(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-400(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_item_set_get_type
	movq	%rax, %rdi
	callq	gimp_enum_combo_box_new
	movq	%rax, -408(%rbp)
	movq	-392(%rbp), %rax
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1000(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-408(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-408(%rbp), %rdi
	callq	gtk_widget_show
	movq	-400(%rbp), %rax
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	callq	gtk_label_get_type
	movq	-1008(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-408(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movq	-408(%rbp), %rax
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-1016(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_int_combo_box_get_active, %rsi
	movq	-216(%rbp), %rdi
	movl	48(%rdi), %ecx
	movq	-216(%rbp), %rdi
	addq	$48, %rdi
	movq	%rdi, -1024(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -1032(%rbp)       # 8-byte Spill
	movl	%ecx, %esi
	movq	-1032(%rbp), %rdx       # 8-byte Reload
	movq	-1024(%rbp), %rcx       # 8-byte Reload
	callq	gimp_int_combo_box_connect
	movq	%rax, -1040(%rbp)       # 8-byte Spill
.LBB0_61:                               # %if.end.265
	movq	-136(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB0_62:                               # %return
	movq	-48(%rbp), %rax
	addq	$1080, %rsp             # imm = 0x438
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	resize_dialog_new, .Lfunc_end0-resize_dialog_new
	.cfi_endproc

	.align	16, 0x90
	.type	resize_dialog_free,@function
resize_dialog_free:                     # @resize_dialog_free
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
	.size	resize_dialog_free, .Lfunc_end1-resize_dialog_free
	.cfi_endproc

	.align	16, 0x90
	.type	resize_dialog_response,@function
resize_dialog_response:                 # @resize_dialog_response
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
	pushq	%r14
	pushq	%rbx
	subq	$176, %rsp
.Ltmp14:
	.cfi_offset %rbx, -32
.Ltmp15:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	32(%rdx), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movl	-28(%rbp), %ecx
	movl	%ecx, %r8d
	subl	$-5, %r8d
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movl	%r8d, -80(%rbp)         # 4-byte Spill
	je	.LBB2_2
	jmp	.LBB2_5
.LBB2_5:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jne	.LBB2_3
	jmp	.LBB2_1
.LBB2_1:                                # %sw.bb
	movq	-40(%rbp), %rdi
	callq	resize_dialog_reset
	jmp	.LBB2_4
.LBB2_2:                                # %sw.bb.3
	movabsq	$.L.str.11, %rsi
	leaq	-56(%rbp), %rdx
	movabsq	$.L.str.12, %rcx
	leaq	-60(%rbp), %r8
	movabsq	$.L.str.13, %r9
	leaq	-52(%rbp), %rax
	xorl	%edi, %edi
	movl	%edi, %r10d
	movq	-40(%rbp), %r11
	movq	24(%r11), %r11
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movq	%r10, -96(%rbp)         # 8-byte Spill
	callq	g_object_get
	xorl	%esi, %esi
	movq	-40(%rbp), %rcx
	movq	56(%rcx), %rcx
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	-56(%rbp), %ebx
	movl	-60(%rbp), %r14d
	movl	-52(%rbp), %r8d
	movq	-48(%rbp), %r9
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%r14d, -108(%rbp)       # 4-byte Spill
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movl	%r8d, -124(%rbp)        # 4-byte Spill
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movl	%ebx, -140(%rbp)        # 4-byte Spill
	callq	gimp_size_entry_get_refval
	movl	$1, %esi
	cvttsd2si	%xmm0, %r9d
	movq	-48(%rbp), %rdi
	movl	%r9d, -144(%rbp)        # 4-byte Spill
	callq	gimp_size_entry_get_refval
	cvttsd2si	%xmm0, %esi
	movq	-40(%rbp), %rcx
	movl	48(%rcx), %r8d
	movq	-40(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movl	%esi, -148(%rbp)        # 4-byte Spill
	movq	%rdx, %rsi
	movl	-140(%rbp), %edx        # 4-byte Reload
	movl	-108(%rbp), %r9d        # 4-byte Reload
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movl	%r9d, %ecx
	movl	-124(%rbp), %ebx        # 4-byte Reload
	movl	%r8d, -164(%rbp)        # 4-byte Spill
	movl	%ebx, %r8d
	movl	-144(%rbp), %r9d        # 4-byte Reload
	movl	-148(%rbp), %r14d       # 4-byte Reload
	movl	%r14d, (%rsp)
	movl	-164(%rbp), %r14d       # 4-byte Reload
	movl	%r14d, 8(%rsp)
	movq	-160(%rbp), %r10        # 8-byte Reload
	movq	%r10, 16(%rsp)
	movq	-120(%rbp), %r10        # 8-byte Reload
	callq	*%r10
	jmp	.LBB2_4
.LBB2_3:                                # %sw.default
	movq	-24(%rbp), %rdi
	callq	gtk_widget_destroy
.LBB2_4:                                # %sw.epilog
	addq	$176, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	resize_dialog_response, .Lfunc_end2-resize_dialog_response
	.cfi_endproc

	.align	16, 0x90
	.type	offset_update,@function
offset_update:                          # @offset_update
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	callq	rint
	cvttsd2si	%xmm0, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	resize_bound_off_x
	movl	$1, %esi
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	gimp_size_entry_get_refval
	callq	rint
	cvttsd2si	%xmm0, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	resize_bound_off_y
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gimp_offset_area_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_offset_area_set_offsets
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	offset_update, .Lfunc_end3-offset_update
	.cfi_endproc

	.align	16, 0x90
	.type	offset_center_clicked,@function
offset_center_clicked:                  # @offset_center_clicked
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_size_box_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %ecx
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	136(%rax), %edx
	movq	-16(%rbp), %rax
	subl	8(%rax), %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%eax, %esi
	callq	resize_bound_off_x
	movl	$2, %ecx
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %r8
	movl	140(%r8), %eax
	movq	-16(%rbp), %r8
	subl	12(%r8), %eax
	cltd
	idivl	%ecx
	movl	%eax, %esi
	callq	resize_bound_off_y
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	cvtsi2sdl	-28(%rbp), %xmm0
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	cvtsi2sdl	-32(%rbp), %xmm0
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval
	movabsq	$.L.str.23, %rsi
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	movl	%ecx, %edx
	movb	$0, %al
	callq	g_signal_emit_by_name
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	offset_center_clicked, .Lfunc_end4-offset_center_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	offsets_changed,@function
offsets_changed:                        # @offsets_changed
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	cvtsi2sdl	-12(%rbp), %xmm0
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	cvtsi2sdl	-16(%rbp), %xmm0
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	offsets_changed, .Lfunc_end5-offsets_changed
	.cfi_endproc

	.align	16, 0x90
	.type	size_notify,@function
size_notify:                            # @size_notify
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movl	136(%rdx), %eax
	movq	-24(%rbp), %rdx
	subl	8(%rdx), %eax
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdx
	movl	140(%rdx), %eax
	movq	-24(%rbp), %rdx
	subl	12(%rdx), %eax
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_offset_area_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rdx
	movl	136(%rdx), %esi
	movq	-8(%rbp), %rdx
	movl	140(%rdx), %edx
	movq	%rax, %rdi
	callq	gimp_offset_area_set_size
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	cmpl	-28(%rbp), %edx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jge	.LBB6_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB6_3
.LBB6_2:                                # %cond.false
	movl	-28(%rbp), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB6_3:                                # %cond.end
	movl	-60(%rbp), %eax         # 4-byte Reload
	xorl	%ecx, %ecx
	cvtsi2sdl	%eax, %xmm0
	cmpl	-28(%rbp), %ecx
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jle	.LBB6_5
# BB#4:                                 # %cond.true.9
	xorl	%eax, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB6_6
.LBB6_5:                                # %cond.false.10
	movl	-28(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB6_6:                                # %cond.end.11
	movl	-76(%rbp), %eax         # 4-byte Reload
	xorl	%esi, %esi
	cvtsi2sdl	%eax, %xmm1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	gimp_size_entry_set_refval_boundaries
	movq	-24(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	cmpl	-32(%rbp), %ecx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jge	.LBB6_8
# BB#7:                                 # %cond.true.19
	xorl	%eax, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB6_9
.LBB6_8:                                # %cond.false.20
	movl	-32(%rbp), %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB6_9:                                # %cond.end.21
	movl	-100(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	cvtsi2sdl	%eax, %xmm0
	cmpl	-32(%rbp), %ecx
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	jle	.LBB6_11
# BB#10:                                # %cond.true.26
	xorl	%eax, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB6_12
.LBB6_11:                               # %cond.false.27
	movl	-32(%rbp), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB6_12:                               # %cond.end.28
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	$1, %esi
	cvtsi2sdl	%eax, %xmm1
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	gimp_size_entry_set_refval_boundaries
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	size_notify, .Lfunc_end6-size_notify
	.cfi_endproc

	.align	16, 0x90
	.type	resize_dialog_reset,@function
resize_dialog_reset:                    # @resize_dialog_reset
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
	pushq	%rbx
	subq	$40, %rsp
.Ltmp31:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.16, %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	24(%rdi), %rdi
	movb	$0, %al
	callq	g_object_set
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.12, %rcx
	movabsq	$.L.str.13, %r9
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	-16(%rbp), %r8
	movq	24(%r8), %r8
	movq	-16(%rbp), %r10
	movl	8(%r10), %edx
	movq	-16(%rbp), %r10
	movl	12(%r10), %r11d
	movq	-16(%rbp), %r10
	movl	16(%r10), %ebx
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movl	%r11d, %r8d
	movl	%ebx, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	g_object_set
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	resize_dialog_reset, .Lfunc_end7-resize_dialog_reset
	.cfi_endproc

	.align	16, 0x90
	.type	resize_bound_off_x,@function
resize_bound_off_x:                     # @resize_bound_off_x
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_size_box_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-32(%rbp), %rax
	cmpl	136(%rax), %ecx
	jg	.LBB8_8
# BB#1:                                 # %if.then
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	136(%rcx), %edx
	movq	-16(%rbp), %rcx
	subl	8(%rcx), %edx
	cmpl	%edx, %eax
	jle	.LBB8_3
# BB#2:                                 # %cond.true
	movq	-32(%rbp), %rax
	movl	136(%rax), %ecx
	movq	-16(%rbp), %rax
	subl	8(%rax), %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	jmp	.LBB8_7
.LBB8_3:                                # %cond.false
	cmpl	$0, -20(%rbp)
	jge	.LBB8_5
# BB#4:                                 # %cond.true.10
	xorl	%eax, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB8_6
.LBB8_5:                                # %cond.false.11
	movl	-20(%rbp), %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB8_6:                                # %cond.end
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB8_7:                                # %cond.end.12
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, -4(%rbp)
	jmp	.LBB8_15
.LBB8_8:                                # %if.else
	cmpl	$0, -20(%rbp)
	jle	.LBB8_10
# BB#9:                                 # %cond.true.15
	xorl	%eax, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB8_14
.LBB8_10:                               # %cond.false.16
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	136(%rcx), %edx
	movq	-16(%rbp), %rcx
	subl	8(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB8_12
# BB#11:                                # %cond.true.21
	movq	-32(%rbp), %rax
	movl	136(%rax), %ecx
	movq	-16(%rbp), %rax
	subl	8(%rax), %ecx
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	jmp	.LBB8_13
.LBB8_12:                               # %cond.false.25
	movl	-20(%rbp), %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB8_13:                               # %cond.end.26
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB8_14:                               # %cond.end.28
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -4(%rbp)
.LBB8_15:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	resize_bound_off_x, .Lfunc_end8-resize_bound_off_x
	.cfi_endproc

	.align	16, 0x90
	.type	resize_bound_off_y,@function
resize_bound_off_y:                     # @resize_bound_off_y
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_size_box_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-32(%rbp), %rax
	cmpl	140(%rax), %ecx
	jg	.LBB9_8
# BB#1:                                 # %if.then
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	140(%rcx), %edx
	movq	-16(%rbp), %rcx
	subl	12(%rcx), %edx
	cmpl	%edx, %eax
	jle	.LBB9_3
# BB#2:                                 # %cond.true
	movq	-32(%rbp), %rax
	movl	140(%rax), %ecx
	movq	-16(%rbp), %rax
	subl	12(%rax), %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	jmp	.LBB9_7
.LBB9_3:                                # %cond.false
	cmpl	$0, -20(%rbp)
	jge	.LBB9_5
# BB#4:                                 # %cond.true.10
	xorl	%eax, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB9_6
.LBB9_5:                                # %cond.false.11
	movl	-20(%rbp), %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB9_6:                                # %cond.end
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB9_7:                                # %cond.end.12
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, -4(%rbp)
	jmp	.LBB9_15
.LBB9_8:                                # %if.else
	cmpl	$0, -20(%rbp)
	jle	.LBB9_10
# BB#9:                                 # %cond.true.15
	xorl	%eax, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB9_14
.LBB9_10:                               # %cond.false.16
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	140(%rcx), %edx
	movq	-16(%rbp), %rcx
	subl	12(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB9_12
# BB#11:                                # %cond.true.21
	movq	-32(%rbp), %rax
	movl	140(%rax), %ecx
	movq	-16(%rbp), %rax
	subl	12(%rax), %ecx
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	jmp	.LBB9_13
.LBB9_12:                               # %cond.false.25
	movl	-20(%rbp), %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB9_13:                               # %cond.end.26
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB9_14:                               # %cond.end.28
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -4(%rbp)
.LBB9_15:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	resize_bound_off_y, .Lfunc_end9-resize_bound_off_y
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Dialogs"
	.size	.L.str, 13

	.type	.L__func__.resize_dialog_new,@object # @__func__.resize_dialog_new
.L__func__.resize_dialog_new:
	.asciz	"resize_dialog_new"
	.size	.L__func__.resize_dialog_new, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_VIEWABLE (viewable)"
	.size	.L.str.1, 28

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"callback != NULL"
	.size	.L.str.3, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Canvas Size"
	.size	.L.str.4, 12

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Layer Size"
	.size	.L.str.5, 11

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"file %s: line %d (%s): should not be reached"
	.size	.L.str.6, 45

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"resize-dialog.c"
	.size	.L.str.7, 16

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-resize"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-reset"
	.size	.L.str.9, 11

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gtk-cancel"
	.size	.L.str.10, 11

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"width"
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"height"
	.size	.L.str.12, 7

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"unit"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"xresolution"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"yresolution"
	.size	.L.str.15, 12

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"keep-aspect"
	.size	.L.str.16, 12

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"edit-resolution"
	.size	.L.str.17, 16

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"response"
	.size	.L.str.18, 9

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Offset"
	.size	.L.str.19, 7

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"%p"
	.size	.L.str.20, 3

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"_X:"
	.size	.L.str.21, 4

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"_Y:"
	.size	.L.str.22, 4

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"value-changed"
	.size	.L.str.23, 14

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimp-center"
	.size	.L.str.24, 12

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"clicked"
	.size	.L.str.25, 8

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"offsets-changed"
	.size	.L.str.26, 16

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"notify"
	.size	.L.str.27, 7

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Layers"
	.size	.L.str.28, 7

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Resize _layers:"
	.size	.L.str.29, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
