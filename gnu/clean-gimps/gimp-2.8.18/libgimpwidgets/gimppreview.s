	.text
	.file	"gimppreview.bc"
	.globl	gimp_preview_get_type
	.align	16, 0x90
	.type	gimp_preview_get_type,@function
gimp_preview_get_type:                  # @gimp_preview_get_type
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
	cmpq	$0, gimp_preview_get_type.preview_type(%rip)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	callq	gtk_box_get_type@PLT
	leaq	.L.str(%rip), %rsi
	leaq	gimp_preview_get_type.preview_info(%rip), %rdx
	movl	$16, %ecx
	movq	%rax, %rdi
	callq	g_type_register_static@PLT
	movq	%rax, gimp_preview_get_type.preview_type(%rip)
.LBB0_2:                                # %if.end
	movq	gimp_preview_get_type.preview_type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_preview_get_type, .Lfunc_end0-gimp_preview_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_preview_class_init,@function
gimp_preview_class_init:                # @gimp_preview_class_init
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
	pushq	%r12
	pushq	%rbx
	subq	$128, %rsp
.Ltmp6:
	.cfi_offset %rbx, -48
.Ltmp7:
	.cfi_offset %r12, -40
.Ltmp8:
	.cfi_offset %r14, -32
.Ltmp9:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_type_check_class_cast@PLT
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_peek_parent@PLT
	leaq	.L.str.7(%rip), %rdi
	movl	$1, %edx
	movl	$856, %ecx              # imm = 0x358
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	g_cclosure_marshal_VOID__VOID@GOTPCREL(%rip), %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	xorl	%r8d, %r8d
	movq	%rax, parent_class(%rip)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-88(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movq	%r10, -96(%rbp)         # 8-byte Spill
	callq	g_signal_new@PLT
	movl	$8, %ecx
	movl	%ecx, %esi
	leaq	gimp_preview_real_untransform(%rip), %rdi
	leaq	gimp_preview_real_transform(%rip), %r8
	leaq	gimp_preview_real_set_cursor(%rip), %r9
	leaq	gimp_preview_popup_menu(%rip), %r10
	leaq	gimp_preview_direction_changed(%rip), %r11
	leaq	gimp_preview_set_property(%rip), %rbx
	leaq	gimp_preview_get_property(%rip), %r14
	leaq	gimp_preview_dispose(%rip), %r15
	movl	%eax, preview_signals(%rip)
	movq	-48(%rbp), %r12
	movq	%r15, 40(%r12)
	movq	-48(%rbp), %r15
	movq	%r14, 32(%r15)
	movq	-48(%rbp), %r14
	movq	%rbx, 24(%r14)
	movq	-56(%rbp), %rbx
	movq	%r11, 288(%rbx)
	movq	-56(%rbp), %r11
	movq	%r10, 632(%r11)
	movq	-40(%rbp), %r10
	movq	$0, 824(%r10)
	movq	-40(%rbp), %r10
	movq	$0, 832(%r10)
	movq	-40(%rbp), %r10
	movq	$0, 840(%r10)
	movq	-40(%rbp), %r10
	movq	%r9, 848(%r10)
	movq	-40(%rbp), %r9
	movq	%r8, 864(%r9)
	movq	-40(%rbp), %r8
	movq	%rdi, 872(%r8)
	movq	-48(%rbp), %rdi
	callq	g_type_class_add_private@PLT
	leaq	.L.str.3(%rip), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$1, %ecx
	movl	$231, %r8d
	movq	-48(%rbp), %r9
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	%r9, -112(%rbp)         # 8-byte Spill
	callq	g_param_spec_boolean@PLT
	movl	$1, %esi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.8(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$1, %ecx
	movl	$1024, %r8d             # imm = 0x400
	movl	$200, %r9d
	movl	$225, %esi
	movq	-56(%rbp), %rdx
	movl	%esi, -116(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	$225, (%rsp)
	callq	g_param_spec_int@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_widget_class_install_style_property@PLT
	addq	$128, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_preview_class_init, .Lfunc_end1-gimp_preview_class_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_1:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	gimp_preview_init,@function
gimp_preview_init:                      # @gimp_preview_init
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
	pushq	%r14
	pushq	%rbx
	subq	$336, %rsp              # imm = 0x150
.Ltmp13:
	.cfi_offset %rbx, -32
.Ltmp14:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	xorps	%xmm0, %xmm0
	movq	%rax, -32(%rbp)
	movsd	%xmm0, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_orientable_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_orientable_set_orientation@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_homogeneous@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_spacing@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_get_direction@PLT
	cmpl	$2, %eax
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
.LBB2_2:                                # %if.end
	xorl	%eax, %eax
	movl	%eax, %edi
	xorps	%xmm1, %xmm1
	movss	.LCPI2_1(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	movl	$1, %esi
	cvtsd2ss	-48(%rbp), %xmm0
	callq	gtk_aspect_frame_new@PLT
	movq	-24(%rbp), %rdi
	movq	%rax, 152(%rdi)
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_frame_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rsi
	movq	152(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start@PLT
	movq	-24(%rbp), %rax
	movq	152(%rax), %rdi
	callq	gtk_widget_show@PLT
	movl	$3, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	gtk_table_new@PLT
	movq	-24(%rbp), %r9
	movq	%rax, 144(%r9)
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movl	$3, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing@PLT
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-24(%rbp), %rsi
	movq	144(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	movq	-24(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gtk_widget_show@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-24(%rbp), %rax
	movl	$0, 216(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 200(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 192(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 204(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 196(%rax)
	movq	-24(%rbp), %rax
	movl	196(%rax), %ecx
	movq	-24(%rbp), %rax
	subl	192(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 208(%rax)
	movq	-24(%rbp), %rax
	movl	204(%rax), %ecx
	movq	-24(%rbp), %rax
	subl	200(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 212(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 184(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 188(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 176(%rax)
	callq	gtk_frame_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type@PLT
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	$5, %r8d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -140(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-140(%rbp), %r10d       # 4-byte Reload
	movl	%ecx, -144(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	-144(%rbp), %r11d       # 4-byte Reload
	movl	%r8d, -148(%rbp)        # 4-byte Spill
	movl	%r11d, %r8d
	movl	%r10d, %r9d
	movl	$5, (%rsp)
	movl	$5, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach@PLT
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show@PLT
	callq	gimp_preview_area_new@PLT
	movq	-24(%rbp), %rsi
	movq	%rax, 136(%rsi)
	movq	-40(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-24(%rbp), %rsi
	movq	136(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	movq	-24(%rbp), %rax
	movq	136(%rax), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.12(%rip), %rsi
	leaq	gimp_preview_notify_checks(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-24(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	-24(%rbp), %rbx
	movq	%rax, %rdx
	movq	%rbx, %rcx
	callq	g_signal_connect_data@PLT
	leaq	.L.str.13(%rip), %rsi
	leaq	gimp_preview_notify_checks(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-24(%rbp), %rdx
	movq	136(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data@PLT
	movl	$792, %esi              # imm = 0x318
	movq	-24(%rbp), %rcx
	movq	136(%rcx), %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_widget_add_events@PLT
	leaq	.L.str.14(%rip), %rsi
	leaq	gimp_preview_area_event(%rip), %rax
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-192(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	leaq	.L.str.15(%rip), %rsi
	leaq	gimp_preview_area_realize(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	136(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data@PLT
	leaq	.L.str.16(%rip), %rsi
	leaq	gimp_preview_area_unrealize(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	136(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-216(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data@PLT
	leaq	.L.str.15(%rip), %rsi
	leaq	gimp_preview_area_set_cursor(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$3, %r9d
	movq	-24(%rbp), %rdx
	movq	136(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data@PLT
	leaq	.L.str.17(%rip), %rsi
	leaq	gimp_preview_area_size_allocate(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	136(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-248(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data@PLT
	leaq	.L.str.17(%rip), %rsi
	leaq	gimp_preview_area_set_cursor(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$3, %r9d
	movq	-24(%rbp), %rdx
	movq	136(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-264(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data@PLT
	xorl	%edi, %edi
	movl	$6, %esi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_box_new@PLT
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%edx, %edx
	movl	$2, %r9d
	movl	$3, %r10d
	movl	$5, %r11d
	movl	$4, %r14d
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$5, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r14d, -292(%rbp)       # 4-byte Spill
	movl	%r11d, -296(%rbp)       # 4-byte Spill
	callq	gtk_table_attach@PLT
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.18(%rip), %rdi
	leaq	.L.str.19(%rip), %rsi
	callq	dgettext@PLT
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic@PLT
	movq	-24(%rbp), %rsi
	movq	%rax, 160(%rsi)
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type@PLT
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-24(%rbp), %rsi
	movl	128(%rsi), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active@PLT
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rsi
	movq	160(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start@PLT
	movq	-24(%rbp), %rax
	movq	160(%rax), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.20(%rip), %rsi
	leaq	gimp_preview_toggle_callback(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	160(%rdi), %rdi
	movq	-24(%rbp), %rbx
	movq	%rax, %rdx
	movq	%rbx, %rcx
	callq	g_signal_connect_data@PLT
	movq	%rax, -320(%rbp)        # 8-byte Spill
	addq	$336, %rsp              # imm = 0x150
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_preview_init, .Lfunc_end2-gimp_preview_init
	.cfi_endproc

	.globl	gimp_preview_set_update
	.align	16, 0x90
	.type	gimp_preview_set_update,@function
gimp_preview_set_update:                # @gimp_preview_set_update
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_preview_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_set_update(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	leaq	.L.str.3(%rip), %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set@PLT
.LBB3_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_preview_set_update, .Lfunc_end3-gimp_preview_set_update
	.cfi_endproc

	.globl	gimp_preview_get_update
	.align	16, 0x90
	.type	gimp_preview_get_update,@function
gimp_preview_get_update:                # @gimp_preview_get_update
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_preview_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_get_update(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-16(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB4_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_preview_get_update, .Lfunc_end4-gimp_preview_get_update
	.cfi_endproc

	.globl	gimp_preview_set_bounds
	.align	16, 0x90
	.type	gimp_preview_set_bounds,@function
gimp_preview_set_bounds:                # @gimp_preview_set_bounds
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_preview_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_set_bounds(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_23
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jle	.LBB5_15
# BB#14:                                # %if.then.13
	jmp	.LBB5_16
.LBB5_15:                               # %if.else.14
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_set_bounds(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_23
.LBB5_16:                               # %if.end.15
	jmp	.LBB5_17
.LBB5_17:                               # %do.end.16
	jmp	.LBB5_18
.LBB5_18:                               # %do.body.17
	movl	-24(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jle	.LBB5_20
# BB#19:                                # %if.then.19
	jmp	.LBB5_21
.LBB5_20:                               # %if.else.20
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_set_bounds(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_23
.LBB5_21:                               # %if.end.21
	jmp	.LBB5_22
.LBB5_22:                               # %do.end.22
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 192(%rcx)
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 200(%rcx)
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 196(%rcx)
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 204(%rcx)
	movq	-8(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_preview_area_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-20(%rbp), %edx
	subl	-12(%rbp), %edx
	movl	-24(%rbp), %r8d
	subl	-16(%rbp), %r8d
	movq	%rax, %rdi
	movl	%edx, %esi
	movl	%r8d, %edx
	callq	gimp_preview_area_set_max_size@PLT
.LBB5_23:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_preview_set_bounds, .Lfunc_end5-gimp_preview_set_bounds
	.cfi_endproc

	.globl	gimp_preview_get_size
	.align	16, 0x90
	.type	gimp_preview_get_size,@function
gimp_preview_get_size:                  # @gimp_preview_get_size
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_preview_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_get_size(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_16
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	cmpq	$0, -16(%rbp)
	je	.LBB6_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movl	208(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
.LBB6_14:                               # %if.end.14
	cmpq	$0, -24(%rbp)
	je	.LBB6_16
# BB#15:                                # %if.then.16
	movq	-8(%rbp), %rax
	movl	212(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
.LBB6_16:                               # %if.end.18
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_preview_get_size, .Lfunc_end6-gimp_preview_get_size
	.cfi_endproc

	.globl	gimp_preview_get_position
	.align	16, 0x90
	.type	gimp_preview_get_position,@function
gimp_preview_get_position:              # @gimp_preview_get_position
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_preview_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_get_position(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB7_16
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	cmpq	$0, -16(%rbp)
	je	.LBB7_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movl	184(%rax), %ecx
	movq	-8(%rbp), %rax
	addl	192(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
.LBB7_14:                               # %if.end.13
	cmpq	$0, -24(%rbp)
	je	.LBB7_16
# BB#15:                                # %if.then.15
	movq	-8(%rbp), %rax
	movl	188(%rax), %ecx
	movq	-8(%rbp), %rax
	addl	200(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
.LBB7_16:                               # %if.end.17
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_preview_get_position, .Lfunc_end7-gimp_preview_get_position
	.cfi_endproc

	.globl	gimp_preview_transform
	.align	16, 0x90
	.type	gimp_preview_transform,@function
gimp_preview_transform:                 # @gimp_preview_transform
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_preview_get_type@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -52(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_transform(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB8_19
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB8_16
# BB#14:                                # %land.lhs.true.13
	cmpq	$0, -32(%rbp)
	je	.LBB8_16
# BB#15:                                # %if.then.15
	jmp	.LBB8_17
.LBB8_16:                               # %if.else.16
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_transform(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB8_19
.LBB8_17:                               # %if.end.17
	jmp	.LBB8_18
.LBB8_18:                               # %do.end.18
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	864(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %r8
	callq	*%rax
.LBB8_19:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_preview_transform, .Lfunc_end8-gimp_preview_transform
	.cfi_endproc

	.globl	gimp_preview_untransform
	.align	16, 0x90
	.type	gimp_preview_untransform,@function
gimp_preview_untransform:               # @gimp_preview_untransform
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_preview_get_type@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -52(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_untransform(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB9_19
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB9_16
# BB#14:                                # %land.lhs.true.13
	cmpq	$0, -32(%rbp)
	je	.LBB9_16
# BB#15:                                # %if.then.15
	jmp	.LBB9_17
.LBB9_16:                               # %if.else.16
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_untransform(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB9_19
.LBB9_17:                               # %if.end.17
	jmp	.LBB9_18
.LBB9_18:                               # %do.end.18
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	872(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %r8
	callq	*%rax
.LBB9_19:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_preview_untransform, .Lfunc_end9-gimp_preview_untransform
	.cfi_endproc

	.globl	gimp_preview_get_area
	.align	16, 0x90
	.type	gimp_preview_get_area,@function
gimp_preview_get_area:                  # @gimp_preview_get_area
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_preview_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_get_area(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB10_13
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB10_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_preview_get_area, .Lfunc_end10-gimp_preview_get_area
	.cfi_endproc

	.globl	gimp_preview_draw
	.align	16, 0x90
	.type	gimp_preview_draw,@function
gimp_preview_draw:                      # @gimp_preview_draw
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	cmpq	$0, 824(%rdi)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	824(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB11_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_preview_draw, .Lfunc_end11-gimp_preview_draw
	.cfi_endproc

	.globl	gimp_preview_draw_buffer
	.align	16, 0x90
	.type	gimp_preview_draw_buffer,@function
gimp_preview_draw_buffer:               # @gimp_preview_draw_buffer
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rsi
	cmpq	$0, 840(%rsi)
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	840(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	*%rax
.LBB12_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_preview_draw_buffer, .Lfunc_end12-gimp_preview_draw_buffer
	.cfi_endproc

	.globl	gimp_preview_invalidate
	.align	16, 0x90
	.type	gimp_preview_invalidate,@function
gimp_preview_invalidate:                # @gimp_preview_invalidate
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_preview_get_type@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -28(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_invalidate(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB13_16
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	movq	-8(%rbp), %rax
	cmpl	$0, 128(%rax)
	je	.LBB13_16
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	cmpl	$0, 216(%rax)
	je	.LBB13_15
# BB#14:                                # %if.then.14
	movq	-8(%rbp), %rax
	movl	216(%rax), %edi
	callq	g_source_remove@PLT
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB13_15:                              # %if.end.17
	movl	$200, %eax
	leaq	gimp_preview_invalidate_now(%rip), %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movq	-8(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movl	%eax, %esi
	movq	%rcx, %rdx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	callq	g_timeout_add_full@PLT
	movq	-8(%rbp), %rcx
	movl	%eax, 216(%rcx)
.LBB13_16:                              # %if.end.20
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_preview_invalidate, .Lfunc_end13-gimp_preview_invalidate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_preview_invalidate_now,@function
gimp_preview_invalidate_now:            # @gimp_preview_invalidate_now
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_get_toplevel@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_preview_draw@PLT
	movq	-8(%rbp), %rax
	movl	$0, 216(%rax)
	cmpq	$0, -16(%rbp)
	je	.LBB14_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_realized@PLT
	cmpl	$0, %eax
	je	.LBB14_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_window@PLT
	movq	-8(%rbp), %rdi
	movq	168(%rdi), %rsi
	movq	%rax, %rdi
	callq	gdk_window_set_cursor@PLT
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdi
	callq	gtk_widget_get_window@PLT
	movq	-8(%rbp), %rsi
	movq	168(%rsi), %rsi
	movq	%rax, %rdi
	callq	gdk_window_set_cursor@PLT
	callq	gdk_flush@PLT
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	preview_signals(%rip), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit@PLT
	movq	-24(%rbp), %rdi
	movq	848(%rdi), %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-40(%rbp), %rcx         # 8-byte Reload
	callq	*%rcx
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_window@PLT
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	callq	gdk_window_set_cursor@PLT
	jmp	.LBB14_4
.LBB14_3:                               # %if.else
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	preview_signals(%rip), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit@PLT
.LBB14_4:                               # %if.end
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_preview_invalidate_now, .Lfunc_end14-gimp_preview_invalidate_now
	.cfi_endproc

	.globl	gimp_preview_set_default_cursor
	.align	16, 0x90
	.type	gimp_preview_set_default_cursor,@function
gimp_preview_set_default_cursor:        # @gimp_preview_set_default_cursor
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_preview_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_set_default_cursor(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB15_17
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 176(%rax)
	je	.LBB15_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movq	176(%rax), %rdi
	callq	gdk_cursor_unref@PLT
.LBB15_14:                              # %if.end.14
	cmpq	$0, -16(%rbp)
	je	.LBB15_16
# BB#15:                                # %if.then.16
	movq	-16(%rbp), %rdi
	callq	gdk_cursor_ref@PLT
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB15_16:                              # %if.end.18
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 176(%rcx)
.LBB15_17:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_preview_set_default_cursor, .Lfunc_end15-gimp_preview_set_default_cursor
	.cfi_endproc

	.globl	gimp_preview_get_controls
	.align	16, 0x90
	.type	gimp_preview_get_controls,@function
gimp_preview_get_controls:              # @gimp_preview_get_controls
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_preview_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_get_controls(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB16_13
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB16_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_preview_get_controls, .Lfunc_end16-gimp_preview_get_controls
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_preview_dispose,@function
gimp_preview_dispose:                   # @gimp_preview_dispose
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 216(%rax)
	je	.LBB17_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	216(%rax), %edi
	callq	g_source_remove@PLT
	movq	-16(%rbp), %rcx
	movl	$0, 216(%rcx)
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB17_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_preview_dispose, .Lfunc_end17-gimp_preview_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_preview_get_property,@function
gimp_preview_get_property:              # @gimp_preview_get_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB18_2
	jmp	.LBB18_1
.LBB18_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	128(%rax), %esi
	callq	g_value_set_boolean@PLT
	jmp	.LBB18_5
.LBB18_2:                               # %sw.default
	jmp	.LBB18_3
.LBB18_3:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	8(%rax), %r9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -80(%rbp)         # 4-byte Spill
	movq	%r9, -88(%rbp)          # 8-byte Spill
	callq	g_type_name@PLT
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.9(%rip), %rdi
	leaq	.L.str.10(%rip), %rsi
	movl	$330, %edx              # imm = 0x14A
	leaq	.L.str.11(%rip), %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB18_5
.LBB18_5:                               # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_preview_get_property, .Lfunc_end18-gimp_preview_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_preview_set_property,@function
gimp_preview_set_property:              # @gimp_preview_set_property
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB19_2
	jmp	.LBB19_1
.LBB19_1:                               # %sw.bb
	movq	-40(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-24(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_value_get_boolean@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	gtk_toggle_button_set_active@PLT
	jmp	.LBB19_5
.LBB19_2:                               # %sw.default
	jmp	.LBB19_3
.LBB19_3:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	8(%rax), %r9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	movq	%r9, -112(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.9(%rip), %rdi
	leaq	.L.str.10(%rip), %rsi
	movl	$351, %edx              # imm = 0x15F
	leaq	.L.str.11(%rip), %rcx
	movl	-100(%rbp), %r8d        # 4-byte Reload
	movq	-112(%rbp), %r9         # 8-byte Reload
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB19_5
.LBB19_5:                               # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_preview_set_property, .Lfunc_end19-gimp_preview_set_property
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_0:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI20_1:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	gimp_preview_direction_changed,@function
gimp_preview_direction_changed:         # @gimp_preview_direction_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorps	%xmm0, %xmm0
	movq	%rax, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_direction@PLT
	cmpl	$2, %eax
	jne	.LBB20_2
# BB#1:                                 # %if.then
	movsd	.LCPI20_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
.LBB20_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_aspect_frame_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorps	%xmm1, %xmm1
	movss	.LCPI20_1(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	movl	$1, %esi
	cvtsd2ss	-32(%rbp), %xmm0
	movq	%rax, %rdi
	callq	gtk_aspect_frame_set@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_preview_direction_changed, .Lfunc_end20-gimp_preview_direction_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_preview_popup_menu,@function
gimp_preview_popup_menu:                # @gimp_preview_popup_menu
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_preview_area_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gimp_preview_area_menu_popup@PLT
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_preview_popup_menu, .Lfunc_end21-gimp_preview_popup_menu
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_preview_real_set_cursor,@function
gimp_preview_real_set_cursor:           # @gimp_preview_real_set_cursor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	136(%rdi), %rdi
	callq	gtk_widget_get_realized@PLT
	cmpl	$0, %eax
	je	.LBB22_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdi
	callq	gtk_widget_get_window@PLT
	movq	-8(%rbp), %rdi
	movq	176(%rdi), %rsi
	movq	%rax, %rdi
	callq	gdk_window_set_cursor@PLT
.LBB22_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_preview_real_set_cursor, .Lfunc_end22-gimp_preview_real_set_cursor
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_preview_real_transform,@function
gimp_preview_real_transform:            # @gimp_preview_real_transform
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rcx
	subl	184(%rcx), %edx
	movq	-8(%rbp), %rcx
	subl	192(%rcx), %edx
	movq	-24(%rbp), %rcx
	movl	%edx, (%rcx)
	movl	-16(%rbp), %edx
	movq	-8(%rbp), %rcx
	subl	188(%rcx), %edx
	movq	-8(%rbp), %rcx
	subl	200(%rcx), %edx
	movq	-32(%rbp), %rcx
	movl	%edx, (%rcx)
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_preview_real_transform, .Lfunc_end23-gimp_preview_real_transform
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_preview_real_untransform,@function
gimp_preview_real_untransform:          # @gimp_preview_real_untransform
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rcx
	addl	184(%rcx), %edx
	movq	-8(%rbp), %rcx
	addl	192(%rcx), %edx
	movq	-24(%rbp), %rcx
	movl	%edx, (%rcx)
	movl	-16(%rbp), %edx
	movq	-8(%rbp), %rcx
	addl	188(%rcx), %edx
	movq	-8(%rbp), %rcx
	addl	200(%rcx), %edx
	movq	-32(%rbp), %rcx
	movl	%edx, (%rcx)
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_preview_real_untransform, .Lfunc_end24-gimp_preview_real_untransform
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
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
	je	.LBB25_2
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
.LBB25_2:                               # %entry
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
	leaq	.L.str.1(%rip), %rdi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end25:
	.size	g_warning, .Lfunc_end25-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_preview_notify_checks,@function
gimp_preview_notify_checks:             # @gimp_preview_notify_checks
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_preview_draw@PLT
	movq	-8(%rbp), %rdi
	callq	gimp_preview_invalidate@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_preview_notify_checks, .Lfunc_end26-gimp_preview_notify_checks
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_preview_area_event,@function
gimp_preview_area_event:                # @gimp_preview_area_event
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rdx
	movl	(%rdx), %eax
	subl	$4, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jne	.LBB27_4
	jmp	.LBB27_1
.LBB27_1:                               # %sw.bb
	movq	-40(%rbp), %rax
	movl	52(%rax), %ecx
	subl	$3, %ecx
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	jne	.LBB27_3
	jmp	.LBB27_2
.LBB27_2:                               # %sw.bb.1
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_preview_area_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_preview_area_menu_popup@PLT
	movl	$1, -4(%rbp)
	jmp	.LBB27_6
.LBB27_3:                               # %sw.epilog
	jmp	.LBB27_5
.LBB27_4:                               # %sw.default
	jmp	.LBB27_5
.LBB27_5:                               # %sw.epilog.3
	movl	$0, -4(%rbp)
.LBB27_6:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_preview_area_event, .Lfunc_end27-gimp_preview_area_event
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_preview_area_realize,@function
gimp_preview_area_realize:              # @gimp_preview_area_realize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_display@PLT
	movq	%rax, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	cmpq	$0, 168(%rax)
	jne	.LBB28_3
# BB#2:                                 # %if.then
	jmp	.LBB28_4
.LBB28_3:                               # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_area_realize(%rip), %rsi
	leaq	.L.str.21(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB28_6
.LBB28_4:                               # %if.end
	jmp	.LBB28_5
.LBB28_5:                               # %do.end
	movl	$150, %esi
	movq	-24(%rbp), %rdi
	callq	gdk_cursor_new_for_display@PLT
	movq	-16(%rbp), %rdi
	movq	%rax, 168(%rdi)
.LBB28_6:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_preview_area_realize, .Lfunc_end28-gimp_preview_area_realize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_preview_area_unrealize,@function
gimp_preview_area_unrealize:            # @gimp_preview_area_unrealize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp95:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, 168(%rsi)
	je	.LBB29_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	168(%rax), %rdi
	callq	gdk_cursor_unref@PLT
	movq	-16(%rbp), %rax
	movq	$0, 168(%rax)
.LBB29_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_preview_area_unrealize, .Lfunc_end29-gimp_preview_area_unrealize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_preview_area_set_cursor,@function
gimp_preview_area_set_cursor:           # @gimp_preview_area_set_cursor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	848(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-16(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_preview_area_set_cursor, .Lfunc_end30-gimp_preview_area_set_cursor
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_preview_area_size_allocate,@function
gimp_preview_area_size_allocate:        # @gimp_preview_area_size_allocate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp101:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movl	196(%rdx), %eax
	movq	-24(%rbp), %rdx
	subl	192(%rdx), %eax
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rdx
	movl	204(%rdx), %eax
	movq	-24(%rbp), %rdx
	subl	200(%rdx), %eax
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rdx
	cmpl	8(%rdx), %eax
	jge	.LBB31_2
# BB#1:                                 # %cond.true
	movl	-28(%rbp), %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB31_3
.LBB31_2:                               # %cond.false
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
.LBB31_3:                               # %cond.end
	movl	-36(%rbp), %eax         # 4-byte Reload
	movq	-24(%rbp), %rcx
	movl	%eax, 208(%rcx)
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB31_5
# BB#4:                                 # %cond.true.7
	movl	-32(%rbp), %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB31_6
.LBB31_5:                               # %cond.false.8
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -40(%rbp)         # 4-byte Spill
.LBB31_6:                               # %cond.end.10
	movl	-40(%rbp), %eax         # 4-byte Reload
	movq	-24(%rbp), %rcx
	movl	%eax, 212(%rcx)
	movq	-24(%rbp), %rdi
	callq	gimp_preview_draw@PLT
	movq	-24(%rbp), %rdi
	callq	gimp_preview_invalidate@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_preview_area_size_allocate, .Lfunc_end31-gimp_preview_area_size_allocate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_preview_toggle_callback,@function
gimp_preview_toggle_callback:           # @gimp_preview_toggle_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp104:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active@PLT
	cmpl	$0, %eax
	je	.LBB32_4
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movl	$1, 128(%rcx)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.3(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_notify@PLT
	movq	-16(%rbp), %rax
	cmpl	$0, 216(%rax)
	je	.LBB32_3
# BB#2:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movl	216(%rax), %edi
	callq	g_source_remove@PLT
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB32_3:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	gimp_preview_invalidate_now
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jmp	.LBB32_5
.LBB32_4:                               # %if.else
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movl	$0, 128(%rcx)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.3(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_notify@PLT
	movq	-16(%rbp), %rdi
	callq	gimp_preview_draw@PLT
.LBB32_5:                               # %if.end.11
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_preview_toggle_callback, .Lfunc_end32-gimp_preview_toggle_callback
	.cfi_endproc

	.type	gimp_preview_get_type.preview_type,@object # @gimp_preview_get_type.preview_type
	.local	gimp_preview_get_type.preview_type
	.comm	gimp_preview_get_type.preview_type,8,8
	.type	gimp_preview_get_type.preview_info,@object # @gimp_preview_get_type.preview_info
	.section	.data.rel.ro.local,"aw",@progbits
	.align	8
gimp_preview_get_type.preview_info:
	.short	896                     # 0x380
	.zero	6
	.quad	0
	.quad	0
	.quad	gimp_preview_class_init
	.quad	0
	.quad	0
	.short	224                     # 0xe0
	.short	0                       # 0x0
	.zero	4
	.quad	gimp_preview_init
	.quad	0
	.size	gimp_preview_get_type.preview_info, 72

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpPreview"
	.size	.L.str, 12

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"LibGimpWidgets"
	.size	.L.str.1, 15

	.type	.L__func__.gimp_preview_set_update,@object # @__func__.gimp_preview_set_update
.L__func__.gimp_preview_set_update:
	.asciz	"gimp_preview_set_update"
	.size	.L__func__.gimp_preview_set_update, 24

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_PREVIEW (preview)"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"update"
	.size	.L.str.3, 7

	.type	.L__func__.gimp_preview_get_update,@object # @__func__.gimp_preview_get_update
.L__func__.gimp_preview_get_update:
	.asciz	"gimp_preview_get_update"
	.size	.L__func__.gimp_preview_get_update, 24

	.type	.L__func__.gimp_preview_set_bounds,@object # @__func__.gimp_preview_set_bounds
.L__func__.gimp_preview_set_bounds:
	.asciz	"gimp_preview_set_bounds"
	.size	.L__func__.gimp_preview_set_bounds, 24

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"xmax > xmin"
	.size	.L.str.4, 12

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"ymax > ymin"
	.size	.L.str.5, 12

	.type	.L__func__.gimp_preview_get_size,@object # @__func__.gimp_preview_get_size
.L__func__.gimp_preview_get_size:
	.asciz	"gimp_preview_get_size"
	.size	.L__func__.gimp_preview_get_size, 22

	.type	.L__func__.gimp_preview_get_position,@object # @__func__.gimp_preview_get_position
.L__func__.gimp_preview_get_position:
	.asciz	"gimp_preview_get_position"
	.size	.L__func__.gimp_preview_get_position, 26

	.type	.L__func__.gimp_preview_transform,@object # @__func__.gimp_preview_transform
.L__func__.gimp_preview_transform:
	.asciz	"gimp_preview_transform"
	.size	.L__func__.gimp_preview_transform, 23

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"dest_x != NULL && dest_y != NULL"
	.size	.L.str.6, 33

	.type	.L__func__.gimp_preview_untransform,@object # @__func__.gimp_preview_untransform
.L__func__.gimp_preview_untransform:
	.asciz	"gimp_preview_untransform"
	.size	.L__func__.gimp_preview_untransform, 25

	.type	.L__func__.gimp_preview_get_area,@object # @__func__.gimp_preview_get_area
.L__func__.gimp_preview_get_area:
	.asciz	"gimp_preview_get_area"
	.size	.L__func__.gimp_preview_get_area, 22

	.type	.L__func__.gimp_preview_invalidate,@object # @__func__.gimp_preview_invalidate
.L__func__.gimp_preview_invalidate:
	.asciz	"gimp_preview_invalidate"
	.size	.L__func__.gimp_preview_invalidate, 24

	.type	.L__func__.gimp_preview_set_default_cursor,@object # @__func__.gimp_preview_set_default_cursor
.L__func__.gimp_preview_set_default_cursor:
	.asciz	"gimp_preview_set_default_cursor"
	.size	.L__func__.gimp_preview_set_default_cursor, 32

	.type	.L__func__.gimp_preview_get_controls,@object # @__func__.gimp_preview_get_controls
.L__func__.gimp_preview_get_controls:
	.asciz	"gimp_preview_get_controls"
	.size	.L__func__.gimp_preview_get_controls, 26

	.type	parent_class,@object    # @parent_class
	.local	parent_class
	.comm	parent_class,8,8
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"invalidated"
	.size	.L.str.7, 12

	.type	preview_signals,@object # @preview_signals
	.local	preview_signals
	.comm	preview_signals,4,4
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"size"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.9, 54

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimppreview.c"
	.size	.L.str.10, 14

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"property"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"notify::check-size"
	.size	.L.str.12, 19

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"notify::check-type"
	.size	.L.str.13, 19

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"event"
	.size	.L.str.14, 6

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"realize"
	.size	.L.str.15, 8

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"unrealize"
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"size-allocate"
	.size	.L.str.17, 14

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp20-libgimp"
	.size	.L.str.18, 15

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"_Preview"
	.size	.L.str.19, 9

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"toggled"
	.size	.L.str.20, 8

	.type	.L__func__.gimp_preview_area_realize,@object # @__func__.gimp_preview_area_realize
.L__func__.gimp_preview_area_realize:
	.asciz	"gimp_preview_area_realize"
	.size	.L__func__.gimp_preview_area_realize, 26

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"preview->cursor_busy == NULL"
	.size	.L.str.21, 29


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
