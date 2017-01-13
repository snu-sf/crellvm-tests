	.text
	.file	"scale-dialog.bc"
	.globl	scale_dialog_new
	.align	16, 0x90
	.type	scale_dialog_new,@function
scale_dialog_new:                       # @scale_dialog_new
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
	subq	$776, %rsp              # imm = 0x308
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
	movl	32(%rbp), %r11d
	movl	24(%rbp), %ebx
	movq	16(%rbp), %r14
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	%r14, -104(%rbp)
	movl	%ebx, -108(%rbp)
	movl	%r11d, -112(%rbp)
	movq	%r10, -120(%rbp)
	movq	%rax, -128(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -192(%rbp)
# BB#1:                                 # %do.body
	movq	-56(%rbp), %rax
	movq	%rax, -224(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -232(%rbp)
	cmpq	$0, -224(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -236(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-224(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-232(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -236(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-224(%rbp), %rdi
	movq	-232(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -236(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-236(%rbp), %eax
	movl	%eax, -240(%rbp)
	cmpl	$0, -240(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.scale_dialog_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_60
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-64(%rbp), %rax
	movq	%rax, -248(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -256(%rbp)
	cmpq	$0, -248(%rbp)
	jne	.LBB0_15
# BB#14:                                # %if.then.20
	movl	$0, -260(%rbp)
	jmp	.LBB0_20
.LBB0_15:                               # %if.else.21
	movq	-248(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_18
# BB#16:                                # %land.lhs.true.24
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-256(%rbp), %rax
	jne	.LBB0_18
# BB#17:                                # %if.then.28
	movl	$1, -260(%rbp)
	jmp	.LBB0_19
.LBB0_18:                               # %if.else.29
	movq	-248(%rbp), %rdi
	movq	-256(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -260(%rbp)
.LBB0_19:                               # %if.end.31
	jmp	.LBB0_20
.LBB0_20:                               # %if.end.32
	movl	-260(%rbp), %eax
	movl	%eax, -264(%rbp)
	cmpl	$0, -264(%rbp)
	je	.LBB0_22
# BB#21:                                # %if.then.35
	jmp	.LBB0_23
.LBB0_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.scale_dialog_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_60
.LBB0_23:                               # %if.end.37
	jmp	.LBB0_24
.LBB0_24:                               # %do.end.38
	jmp	.LBB0_25
.LBB0_25:                               # %do.body.39
	cmpq	$0, -120(%rbp)
	je	.LBB0_27
# BB#26:                                # %if.then.41
	jmp	.LBB0_28
.LBB0_27:                               # %if.else.42
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.scale_dialog_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_60
.LBB0_28:                               # %if.end.43
	jmp	.LBB0_29
.LBB0_29:                               # %do.end.44
	movq	-56(%rbp), %rax
	movq	%rax, -272(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -280(%rbp)
	cmpq	$0, -272(%rbp)
	jne	.LBB0_31
# BB#30:                                # %if.then.53
	movl	$0, -284(%rbp)
	jmp	.LBB0_36
.LBB0_31:                               # %if.else.54
	movq	-272(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_34
# BB#32:                                # %land.lhs.true.57
	movq	-272(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-280(%rbp), %rax
	jne	.LBB0_34
# BB#33:                                # %if.then.61
	movl	$1, -284(%rbp)
	jmp	.LBB0_35
.LBB0_34:                               # %if.else.62
	movq	-272(%rbp), %rdi
	movq	-280(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -284(%rbp)
.LBB0_35:                               # %if.end.64
	jmp	.LBB0_36
.LBB0_36:                               # %if.end.65
	movl	-284(%rbp), %eax
	movl	%eax, -288(%rbp)
	cmpl	$0, -288(%rbp)
	je	.LBB0_38
# BB#37:                                # %if.then.68
	movq	-56(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gimp_image_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rdi
	callq	gimp_image_get_width
	movl	%eax, -196(%rbp)
	movq	-184(%rbp), %rdi
	callq	gimp_image_get_height
	movabsq	$.L.str.4, %rdi
	movl	%eax, -200(%rbp)
	callq	gettext
	movq	%rax, -192(%rbp)
	jmp	.LBB0_50
.LBB0_38:                               # %if.else.74
	movq	-56(%rbp), %rax
	movq	%rax, -296(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -304(%rbp)
	cmpq	$0, -296(%rbp)
	jne	.LBB0_40
# BB#39:                                # %if.then.83
	movl	$0, -308(%rbp)
	jmp	.LBB0_45
.LBB0_40:                               # %if.else.84
	movq	-296(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_43
# BB#41:                                # %land.lhs.true.87
	movq	-296(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-304(%rbp), %rax
	jne	.LBB0_43
# BB#42:                                # %if.then.91
	movl	$1, -308(%rbp)
	jmp	.LBB0_44
.LBB0_43:                               # %if.else.92
	movq	-296(%rbp), %rdi
	movq	-304(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -308(%rbp)
.LBB0_44:                               # %if.end.94
	jmp	.LBB0_45
.LBB0_45:                               # %if.end.95
	movl	-308(%rbp), %eax
	movl	%eax, -312(%rbp)
	cmpl	$0, -312(%rbp)
	je	.LBB0_47
# BB#46:                                # %if.then.98
	movq	-56(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -320(%rbp)
	movq	-320(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, -184(%rbp)
	movq	-320(%rbp), %rdi
	callq	gimp_item_get_width
	movl	%eax, -196(%rbp)
	movq	-320(%rbp), %rdi
	callq	gimp_item_get_height
	movabsq	$.L.str.5, %rdi
	movl	%eax, -200(%rbp)
	callq	gettext
	movq	%rax, -192(%rbp)
	jmp	.LBB0_49
.LBB0_47:                               # %if.else.106
	jmp	.LBB0_48
.LBB0_48:                               # %do.body.107
	movabsq	$.L.str, %rdi
	movl	$8, %esi
	movabsq	$.L.str.6, %rdx
	movabsq	$.L.str.7, %rcx
	movl	$113, %r8d
	movabsq	$.L__func__.scale_dialog_new, %r9
	movb	$0, %al
	callq	g_log
	movq	$0, -48(%rbp)
	jmp	.LBB0_60
.LBB0_49:                               # %if.end.109
	jmp	.LBB0_50
.LBB0_50:                               # %if.end.110
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
	movq	%rax, -376(%rbp)        # 8-byte Spill
	movq	-104(%rbp), %rax
	movl	%edi, -380(%rbp)        # 4-byte Spill
	movq	%r11, %rdi
	movq	%rsi, -392(%rbp)        # 8-byte Spill
	movq	%rbx, %rsi
	movl	%edx, -396(%rbp)        # 4-byte Spill
	movq	%r14, %rdx
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	movq	%r15, %rcx
	movq	-376(%rbp), %r11        # 8-byte Reload
	movl	%r8d, -412(%rbp)        # 4-byte Spill
	movq	%r11, %r8
	movq	%r12, (%rsp)
	movq	%r13, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	-408(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	-392(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 40(%rsp)
	movl	$-6, 48(%rsp)
	movq	%r11, 56(%rsp)
	movl	$-5, 64(%rsp)
	movq	$0, 72(%rsp)
	movb	$0, %al
	movq	%r10, -424(%rbp)        # 8-byte Spill
	callq	gimp_viewable_dialog_new
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$4294967291, %edx       # imm = 0xFFFFFFFB
	movl	$4294967290, %ecx       # imm = 0xFFFFFFFA
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-136(%rbp), %rdi
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_resizable
	movl	$48, %ecx
	movl	%ecx, %edi
	callq	g_slice_alloc0
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -176(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$scale_dialog_free, %rsi
	movq	-176(%rbp), %rdi
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-448(%rbp), %rdx        # 8-byte Reload
	callq	g_object_weak_ref
	leaq	-208(%rbp), %rsi
	leaq	-216(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	-176(%rbp), %rdi
	movq	%rax, (%rdi)
	movl	-112(%rbp), %ecx
	movq	-176(%rbp), %rax
	movl	%ecx, 12(%rax)
	movl	-108(%rbp), %ecx
	movq	-176(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-120(%rbp), %rax
	movq	-176(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-128(%rbp), %rax
	movq	-176(%rbp), %rdi
	movq	%rax, 40(%rdi)
	movq	-184(%rbp), %rdi
	callq	gimp_image_get_resolution
	callq	gimp_size_box_get_type
	movl	-196(%rbp), %edx
	movl	-200(%rbp), %r8d
	movl	-108(%rbp), %ecx
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-216(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	-184(%rbp), %rdi
	movq	%rax, -456(%rbp)        # 8-byte Spill
	movl	%edx, -460(%rbp)        # 4-byte Spill
	movl	%r8d, -464(%rbp)        # 4-byte Spill
	movl	%ecx, -468(%rbp)        # 4-byte Spill
	movsd	%xmm0, -480(%rbp)       # 8-byte Spill
	movsd	%xmm1, -488(%rbp)       # 8-byte Spill
	callq	gimp_image_get_unit
	movq	-56(%rbp), %rsi
	movq	%rsi, -328(%rbp)
	movl	%eax, -492(%rbp)        # 4-byte Spill
	callq	gimp_image_get_type
	movq	%rax, -336(%rbp)
	cmpq	$0, -328(%rbp)
	jne	.LBB0_52
# BB#51:                                # %if.then.133
	movl	$0, -340(%rbp)
	jmp	.LBB0_57
.LBB0_52:                               # %if.else.134
	movq	-328(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_55
# BB#53:                                # %land.lhs.true.137
	movq	-328(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-336(%rbp), %rax
	jne	.LBB0_55
# BB#54:                                # %if.then.141
	movl	$1, -340(%rbp)
	jmp	.LBB0_56
.LBB0_55:                               # %if.else.142
	movq	-328(%rbp), %rdi
	movq	-336(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -340(%rbp)
.LBB0_56:                               # %if.end.144
	jmp	.LBB0_57
.LBB0_57:                               # %if.end.145
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.12, %rcx
	movabsq	$.L.str.13, %r9
	movabsq	$.L.str.14, %rax
	movabsq	$.L.str.15, %rdx
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.17, %r8
	movl	$1, %r10d
	movabsq	$.L.str.18, %r11
	xorl	%ebx, %ebx
	movl	%ebx, %r14d
	movl	-340(%rbp), %ebx
	movl	%ebx, -344(%rbp)
	movl	-344(%rbp), %ebx
	movq	-456(%rbp), %r15        # 8-byte Reload
	movq	%rdi, -504(%rbp)        # 8-byte Spill
	movq	%r15, %rdi
	movl	-460(%rbp), %r12d       # 4-byte Reload
	movq	%rdx, -512(%rbp)        # 8-byte Spill
	movl	%r12d, %edx
	movl	-464(%rbp), %r13d       # 4-byte Reload
	movq	%r8, -520(%rbp)         # 8-byte Spill
	movl	%r13d, %r8d
	movl	-468(%rbp), %r15d       # 4-byte Reload
	movl	%r15d, (%rsp)
	movq	%rax, 8(%rsp)
	movsd	-480(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-512(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movsd	-488(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	-504(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	movl	-492(%rbp), %r15d       # 4-byte Reload
	movl	%r15d, 32(%rsp)
	movq	-520(%rbp), %rax        # 8-byte Reload
	movq	%rax, 40(%rsp)
	movl	$1, 48(%rsp)
	movq	%r11, 56(%rsp)
	movl	%ebx, 64(%rsp)
	movq	$0, 72(%rsp)
	movb	$2, %al
	movq	%r14, -528(%rbp)        # 8-byte Spill
	movl	%r10d, -532(%rbp)       # 4-byte Spill
	callq	g_object_new
	movabsq	$.L.str.19, %rsi
	movabsq	$scale_dialog_response, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-176(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-136(%rbp), %rax
	movq	-176(%rbp), %rdi
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
	movq	-192(%rbp), %rdi
	callq	gimp_frame_new
	movq	%rax, -160(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-160(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -588(%rbp)        # 4-byte Spill
	movl	-588(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-160(%rbp), %rdi
	callq	gtk_widget_show
	movq	-160(%rbp), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-176(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-176(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.20, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -160(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-160(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -612(%rbp)        # 4-byte Spill
	movl	-612(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-160(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -144(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-144(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-144(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -152(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-152(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -636(%rbp)        # 4-byte Spill
	movl	-636(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-152(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.21, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -168(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-168(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -652(%rbp)        # 4-byte Spill
	movl	-652(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-168(%rbp), %rdi
	callq	gtk_widget_show
	movq	-176(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	gimp_size_box_get_type
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	128(%rax), %rdi
	movq	-168(%rbp), %rsi
	callq	gtk_size_group_add_widget
	callq	gimp_interpolation_type_get_type
	movq	%rax, %rdi
	callq	gimp_enum_combo_box_new
	movq	-176(%rbp), %rsi
	movq	%rax, 24(%rsi)
	movq	-168(%rbp), %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-176(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movq	-152(%rbp), %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-176(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-176(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gtk_widget_show
	movq	-176(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-176(%rbp), %rsi
	movl	12(%rsi), %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movq	-184(%rbp), %rdi
	movl	%eax, -692(%rbp)        # 4-byte Spill
	callq	gimp_image_base_type
	cmpl	$2, %eax
	jne	.LBB0_59
# BB#58:                                # %if.then.197
	movabsq	$.L.str.22, %rdi
	callq	gimp_message_box_new
	movq	%rax, -352(%rbp)
	movq	-352(%rbp), %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	gimp_message_box_get_type
	movq	-704(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.23, %rdi
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_message_box_set_text
	movq	-352(%rbp), %rsi
	movq	%rsi, -720(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-144(%rbp), %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-728(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-352(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -732(%rbp)        # 4-byte Spill
	movl	-732(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-352(%rbp), %rdi
	callq	gtk_widget_show
.LBB0_59:                               # %if.end.208
	movq	-136(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB0_60:                               # %return
	movq	-48(%rbp), %rax
	addq	$776, %rsp              # imm = 0x308
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	scale_dialog_new, .Lfunc_end0-scale_dialog_new
	.cfi_endproc

	.align	16, 0x90
	.type	scale_dialog_free,@function
scale_dialog_free:                      # @scale_dialog_free
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
	movl	$48, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#2:                                 # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	scale_dialog_free, .Lfunc_end1-scale_dialog_free
	.cfi_endproc

	.align	16, 0x90
	.type	scale_dialog_response,@function
scale_dialog_response:                  # @scale_dialog_response
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$184, %rsp
.Ltmp14:
	.cfi_offset %rbx, -56
.Ltmp15:
	.cfi_offset %r12, -48
.Ltmp16:
	.cfi_offset %r13, -40
.Ltmp17:
	.cfi_offset %r14, -32
.Ltmp18:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movl	%esi, -52(%rbp)
	movq	%rdx, -64(%rbp)
	movl	8(%rdx), %esi
	movl	%esi, -68(%rbp)
	movq	-64(%rbp), %rdx
	movl	12(%rdx), %esi
	movl	%esi, -72(%rbp)
	movl	-52(%rbp), %esi
	movl	%esi, %eax
	subl	$-5, %eax
	movl	%esi, -108(%rbp)        # 4-byte Spill
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB2_2
	jmp	.LBB2_5
.LBB2_5:                                # %entry
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jne	.LBB2_3
	jmp	.LBB2_1
.LBB2_1:                                # %sw.bb
	movq	-64(%rbp), %rdi
	callq	scale_dialog_reset
	jmp	.LBB2_4
.LBB2_2:                                # %sw.bb.3
	movabsq	$.L.str.11, %rsi
	leaq	-80(%rbp), %rdx
	movabsq	$.L.str.12, %rcx
	leaq	-84(%rbp), %r8
	movabsq	$.L.str.13, %r9
	leaq	-68(%rbp), %rax
	movabsq	$.L.str.14, %rdi
	leaq	-96(%rbp), %r10
	movabsq	$.L.str.15, %r11
	leaq	-104(%rbp), %rbx
	movabsq	$.L.str.16, %r14
	leaq	-76(%rbp), %r15
	xorl	%r12d, %r12d
	movl	%r12d, %r13d
	movq	-64(%rbp), %r12
	movq	16(%r12), %r12
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%r12, %rdi
	movq	%rax, (%rsp)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r10, 16(%rsp)
	movq	%r11, 24(%rsp)
	movq	%rbx, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	%r15, 48(%rsp)
	movq	$0, 56(%rsp)
	movb	$0, %al
	movq	%r13, -136(%rbp)        # 8-byte Spill
	callq	g_object_get
	movq	-64(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_get_active
	movq	-64(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	-48(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rsi
	movl	-80(%rbp), %edx
	movl	-84(%rbp), %r8d
	movl	-68(%rbp), %r9d
	movl	-72(%rbp), %r10d
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	-76(%rbp), %r11d
	movq	-64(%rbp), %rbx
	movq	40(%rbx), %rbx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	%r11d, (%rsp)
	movq	%rbx, 8(%rsp)
	movq	-152(%rbp), %rbx        # 8-byte Reload
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	*%rbx
	jmp	.LBB2_4
.LBB2_3:                                # %sw.default
	movq	-48(%rbp), %rdi
	callq	gtk_widget_destroy
.LBB2_4:                                # %sw.epilog
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	scale_dialog_response, .Lfunc_end2-scale_dialog_response
	.cfi_endproc

	.align	16, 0x90
	.type	scale_dialog_reset,@function
scale_dialog_reset:                     # @scale_dialog_reset
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
	pushq	%rbx
	subq	$184, %rsp
.Ltmp22:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -56(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB3_7
.LBB3_2:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_5
# BB#3:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB3_5
# BB#4:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB3_6
.LBB3_5:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB3_6:                                # %if.end
	jmp	.LBB3_7
.LBB3_7:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB3_9
# BB#8:                                 # %if.then.8
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_image_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_width
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_height
	movl	%eax, -32(%rbp)
	jmp	.LBB3_21
.LBB3_9:                                # %if.else.14
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB3_11
# BB#10:                                # %if.then.24
	movl	$0, -92(%rbp)
	jmp	.LBB3_16
.LBB3_11:                               # %if.else.25
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_14
# BB#12:                                # %land.lhs.true.28
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB3_14
# BB#13:                                # %if.then.32
	movl	$1, -92(%rbp)
	jmp	.LBB3_15
.LBB3_14:                               # %if.else.33
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB3_15:                               # %if.end.35
	jmp	.LBB3_16
.LBB3_16:                               # %if.end.36
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB3_18
# BB#17:                                # %if.then.39
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, -24(%rbp)
	movq	-104(%rbp), %rdi
	callq	gimp_item_get_width
	movl	%eax, -28(%rbp)
	movq	-104(%rbp), %rdi
	callq	gimp_item_get_height
	movl	%eax, -32(%rbp)
	jmp	.LBB3_20
.LBB3_18:                               # %if.else.47
	jmp	.LBB3_19
.LBB3_19:                               # %do.body
	movabsq	$.L.str, %rdi
	movl	$8, %esi
	movabsq	$.L.str.6, %rdx
	movabsq	$.L.str.7, %rcx
	movl	$288, %r8d              # imm = 0x120
	movabsq	$.L__func__.scale_dialog_reset, %r9
	movb	$0, %al
	callq	g_log
	jmp	.LBB3_22
.LBB3_20:                               # %if.end.48
	jmp	.LBB3_21
.LBB3_21:                               # %if.end.49
	leaq	-40(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_resolution
	movabsq	$.L.str.17, %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	movb	$0, %al
	callq	g_object_set
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.12, %rcx
	movabsq	$.L.str.13, %r9
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	-16(%rbp), %r8
	movq	16(%r8), %r8
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %r10d
	movq	-16(%rbp), %r11
	movl	8(%r11), %ebx
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movl	%r10d, %r8d
	movl	%ebx, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	g_object_set
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-24(%rbp), %rdi
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	movsd	%xmm1, -152(%rbp)       # 8-byte Spill
	callq	gimp_image_get_unit
	movabsq	$.L.str.17, %rsi
	movl	$1, %edx
	movabsq	$.L.str.14, %rcx
	movabsq	$.L.str.15, %r8
	movabsq	$.L.str.16, %r9
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-136(%rbp), %r11        # 8-byte Reload
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-152(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	%eax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$2, %al
	callq	g_object_set
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rcx
	movl	12(%rcx), %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB3_22:                               # %return
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	scale_dialog_reset, .Lfunc_end3-scale_dialog_reset
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Dialogs"
	.size	.L.str, 13

	.type	.L__func__.scale_dialog_new,@object # @__func__.scale_dialog_new
.L__func__.scale_dialog_new:
	.asciz	"scale_dialog_new"
	.size	.L__func__.scale_dialog_new, 17

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
	.asciz	"Image Size"
	.size	.L.str.4, 11

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
	.asciz	"scale-dialog.c"
	.size	.L.str.7, 15

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-scale"
	.size	.L.str.8, 11

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
	.asciz	"resolution-unit"
	.size	.L.str.16, 16

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"keep-aspect"
	.size	.L.str.17, 12

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"edit-resolution"
	.size	.L.str.18, 16

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"response"
	.size	.L.str.19, 9

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Quality"
	.size	.L.str.20, 8

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"I_nterpolation:"
	.size	.L.str.21, 16

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp-info"
	.size	.L.str.22, 10

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Indexed color layers are always scaled without interpolation. The chosen interpolation type will affect channels and layer masks only."
	.size	.L.str.23, 135

	.type	.L__func__.scale_dialog_reset,@object # @__func__.scale_dialog_reset
.L__func__.scale_dialog_reset:
	.asciz	"scale_dialog_reset"
	.size	.L__func__.scale_dialog_reset, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
