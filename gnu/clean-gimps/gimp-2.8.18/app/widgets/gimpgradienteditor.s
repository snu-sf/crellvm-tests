	.text
	.file	"gimpgradienteditor.bc"
	.globl	gimp_gradient_editor_get_type
	.align	16, 0x90
	.type	gimp_gradient_editor_get_type,@function
gimp_gradient_editor_get_type:          # @gimp_gradient_editor_get_type
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_gradient_editor_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_gradient_editor_get_type.g_define_type_id__volatile, %rax
	movq	%rax, %rdi
	callq	g_once_init_enter
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB0_2:                                # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB0_4
# BB#3:                                 # %if.then
	callq	gimp_data_editor_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$840, %edx              # imm = 0x348
	movabsq	$gimp_gradient_editor_class_intern_init, %rdi
	movl	$712, %r8d              # imm = 0x2C8
	movabsq	$gimp_gradient_editor_init, %rcx
	xorl	%esi, %esi
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movl	$0, (%rsp)
	callq	g_type_register_static_simple
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_docked_interface_get_type
	movabsq	$gimp_gradient_editor_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_gradient_editor_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_gradient_editor_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_gradient_editor_get_type, .Lfunc_end0-gimp_gradient_editor_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gradient_editor_class_intern_init,@function
gimp_gradient_editor_class_intern_init: # @gimp_gradient_editor_class_intern_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_class_peek_parent
	movq	%rax, gimp_gradient_editor_parent_class
	cmpl	$0, GimpGradientEditor_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpGradientEditor_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_gradient_editor_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_gradient_editor_class_intern_init, .Lfunc_end1-gimp_gradient_editor_class_intern_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
.LCPI2_1:
	.quad	4602678819172646912     # double 0.5
.LCPI2_2:
	.quad	4587366580439587226     # double 0.050000000000000003
.LCPI2_3:
	.quad	4604930618986332160     # double 0.75
	.text
	.align	16, 0x90
	.type	gimp_gradient_editor_init,@function
gimp_gradient_editor_init:              # @gimp_gradient_editor_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$528, %rsp              # imm = 0x210
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-80(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movq	%rax, -16(%rbp)
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-96(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_rgba_set
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_frame_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	xorl	%esi, %esi
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rax
	movl	$0, 288(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 292(%rax)
	callq	gimp_view_get_type
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_gradient_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	$96, %ecx
	xorl	%r9d, %r9d
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	movl	-132(%rbp), %r8d        # 4-byte Reload
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	callq	gimp_view_new_full_by_types
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	$96, %edx
	movq	-16(%rbp), %rdi
	movq	%rax, 184(%rdi)
	movq	-16(%rbp), %rax
	movq	184(%rax), %rdi
	callq	gtk_widget_set_size_request
	movl	$8974, %esi             # imm = 0x230E
	movq	-16(%rbp), %rax
	movq	184(%rax), %rdi
	callq	gtk_widget_set_events
	movq	-16(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_view_set_expand
	movq	-32(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rsi
	movq	184(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rax
	movq	184(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.18, %rsi
	movabsq	$view_events, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	184(%rdi), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-16(%rbp), %rcx
	movq	184(%rcx), %rcx
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_gradient_get_type
	movabsq	$gradient_editor_drop_gradient, %rdx
	movq	-8(%rbp), %rcx
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dnd_viewable_dest_add
	movq	-16(%rbp), %rcx
	movq	184(%rcx), %rcx
	movl	%eax, -180(%rbp)        # 4-byte Spill
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gradient_editor_drop_color, %rsi
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	gimp_dnd_color_dest_add
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movq	$0, 296(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 304(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 312(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 320(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 324(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 328(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 332(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 336(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 344(%rax)
	callq	gtk_drawing_area_new
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	$14, %edx
	movq	-8(%rbp), %rcx
	movq	%rax, 256(%rcx)
	movq	-8(%rbp), %rax
	movq	256(%rax), %rdi
	callq	gtk_widget_set_size_request
	movl	$9006, %esi             # imm = 0x232E
	movq	-8(%rbp), %rax
	movq	256(%rax), %rdi
	callq	gtk_widget_set_events
	movq	-32(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-8(%rbp), %rcx
	movq	256(%rcx), %rsi
	movq	%rax, %rdi
	movl	%edx, -204(%rbp)        # 4-byte Spill
	movl	-204(%rbp), %ecx        # 4-byte Reload
	movl	-204(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	256(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.18, %rsi
	movabsq	$control_events, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	256(%rdi), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.19, %rsi
	movabsq	$control_expose, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	256(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-216(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-8(%rbp), %rcx
	movq	256(%rcx), %rcx
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gradient_editor_control_drop_color, %rsi
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	gimp_dnd_color_dest_add
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI2_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI2_3, %xmm4         # xmm4 = mem[0],zero
	movq	-8(%rbp), %rax
	movl	$1, 264(%rax)
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	movsd	-248(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm1, -256(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm1
	movsd	-256(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-256(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	callq	gtk_adjustment_new
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.20, %rsi
	movabsq	$gradient_editor_scrollbar_update, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	%rax, 272(%rdx)
	movq	-8(%rbp), %rax
	movq	272(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -272(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-272(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.21, %rsi
	movabsq	$gradient_editor_scrollbar_update, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	272(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-280(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movq	-8(%rbp), %rcx
	movq	272(%rcx), %rsi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_scrollbar_new
	movq	-8(%rbp), %rcx
	movq	%rax, 248(%rcx)
	movq	-8(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rcx
	movq	248(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	248(%rax), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$2, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -316(%rbp)        # 4-byte Spill
	movl	-316(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_frame_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-40(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -340(%rbp)        # 4-byte Spill
	movl	-340(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-80(%rbp), %rdi
	movl	$1, %esi
	movl	$768, %edx              # imm = 0x300
	callq	gimp_color_area_new
	movq	-8(%rbp), %rdi
	movq	%rax, 208(%rdi)
	movq	-24(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	208(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movl	$16, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-8(%rbp), %rax
	movq	208(%rax), %rdi
	callq	gtk_widget_set_size_request
	movq	-8(%rbp), %rax
	movq	208(%rax), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	xorl	%esi, %esi
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-48(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gradient_hint_label_add
	movq	-8(%rbp), %rsi
	movq	%rax, 216(%rsi)
	movq	-48(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gradient_hint_label_add
	movq	-8(%rbp), %rsi
	movq	%rax, 224(%rsi)
	movq	-48(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gradient_hint_label_add
	movq	-8(%rbp), %rsi
	movq	%rax, 232(%rsi)
	movq	-48(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gradient_hint_label_add
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_0, %xmm3         # xmm3 = mem[0],zero
	movq	-8(%rbp), %rsi
	movq	%rax, 240(%rsi)
	movq	-8(%rbp), %rax
	movq	$0, 680(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 688(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 696(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 704(%rax)
	movq	-8(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	movq	%rax, %rdi
	movsd	%xmm0, -400(%rbp)       # 8-byte Spill
	movsd	-400(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-400(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgba_set
	movsd	.LCPI2_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_0, %xmm3         # xmm3 = mem[0],zero
	movq	-8(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$32, %rax
	movq	%rax, %rdi
	movsd	%xmm0, -408(%rbp)       # 8-byte Spill
	movsd	-408(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-408(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgba_set
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$64, %rax
	movq	%rax, %rdi
	movsd	%xmm0, -416(%rbp)       # 8-byte Spill
	movsd	-416(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-416(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-416(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_rgba_set
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$96, %rax
	movq	%rax, %rdi
	movsd	%xmm0, -424(%rbp)       # 8-byte Spill
	movsd	-424(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-424(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-424(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_rgba_set
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	-8(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$128, %rax
	movq	%rax, %rdi
	movsd	%xmm0, -432(%rbp)       # 8-byte Spill
	movsd	%xmm1, -440(%rbp)       # 8-byte Spill
	movsd	-440(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-432(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_rgba_set
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm2, %xmm2
	movq	-8(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$160, %rax
	movq	%rax, %rdi
	movsd	%xmm0, -448(%rbp)       # 8-byte Spill
	movsd	-448(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-448(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_rgba_set
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$192, %rax
	movq	%rax, %rdi
	movsd	%xmm0, -456(%rbp)       # 8-byte Spill
	movsd	%xmm1, -464(%rbp)       # 8-byte Spill
	movsd	-456(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-464(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_rgba_set
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$224, %rax
	movq	%rax, %rdi
	movsd	%xmm1, -472(%rbp)       # 8-byte Spill
	movsd	-472(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-472(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_rgba_set
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$256, %rax              # imm = 0x100
	movq	%rax, %rdi
	movsd	%xmm0, -480(%rbp)       # 8-byte Spill
	movsd	-480(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm1, -488(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm1
	movsd	-488(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-488(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_rgba_set
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	-8(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$288, %rax              # imm = 0x120
	movq	%rax, %rdi
	movsd	%xmm0, -496(%rbp)       # 8-byte Spill
	movsd	-496(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-496(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_rgba_set
	addq	$528, %rsp              # imm = 0x210
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_gradient_editor_init, .Lfunc_end2-gimp_gradient_editor_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gradient_editor_docked_iface_init,@function
gimp_gradient_editor_docked_iface_init: # @gimp_gradient_editor_docked_iface_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_interface_peek_parent
	movq	%rax, parent_docked_iface
	cmpq	$0, parent_docked_iface
	jne	.LBB3_2
# BB#1:                                 # %if.then
	callq	gimp_docked_interface_get_type
	movq	%rax, %rdi
	callq	g_type_default_interface_peek
	movq	%rax, parent_docked_iface
.LBB3_2:                                # %if.end
	movabsq	$gimp_gradient_editor_set_context, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 72(%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_gradient_editor_docked_iface_init, .Lfunc_end3-gimp_gradient_editor_docked_iface_init
	.cfi_endproc

	.globl	gimp_gradient_editor_new
	.align	16, 0x90
	.type	gimp_gradient_editor_new,@function
gimp_gradient_editor_new:               # @gimp_gradient_editor_new
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$168, %rsp
.Ltmp15:
	.cfi_offset %rbx, -56
.Ltmp16:
	.cfi_offset %r12, -48
.Ltmp17:
	.cfi_offset %r13, -40
.Ltmp18:
	.cfi_offset %r14, -32
.Ltmp19:
	.cfi_offset %r15, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
# BB#1:                                 # %do.body
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_editor_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	callq	gimp_gradient_editor_get_type
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	488(%rcx), %rcx
	movq	-56(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gimp_context_get_gradient
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.4, %rcx
	movabsq	$.L.str.5, %r8
	movabsq	$.L.str.6, %r9
	movabsq	$.L.str.7, %rdx
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %r10
	movabsq	$.L.str.10, %r11
	xorl	%ebx, %ebx
	movl	%ebx, %r14d
	movq	-96(%rbp), %r15         # 8-byte Reload
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%r15, %rdi
	movq	-104(%rbp), %r12        # 8-byte Reload
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%r12, %rdx
	movq	-136(%rbp), %r13        # 8-byte Reload
	movq	%r13, (%rsp)
	movq	-128(%rbp), %r15        # 8-byte Reload
	movq	%r15, 8(%rsp)
	movq	-112(%rbp), %r15        # 8-byte Reload
	movq	%r15, 16(%rsp)
	movq	%r10, 24(%rsp)
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r10, 32(%rsp)
	movq	%r11, 40(%rsp)
	movq	%rax, 48(%rsp)
	movq	$0, 56(%rsp)
	movb	$0, %al
	movq	%r14, -144(%rbp)        # 8-byte Spill
	callq	g_object_new
	movq	%rax, -48(%rbp)
.LBB4_13:                               # %return
	movq	-48(%rbp), %rax
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_gradient_editor_new, .Lfunc_end4-gimp_gradient_editor_new
	.cfi_endproc

	.globl	gimp_gradient_editor_update
	.align	16, 0x90
	.type	gimp_gradient_editor_update,@function
gimp_gradient_editor_update:            # @gimp_gradient_editor_update
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_gradient_editor_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_editor_update, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_15
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpq	$0, 160(%rax)
	je	.LBB5_14
# BB#13:                                # %if.then.14
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	160(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
.LBB5_14:                               # %if.end.20
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	control_update
.LBB5_15:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_gradient_editor_update, .Lfunc_end5-gimp_gradient_editor_update
	.cfi_endproc

	.align	16, 0x90
	.type	control_update,@function
control_update:                         # @control_update
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	cmpq	$0, 304(%rsi)
	je	.LBB6_2
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	cmpq	$0, 312(%rax)
	jne	.LBB6_3
.LBB6_2:                                # %if.then
	movl	$1, -20(%rbp)
.LBB6_3:                                # %if.end
	cmpl	$0, -20(%rbp)
	je	.LBB6_8
# BB#4:                                 # %if.then.3
	cmpq	$0, -16(%rbp)
	je	.LBB6_6
# BB#5:                                 # %if.then.5
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rsi
	callq	control_select_single_segment
	jmp	.LBB6_7
.LBB6_6:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	control_select_single_segment
.LBB6_7:                                # %if.end.6
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.7
	movq	-8(%rbp), %rax
	movq	256(%rax), %rdi
	callq	gtk_widget_queue_draw
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	control_update, .Lfunc_end6-control_update
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4607182418800017408     # double 1
.LCPI7_1:
	.quad	4611686018427387904     # double 2
.LCPI7_2:
	.quad	4604930618986332160     # double 0.75
.LCPI7_3:
	.quad	4587366580439587226     # double 0.050000000000000003
	.text
	.globl	gimp_gradient_editor_zoom
	.align	16, 0x90
	.type	gimp_gradient_editor_zoom,@function
gimp_gradient_editor_zoom:              # @gimp_gradient_editor_zoom
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
	subq	$160, %rsp
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movsd	%xmm1, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_gradient_editor_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_editor_zoom, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_24
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_adjustment_get_page_size
	movsd	%xmm0, -40(%rbp)
	movl	-12(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	je	.LBB7_13
	jmp	.LBB7_25
.LBB7_25:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB7_14
	jmp	.LBB7_26
.LBB7_26:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB7_13
	jmp	.LBB7_27
.LBB7_27:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB7_14
	jmp	.LBB7_28
.LBB7_28:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB7_13
	jmp	.LBB7_29
.LBB7_29:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	addl	$-5, %eax
	subl	$2, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jb	.LBB7_22
	jmp	.LBB7_23
.LBB7_13:                               # %sw.bb
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_0, %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movl	264(%rax), %ecx
	incl	%ecx
	movl	%ecx, 264(%rax)
	movq	-8(%rbp), %rax
	movl	264(%rax), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm2
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -56(%rbp)
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-56(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -48(%rbp)
	jmp	.LBB7_23
.LBB7_14:                               # %sw.bb.15
	movq	-8(%rbp), %rax
	cmpl	$1, 264(%rax)
	ja	.LBB7_16
# BB#15:                                # %if.then.19
	jmp	.LBB7_24
.LBB7_16:                               # %if.end.20
	xorps	%xmm0, %xmm0
	movsd	.LCPI7_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI7_0, %xmm2         # xmm2 = mem[0],zero
	movq	-8(%rbp), %rax
	movl	264(%rax), %ecx
	decl	%ecx
	movl	%ecx, 264(%rax)
	movq	-8(%rbp), %rax
	movl	264(%rax), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm3
	divsd	%xmm3, %xmm2
	movsd	%xmm2, -56(%rbp)
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-56(%rbp), %xmm3        # xmm3 = mem[0],zero
	subsd	-40(%rbp), %xmm3
	divsd	%xmm1, %xmm3
	subsd	%xmm3, %xmm2
	movsd	%xmm2, -48(%rbp)
	ucomisd	-48(%rbp), %xmm0
	jbe	.LBB7_18
# BB#17:                                # %if.then.30
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB7_21
.LBB7_18:                               # %if.else.31
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-56(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_20
# BB#19:                                # %if.then.35
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	subsd	-56(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
.LBB7_20:                               # %if.end.37
	jmp	.LBB7_21
.LBB7_21:                               # %if.end.38
	jmp	.LBB7_23
.LBB7_22:                               # %sw.bb.39
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	-8(%rbp), %rax
	movl	$1, 264(%rax)
	movsd	%xmm1, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
.LBB7_23:                               # %sw.epilog
	movq	-24(%rbp), %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_lower
	movq	-24(%rbp), %rdi
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_upper
	movsd	.LCPI7_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI7_3, %xmm2         # xmm2 = mem[0],zero
	mulsd	-56(%rbp), %xmm2
	mulsd	-56(%rbp), %xmm1
	movsd	-56(%rbp), %xmm5        # xmm5 = mem[0],zero
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movsd	-120(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-128(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm1, -144(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm1
	movsd	-136(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movsd	%xmm2, -152(%rbp)       # 8-byte Spill
	movaps	%xmm6, %xmm2
	movsd	-152(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-144(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	callq	gtk_adjustment_configure
.LBB7_24:                               # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_gradient_editor_zoom, .Lfunc_end7-gimp_gradient_editor_zoom
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gradient_editor_class_init,@function
gimp_gradient_editor_class_init:        # @gimp_gradient_editor_class_init
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
	subq	$48, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.12, %rdi
	movabsq	$gimp_gradient_editor_set_data, %rsi
	movabsq	$gimp_gradient_editor_unmap, %rcx
	movabsq	$gimp_gradient_editor_dispose, %rdx
	movabsq	$gimp_gradient_editor_constructed, %r8
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%r8, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-24(%rbp), %rax
	movq	%rcx, 216(%rax)
	movq	-32(%rbp), %rax
	movq	%rsi, 824(%rax)
	callq	gettext
	movq	-32(%rbp), %rcx
	movq	%rax, 832(%rcx)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_gradient_editor_class_init, .Lfunc_end8-gimp_gradient_editor_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gradient_editor_constructed,@function
gimp_gradient_editor_constructed:       # @gimp_gradient_editor_constructed
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_gradient_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_gradient_editor_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_gradient_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB9_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.13, %rsi
	movabsq	$.L.str.14, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-16(%rbp), %rcx
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.13, %rsi
	movabsq	$.L.str.15, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-16(%rbp), %rcx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.13, %rsi
	movabsq	$.L.str.16, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	%rax, -72(%rbp)         # 8-byte Spill
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_gradient_editor_constructed, .Lfunc_end9-gimp_gradient_editor_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gradient_editor_dispose,@function
gimp_gradient_editor_dispose:           # @gimp_gradient_editor_dispose
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_gradient_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 280(%rax)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967290, %esi       # imm = 0xFFFFFFFA
	movq	%rax, %rdi
	callq	gtk_dialog_response
.LBB10_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_gradient_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_gradient_editor_dispose, .Lfunc_end10-gimp_gradient_editor_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gradient_editor_unmap,@function
gimp_gradient_editor_unmap:             # @gimp_gradient_editor_unmap
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_gradient_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 280(%rax)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967290, %esi       # imm = 0xFFFFFFFA
	movq	%rax, %rdi
	callq	gtk_dialog_response
.LBB11_2:                               # %if.end
	movq	gimp_gradient_editor_parent_class, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	216(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_gradient_editor_unmap, .Lfunc_end11-gimp_gradient_editor_unmap
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gradient_editor_set_data,@function
gimp_gradient_editor_set_data:          # @gimp_gradient_editor_set_data
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_gradient_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 280(%rax)
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967290, %esi       # imm = 0xFFFFFFFA
	movq	%rax, %rdi
	callq	gtk_dialog_response
.LBB12_2:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	gimp_data_editor_get_data
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB12_4
# BB#3:                                 # %if.then.7
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_gradient_editor_gradient_dirty, %rdx
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB12_4:                               # %if.end.9
	movq	gimp_gradient_editor_parent_class, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	824(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	cmpq	$0, -16(%rbp)
	je	.LBB12_6
# BB#5:                                 # %if.then.13
	movabsq	$.L.str.17, %rsi
	movabsq	$gimp_gradient_editor_gradient_dirty, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB12_6:                               # %if.end.15
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_view_set_viewable
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	control_update
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_gradient_editor_set_data, .Lfunc_end12-gimp_gradient_editor_set_data
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gradient_editor_gradient_dirty,@function
gimp_gradient_editor_gradient_dirty:    # @gimp_gradient_editor_gradient_dirty
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rsi, -24(%rbp)
.LBB13_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB13_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	304(%rcx), %rax
	jne	.LBB13_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	$1, -28(%rbp)
.LBB13_4:                               # %if.end
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	312(%rcx), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.2
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	$1, -32(%rbp)
.LBB13_6:                               # %if.end.3
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$0, -32(%rbp)
	je	.LBB13_9
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$0, -28(%rbp)
	jne	.LBB13_9
# BB#8:                                 # %if.then.6
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-8(%rbp), %rax
	movq	304(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	312(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 304(%rcx)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 312(%rcx)
	movl	$0, -32(%rbp)
	movl	$1, -28(%rbp)
.LBB13_9:                               # %if.end.11
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_10
.LBB13_10:                              # %for.inc
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB13_1
.LBB13_11:                              # %for.end
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	cmpl	$0, -28(%rbp)
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movb	%cl, -57(%rbp)          # 1-byte Spill
	je	.LBB13_13
# BB#12:                                # %land.rhs
	cmpl	$0, -32(%rbp)
	setne	%al
	movb	%al, -57(%rbp)          # 1-byte Spill
.LBB13_13:                              # %land.end
	movb	-57(%rbp), %al          # 1-byte Reload
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	control_update
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_gradient_editor_gradient_dirty, .Lfunc_end13-gimp_gradient_editor_gradient_dirty
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gradient_editor_set_context,@function
gimp_gradient_editor_set_context:       # @gimp_gradient_editor_set_context
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	parent_docked_iface, %rax
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	112(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_view_renderer_set_context
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_gradient_editor_set_context, .Lfunc_end14-gimp_gradient_editor_set_context
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	view_events,@function
view_events:                            # @view_events
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
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 160(%rax)
	jne	.LBB15_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB15_39
.LBB15_2:                               # %if.end
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$3, %edx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	movl	%edx, -104(%rbp)        # 4-byte Spill
	je	.LBB15_4
	jmp	.LBB15_40
.LBB15_40:                              # %if.end
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB15_10
	jmp	.LBB15_41
.LBB15_41:                              # %if.end
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$7, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB15_34
	jmp	.LBB15_42
.LBB15_42:                              # %if.end
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$11, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB15_3
	jmp	.LBB15_43
.LBB15_43:                              # %if.end
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$31, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	je	.LBB15_16
	jmp	.LBB15_37
.LBB15_3:                               # %sw.bb
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movq	-128(%rbp), %r8         # 8-byte Reload
	callq	gradient_editor_set_hint
	jmp	.LBB15_38
.LBB15_4:                               # %sw.bb.2
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	cvtsi2sdl	288(%rax), %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB15_5
	jp	.LBB15_5
	jmp	.LBB15_9
.LBB15_5:                               # %if.then.4
	movq	-48(%rbp), %rax
	cvttsd2si	24(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 288(%rax)
	movq	-32(%rbp), %rax
	cmpl	$0, 292(%rax)
	je	.LBB15_7
# BB#6:                                 # %if.then.9
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	48(%rax), %ecx
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	callq	gimp_get_toggle_behavior_mask
	movl	$1, %ecx
	movl	$2, %edx
	movl	-140(%rbp), %esi        # 4-byte Reload
	andl	%eax, %esi
	cmpl	$0, %esi
	cmovnel	%edx, %ecx
	movq	-48(%rbp), %rdi
	cvttsd2si	24(%rdi), %edx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	callq	view_pick_color
	jmp	.LBB15_8
.LBB15_7:                               # %if.else
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rax
	cvttsd2si	24(%rax), %esi
	callq	view_set_hint
.LBB15_8:                               # %if.end.16
	jmp	.LBB15_9
.LBB15_9:                               # %if.end.17
	movq	-48(%rbp), %rdi
	callq	gdk_event_request_motions
	jmp	.LBB15_38
.LBB15_10:                              # %sw.bb.18
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	gdk_event_triggers_context_menu
	cmpl	$0, %eax
	je	.LBB15_12
# BB#11:                                # %if.then.21
	movq	-32(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movq	-160(%rbp), %rdx        # 8-byte Reload
	callq	gimp_editor_popup_menu
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB15_15
.LBB15_12:                              # %if.else.25
	movq	-56(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB15_14
# BB#13:                                # %if.then.28
	movq	-56(%rbp), %rax
	cvttsd2si	24(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 288(%rax)
	movq	-32(%rbp), %rax
	movl	$1, 292(%rax)
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rax
	movl	48(%rax), %ecx
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	callq	gimp_get_toggle_behavior_mask
	movl	$1, %ecx
	movl	$2, %edx
	movl	-180(%rbp), %esi        # 4-byte Reload
	andl	%eax, %esi
	cmpl	$0, %esi
	cmovnel	%edx, %ecx
	movq	-56(%rbp), %rdi
	cvttsd2si	24(%rdi), %edx
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	callq	view_pick_color
.LBB15_14:                              # %if.end.40
	jmp	.LBB15_15
.LBB15_15:                              # %if.end.41
	jmp	.LBB15_38
.LBB15_16:                              # %sw.bb.42
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, -184(%rbp)        # 4-byte Spill
	callq	gimp_get_toggle_behavior_mask
	movl	-184(%rbp), %ecx        # 4-byte Reload
	andl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB15_22
# BB#17:                                # %if.then.47
	movq	-64(%rbp), %rax
	movl	44(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	je	.LBB15_18
	jmp	.LBB15_45
.LBB15_45:                              # %if.then.47
	movl	-188(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
	je	.LBB15_19
	jmp	.LBB15_20
.LBB15_18:                              # %sw.bb.48
	xorl	%esi, %esi
	movq	-32(%rbp), %rdi
	callq	gimp_gradient_editor_zoom
	jmp	.LBB15_21
.LBB15_19:                              # %sw.bb.49
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	callq	gimp_gradient_editor_zoom
	jmp	.LBB15_21
.LBB15_20:                              # %sw.default
	jmp	.LBB15_21
.LBB15_21:                              # %sw.epilog
	jmp	.LBB15_33
.LBB15_22:                              # %if.else.50
	movq	-32(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -76(%rbp)
	movq	-64(%rbp), %rax
	movl	44(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	je	.LBB15_23
	jmp	.LBB15_44
.LBB15_44:                              # %if.else.50
	movl	-196(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -200(%rbp)        # 4-byte Spill
	je	.LBB15_24
	jmp	.LBB15_25
.LBB15_23:                              # %sw.bb.54
	movq	-72(%rbp), %rdi
	callq	gtk_adjustment_get_page_increment
	movsd	.LCPI15_0, %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtss2sd	-76(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -76(%rbp)
	jmp	.LBB15_26
.LBB15_24:                              # %sw.bb.58
	movq	-72(%rbp), %rdi
	callq	gtk_adjustment_get_page_increment
	movsd	.LCPI15_0, %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtss2sd	-76(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -76(%rbp)
	jmp	.LBB15_26
.LBB15_25:                              # %sw.default.63
	jmp	.LBB15_26
.LBB15_26:                              # %sw.epilog.64
	cvtss2sd	-76(%rbp), %xmm0
	movq	-72(%rbp), %rdi
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_upper
	movq	-72(%rbp), %rdi
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_page_size
	movsd	-216(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-208(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB15_28
# BB#27:                                # %cond.true
	movq	-72(%rbp), %rdi
	callq	gtk_adjustment_get_upper
	movq	-72(%rbp), %rdi
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_page_size
	movsd	-224(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -232(%rbp)       # 8-byte Spill
	jmp	.LBB15_32
.LBB15_28:                              # %cond.false
	cvtss2sd	-76(%rbp), %xmm0
	movq	-72(%rbp), %rdi
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_lower
	movsd	-240(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB15_30
# BB#29:                                # %cond.true.78
	movq	-72(%rbp), %rdi
	callq	gtk_adjustment_get_lower
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	jmp	.LBB15_31
.LBB15_30:                              # %cond.false.80
	cvtss2sd	-76(%rbp), %xmm0
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
.LBB15_31:                              # %cond.end
	movsd	-248(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
.LBB15_32:                              # %cond.end.83
	movsd	-232(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -76(%rbp)
	movq	-72(%rbp), %rdi
	cvtss2sd	-76(%rbp), %xmm0
	callq	gtk_adjustment_set_value
.LBB15_33:                              # %if.end.87
	jmp	.LBB15_38
.LBB15_34:                              # %sw.bb.88
	movq	-32(%rbp), %rax
	cmpl	$0, 292(%rax)
	je	.LBB15_36
# BB#35:                                # %if.then.91
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cvttsd2si	24(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 288(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 292(%rax)
	movq	-32(%rbp), %rdi
	movq	-88(%rbp), %rax
	movl	48(%rax), %ecx
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	callq	gimp_get_toggle_behavior_mask
	movl	$1, %ecx
	movl	$2, %edx
	movl	-260(%rbp), %esi        # 4-byte Reload
	andl	%eax, %esi
	cmpl	$0, %esi
	cmovnel	%edx, %ecx
	movq	-88(%rbp), %rdi
	cvttsd2si	24(%rdi), %edx
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	callq	view_pick_color
	jmp	.LBB15_38
.LBB15_36:                              # %if.end.104
	jmp	.LBB15_38
.LBB15_37:                              # %sw.default.105
	movl	$0, -4(%rbp)
	jmp	.LBB15_39
.LBB15_38:                              # %sw.epilog.106
	movl	$1, -4(%rbp)
.LBB15_39:                              # %return
	movl	-4(%rbp), %eax
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end15:
	.size	view_events, .Lfunc_end15-view_events
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_editor_drop_gradient,@function
gradient_editor_drop_gradient:          # @gradient_editor_drop_gradient
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rcx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_data_editor_set_data
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gradient_editor_drop_gradient, .Lfunc_end16-gradient_editor_drop_gradient
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gradient_editor_drop_color,@function
gradient_editor_drop_color:             # @gradient_editor_drop_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp58:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_gradient_editor_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	160(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	control_calc_g_pos
	movsd	%xmm0, -56(%rbp)
	movq	-48(%rbp), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_gradient_get_segment_at
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_freeze
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-72(%rbp), %rcx
	leaq	-80(%rbp), %r8
	movq	144(%rax), %rsi
	movq	-64(%rbp), %rdx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	callq	gimp_gradient_segment_split_midpoint
	cmpq	$0, -72(%rbp)
	je	.LBB17_2
# BB#1:                                 # %if.then
	movsd	.LCPI17_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-72(%rbp), %rax
	movsd	%xmm1, 16(%rax)
	movq	-72(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movq	-72(%rbp), %rax
	addsd	16(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movq	-72(%rbp), %rax
	movsd	%xmm1, 8(%rax)
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 72(%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 80(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 88(%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 96(%rax)
.LBB17_2:                               # %if.end
	cmpq	$0, -80(%rbp)
	je	.LBB17_4
# BB#3:                                 # %if.then.15
	movsd	.LCPI17_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-80(%rbp), %rax
	movsd	%xmm1, (%rax)
	movq	-80(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movq	-80(%rbp), %rax
	addsd	16(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movq	-80(%rbp), %rax
	movsd	%xmm1, 8(%rax)
	movq	-80(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 32(%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 40(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 48(%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 56(%rax)
.LBB17_4:                               # %if.end.22
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_thaw
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gradient_editor_drop_color, .Lfunc_end17-gradient_editor_drop_color
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	control_events,@function
control_events:                         # @control_events
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp61:
	.cfi_def_cfa_register %rbp
	subq	$320, %rsp              # imm = 0x140
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpq	$0, 160(%rax)
	jne	.LBB18_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB18_53
.LBB18_2:                               # %if.end
	movq	-32(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	160(%rax), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$3, %edx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	movl	%edx, -128(%rbp)        # 4-byte Spill
	je	.LBB18_42
	jmp	.LBB18_54
.LBB18_54:                              # %if.end
	movl	-124(%rbp), %eax        # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	je	.LBB18_4
	jmp	.LBB18_55
.LBB18_55:                              # %if.end
	movl	-124(%rbp), %eax        # 4-byte Reload
	subl	$7, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	je	.LBB18_27
	jmp	.LBB18_56
.LBB18_56:                              # %if.end
	movl	-124(%rbp), %eax        # 4-byte Reload
	subl	$11, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	je	.LBB18_3
	jmp	.LBB18_57
.LBB18_57:                              # %if.end
	movl	-124(%rbp), %eax        # 4-byte Reload
	subl	$31, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	je	.LBB18_11
	jmp	.LBB18_51
.LBB18_3:                               # %sw.bb
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	movq	-152(%rbp), %r8         # 8-byte Reload
	callq	gradient_editor_set_hint
	jmp	.LBB18_52
.LBB18_4:                               # %sw.bb.7
	movq	-32(%rbp), %rax
	cmpl	$0, 320(%rax)
	jne	.LBB18_10
# BB#5:                                 # %if.then.8
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cvttsd2si	24(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 332(%rax)
	movq	-56(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 324(%rax)
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rax
	cvttsd2si	24(%rax), %esi
	movq	-56(%rbp), %rax
	cvttsd2si	32(%rax), %edx
	movq	-56(%rbp), %rax
	movl	52(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	48(%rax), %r8d
	callq	control_button_press
	movq	-32(%rbp), %rax
	cmpl	$0, 320(%rax)
	je	.LBB18_9
# BB#6:                                 # %if.then.15
	movq	-16(%rbp), %rdi
	callq	gtk_grab_add
	movq	-32(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$0, 168(%rax)
	je	.LBB18_8
# BB#7:                                 # %if.then.19
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_gradient_editor_gradient_dirty, %rdx
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %r9
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-168(%rbp), %r10        # 8-byte Reload
	movq	%r9, -176(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-176(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB18_8:                               # %if.end.21
	jmp	.LBB18_9
.LBB18_9:                               # %if.end.22
	jmp	.LBB18_10
.LBB18_10:                              # %if.end.23
	jmp	.LBB18_52
.LBB18_11:                              # %sw.bb.24
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, -184(%rbp)        # 4-byte Spill
	callq	gimp_get_toggle_behavior_mask
	movl	-184(%rbp), %ecx        # 4-byte Reload
	andl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB18_16
# BB#12:                                # %if.then.28
	movq	-64(%rbp), %rax
	cmpl	$0, 44(%rax)
	jne	.LBB18_14
# BB#13:                                # %if.then.31
	xorl	%esi, %esi
	movq	-32(%rbp), %rdi
	callq	gimp_gradient_editor_zoom
	jmp	.LBB18_15
.LBB18_14:                              # %if.else
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	callq	gimp_gradient_editor_zoom
.LBB18_15:                              # %if.end.32
	jmp	.LBB18_26
.LBB18_16:                              # %if.else.33
	movq	-32(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movq	-64(%rbp), %rax
	cmpl	$0, 44(%rax)
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	jne	.LBB18_18
# BB#17:                                # %cond.true
	movq	-72(%rbp), %rdi
	callq	gtk_adjustment_get_page_increment
	movsd	.LCPI18_0, %xmm1        # xmm1 = mem[0],zero
	movd	%xmm0, %rdi
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	xorq	%rax, %rdi
	movd	%rdi, %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	jmp	.LBB18_19
.LBB18_18:                              # %cond.false
	movq	-72(%rbp), %rdi
	callq	gtk_adjustment_get_page_increment
	movsd	.LCPI18_0, %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
.LBB18_19:                              # %cond.end
	movsd	-200(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-192(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -76(%rbp)
	cvtss2sd	-76(%rbp), %xmm0
	movq	-72(%rbp), %rdi
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_upper
	movq	-72(%rbp), %rdi
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_page_size
	movsd	-216(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-208(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB18_21
# BB#20:                                # %cond.true.48
	movq	-72(%rbp), %rdi
	callq	gtk_adjustment_get_upper
	movq	-72(%rbp), %rdi
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_page_size
	movsd	-224(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -232(%rbp)       # 8-byte Spill
	jmp	.LBB18_25
.LBB18_21:                              # %cond.false.52
	cvtss2sd	-76(%rbp), %xmm0
	movq	-72(%rbp), %rdi
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_lower
	movsd	-240(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB18_23
# BB#22:                                # %cond.true.57
	movq	-72(%rbp), %rdi
	callq	gtk_adjustment_get_lower
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	jmp	.LBB18_24
.LBB18_23:                              # %cond.false.59
	cvtss2sd	-76(%rbp), %xmm0
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
.LBB18_24:                              # %cond.end.61
	movsd	-248(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
.LBB18_25:                              # %cond.end.63
	movsd	-232(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -76(%rbp)
	movq	-72(%rbp), %rdi
	cvtss2sd	-76(%rbp), %xmm0
	callq	gtk_adjustment_set_value
.LBB18_26:                              # %if.end.67
	jmp	.LBB18_52
.LBB18_27:                              # %sw.bb.68
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movq	%rdx, -88(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	movq	-256(%rbp), %r8         # 8-byte Reload
	callq	gradient_editor_set_hint
	movq	-32(%rbp), %rcx
	cmpl	$0, 320(%rcx)
	je	.LBB18_41
# BB#28:                                # %if.then.73
	movq	-32(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$0, 168(%rax)
	je	.LBB18_30
# BB#29:                                # %if.then.78
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_gradient_editor_gradient_dirty, %rdx
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %r9
	movq	%rdx, -272(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-272(%rbp), %r10        # 8-byte Reload
	movq	%r9, -280(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-280(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -284(%rbp)        # 4-byte Spill
.LBB18_30:                              # %if.end.80
	movq	-16(%rbp), %rdi
	callq	gtk_grab_remove
	movq	-88(%rbp), %rdi
	movl	20(%rdi), %eax
	movq	-32(%rbp), %rdi
	subl	324(%rdi), %eax
	cmpl	$150, %eax
	jb	.LBB18_32
# BB#31:                                # %if.then.86
	jmp	.LBB18_40
.LBB18_32:                              # %if.else.87
	movq	-32(%rbp), %rax
	cmpl	$2, 320(%rax)
	je	.LBB18_34
# BB#33:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpl	$3, 320(%rax)
	jne	.LBB18_39
.LBB18_34:                              # %if.then.94
	movq	-32(%rbp), %rax
	movq	296(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$3, 320(%rax)
	jne	.LBB18_37
# BB#35:                                # %land.lhs.true
	movq	-32(%rbp), %rax
	cmpl	$0, 328(%rax)
	je	.LBB18_37
# BB#36:                                # %if.then.99
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	-88(%rbp), %rcx
	cvttsd2si	24(%rcx), %edx
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -304(%rbp)        # 8-byte Spill
	movl	%edx, %esi
	callq	control_calc_g_pos
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	-304(%rbp), %rsi        # 8-byte Reload
	callq	control_extend_selection
	jmp	.LBB18_38
.LBB18_37:                              # %if.else.103
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	control_select_single_segment
.LBB18_38:                              # %if.end.104
	movq	-32(%rbp), %rdi
	callq	gimp_gradient_editor_update
.LBB18_39:                              # %if.end.105
	jmp	.LBB18_40
.LBB18_40:                              # %if.end.106
	movq	-32(%rbp), %rax
	movl	$0, 320(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 328(%rax)
	movq	-32(%rbp), %rdi
	movq	-88(%rbp), %rax
	cvttsd2si	24(%rax), %esi
	movq	-88(%rbp), %rax
	cvttsd2si	32(%rax), %edx
	callq	control_do_hint
.LBB18_41:                              # %if.end.113
	jmp	.LBB18_52
.LBB18_42:                              # %sw.bb.114
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	cvtsi2sdl	332(%rax), %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB18_43
	jp	.LBB18_43
	jmp	.LBB18_50
.LBB18_43:                              # %if.then.120
	movq	-96(%rbp), %rax
	cvttsd2si	24(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 332(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$0, 168(%rax)
	je	.LBB18_48
# BB#44:                                # %land.lhs.true.128
	movq	-32(%rbp), %rax
	cmpl	$0, 320(%rax)
	je	.LBB18_48
# BB#45:                                # %if.then.132
	movq	-96(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-32(%rbp), %rax
	subl	324(%rax), %ecx
	cmpl	$150, %ecx
	jb	.LBB18_47
# BB#46:                                # %if.then.138
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-96(%rbp), %rax
	cvttsd2si	24(%rax), %edx
	callq	control_motion
.LBB18_47:                              # %if.end.141
	jmp	.LBB18_49
.LBB18_48:                              # %if.else.142
	movq	-32(%rbp), %rdi
	callq	gimp_gradient_editor_update
	movq	-32(%rbp), %rdi
	movq	-96(%rbp), %rax
	cvttsd2si	24(%rax), %esi
	movq	-96(%rbp), %rax
	cvttsd2si	32(%rax), %edx
	callq	control_do_hint
.LBB18_49:                              # %if.end.147
	jmp	.LBB18_50
.LBB18_50:                              # %if.end.148
	movq	-96(%rbp), %rdi
	callq	gdk_event_request_motions
	jmp	.LBB18_52
.LBB18_51:                              # %sw.default
	movl	$0, -4(%rbp)
	jmp	.LBB18_53
.LBB18_52:                              # %sw.epilog
	movl	$1, -4(%rbp)
.LBB18_53:                              # %return
	movl	-4(%rbp), %eax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end18:
	.size	control_events, .Lfunc_end18-control_events
	.cfi_endproc

	.align	16, 0x90
	.type	control_expose,@function
control_expose:                         # @control_expose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	272(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_cairo_create
	leaq	-56(%rbp), %rsi
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	160(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rdx
	movl	-48(%rbp), %ecx
	movl	-44(%rbp), %r8d
	movq	-32(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	movl	%r8d, -104(%rbp)        # 4-byte Spill
	callq	gtk_adjustment_get_value
	movq	-32(%rbp), %rdi
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_value
	movq	-32(%rbp), %rdi
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_page_size
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movl	-100(%rbp), %ecx        # 4-byte Reload
	movl	-104(%rbp), %r8d        # 4-byte Reload
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	control_draw
	movq	-40(%rbp), %rdi
	callq	cairo_destroy
	movl	$1, %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	control_expose, .Lfunc_end19-control_expose
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_editor_control_drop_color,@function
gradient_editor_control_drop_color:     # @gradient_editor_control_drop_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp67:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	gimp_gradient_editor_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	160(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	control_calc_g_pos
	leaq	-64(%rbp), %rsi
	leaq	-84(%rbp), %rdx
	movsd	%xmm0, -56(%rbp)
	movq	-48(%rbp), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	seg_get_closest_handle
	cmpq	$0, -64(%rbp)
	je	.LBB20_5
# BB#1:                                 # %if.then
	cmpl	$1, -84(%rbp)
	jne	.LBB20_3
# BB#2:                                 # %if.then.8
	movq	-64(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB20_4
.LBB20_3:                               # %if.else
	jmp	.LBB20_11
.LBB20_4:                               # %if.end
	jmp	.LBB20_6
.LBB20_5:                               # %if.else.9
	movq	-48(%rbp), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_gradient_get_segment_at
	movq	%rax, -72(%rbp)
	movq	$0, -80(%rbp)
.LBB20_6:                               # %if.end.11
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_freeze
	cmpq	$0, -72(%rbp)
	je	.LBB20_8
# BB#7:                                 # %if.then.15
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 72(%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 80(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 88(%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 96(%rax)
.LBB20_8:                               # %if.end.16
	cmpq	$0, -80(%rbp)
	je	.LBB20_10
# BB#9:                                 # %if.then.18
	movq	-80(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 32(%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 40(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 48(%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 56(%rax)
.LBB20_10:                              # %if.end.19
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_thaw
.LBB20_11:                              # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gradient_editor_control_drop_color, .Lfunc_end20-gradient_editor_control_drop_color
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_editor_scrollbar_update,@function
gradient_editor_scrollbar_update:       # @gradient_editor_scrollbar_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp70:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.40, %rdi
	movq	%rax, -24(%rbp)
	callq	gettext
	movq	-16(%rbp), %rsi
	movl	264(%rsi), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.41, %rdi
	movq	%rax, -40(%rbp)
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_value
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_value
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_page_size
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movb	$2, %al
	callq	g_strdup_printf
	xorl	%esi, %esi
	movl	%esi, %edi
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	callq	gradient_editor_set_hint
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-48(%rbp), %rdi
	callq	g_free
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	112(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_view_renderer_gradient_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_value
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_page_size
	movsd	-128(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	gimp_view_renderer_gradient_set_offsets
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_view_renderer_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_view_renderer_update
	movq	-16(%rbp), %rdi
	callq	gimp_gradient_editor_update
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gradient_editor_scrollbar_update, .Lfunc_end21-gradient_editor_scrollbar_update
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI22_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gradient_hint_label_add,@function
gradient_hint_label_add:                # @gradient_hint_label_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
.Ltmp72:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp73:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	gtk_label_get_type
	movabsq	$.L.str.42, %rsi
	xorps	%xmm0, %xmm0
	movabsq	$.L.str.43, %rdx
	movsd	.LCPI22_0, %xmm1        # xmm1 = mem[0],zero
	movabsq	$.L.str.44, %rcx
	movl	$1, %r8d
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	%rax, %rdi
	movb	$2, %al
	callq	g_object_new
	xorl	%r8d, %r8d
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gradient_hint_label_add, .Lfunc_end22-gradient_hint_label_add
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_editor_set_hint,@function
gradient_editor_set_hint:               # @gradient_editor_set_hint
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp76:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rcx
	movq	216(%rcx), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-8(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-8(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gradient_editor_set_hint, .Lfunc_end23-gradient_editor_set_hint
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI24_0:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	view_pick_color,@function
view_pick_color:                        # @view_pick_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
.Ltmp78:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp79:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %esi
	callq	control_calc_g_pos
	movsd	%xmm0, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	xorl	%ecx, %ecx
	leaq	-56(%rbp), %r8
	movq	-24(%rbp), %rsi
	movq	144(%rsi), %rsi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_gradient_get_color_at
	movq	-8(%rbp), %rdx
	movq	208(%rdx), %rdx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	callq	gimp_color_area_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_area_set_color
	movabsq	$.L.str.22, %rdi
	callq	gettext
	movsd	.LCPI24_0, %xmm0        # xmm0 = mem[0],zero
	movaps	%xmm0, %xmm1
	mulsd	-56(%rbp), %xmm1
	cvttsd2si	%xmm1, %esi
	movaps	%xmm0, %xmm1
	mulsd	-48(%rbp), %xmm1
	cvttsd2si	%xmm1, %edx
	mulsd	-40(%rbp), %xmm0
	cvttsd2si	%xmm0, %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.23, %rdi
	movq	%rax, -72(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movb	$3, %al
	callq	g_strdup_printf
	movq	%rax, -80(%rbp)
	cmpl	$1, -12(%rbp)
	jne	.LBB24_2
# BB#1:                                 # %if.then
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gimp_context_set_foreground
	movabsq	$.L.str.24, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gradient_editor_set_hint
	jmp	.LBB24_3
.LBB24_2:                               # %if.else
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gimp_context_set_background
	movabsq	$.L.str.25, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gradient_editor_set_hint
.LBB24_3:                               # %if.end
	movq	-72(%rbp), %rdi
	callq	g_free
	movq	-80(%rbp), %rdi
	callq	g_free
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	view_pick_color, .Lfunc_end24-view_pick_color
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI25_0:
	.quad	4636737291354636288     # double 100
.LCPI25_1:
	.quad	4589866978952703325     # double 0.0722
.LCPI25_2:
	.quad	4604617168452267173     # double 0.71519999999999995
.LCPI25_3:
	.quad	4596827742536767164     # double 0.21260000000000001
.LCPI25_4:
	.quad	4645040803167600640     # double 360
	.text
	.align	16, 0x90
	.type	view_set_hint,@function
view_set_hint:                          # @view_set_hint
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp82:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	control_calc_g_pos
	movsd	%xmm0, -96(%rbp)
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	leaq	-56(%rbp), %r8
	movq	-24(%rbp), %rsi
	movq	144(%rsi), %rsi
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_gradient_get_color_at
	movq	-8(%rbp), %rdx
	movq	208(%rdx), %rdx
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	callq	gimp_color_area_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_area_set_color
	leaq	-56(%rbp), %rdi
	leaq	-88(%rbp), %rsi
	callq	gimp_rgb_to_hsv
	movabsq	$.L.str.26, %rdi
	callq	gettext
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movb	$1, %al
	callq	g_strdup_printf
	movabsq	$.L.str.27, %rdi
	movq	%rax, -104(%rbp)
	callq	gettext
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	%rax, %rdi
	movb	$3, %al
	callq	g_strdup_printf
	movabsq	$.L.str.28, %rdi
	movq	%rax, -112(%rbp)
	callq	gettext
	movsd	.LCPI25_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI25_4, %xmm1        # xmm1 = mem[0],zero
	mulsd	-88(%rbp), %xmm1
	movaps	%xmm0, %xmm2
	mulsd	-80(%rbp), %xmm2
	mulsd	-72(%rbp), %xmm0
	movq	%rax, %rdi
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movsd	-168(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movb	$3, %al
	callq	g_strdup_printf
	movabsq	$.L.str.29, %rdi
	movq	%rax, -120(%rbp)
	callq	gettext
	movsd	.LCPI25_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI25_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI25_2, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI25_3, %xmm3        # xmm3 = mem[0],zero
	mulsd	-56(%rbp), %xmm3
	mulsd	-48(%rbp), %xmm2
	addsd	%xmm2, %xmm3
	mulsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm3
	mulsd	%xmm0, %xmm3
	mulsd	-32(%rbp), %xmm0
	movq	%rax, %rdi
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-176(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movb	$2, %al
	callq	g_strdup_printf
	movq	%rax, -128(%rbp)
	movq	-8(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movq	-112(%rbp), %rdx
	movq	-120(%rbp), %rcx
	movq	-128(%rbp), %r8
	callq	gradient_editor_set_hint
	movq	-104(%rbp), %rdi
	callq	g_free
	movq	-112(%rbp), %rdi
	callq	g_free
	movq	-120(%rbp), %rdi
	callq	g_free
	movq	-128(%rbp), %rdi
	callq	g_free
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	view_set_hint, .Lfunc_end25-view_set_hint
	.cfi_endproc

	.align	16, 0x90
	.type	control_calc_g_pos,@function
control_calc_g_pos:                     # @control_calc_g_pos
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
	subq	$64, %rsp
	leaq	-40(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	272(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	256(%rdi), %rdi
	movq	%rax, %rsi
	callq	gtk_widget_get_allocation
	movl	-32(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_adjustment_get_page_size
	cvtsi2sdl	-12(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movl	-44(%rbp), %ecx
	subl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm1, %xmm0
	movq	-24(%rbp), %rdi
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_value
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	control_calc_g_pos, .Lfunc_end26-control_calc_g_pos
	.cfi_endproc

	.align	16, 0x90
	.type	control_button_press,@function
control_button_press:                   # @control_button_press
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	160(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	cmpl	$3, -20(%rbp)
	jne	.LBB27_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	-96(%rbp), %rdx         # 8-byte Reload
	callq	gimp_editor_popup_menu
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB27_29
.LBB27_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	control_calc_g_pos
	leaq	-40(%rbp), %rsi
	leaq	-44(%rbp), %rdx
	movsd	%xmm0, -56(%rbp)
	movq	-32(%rbp), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	seg_get_closest_handle
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movq	-40(%rbp), %r8
	movl	-44(%rbp), %r9d
	callq	control_point_in_handle
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB27_26
# BB#3:                                 # %if.then.9
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -104(%rbp)        # 4-byte Spill
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	je	.LBB27_4
	jmp	.LBB27_30
.LBB27_30:                              # %if.then.9
	movl	-104(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB27_20
	jmp	.LBB27_24
.LBB27_4:                               # %sw.bb
	cmpq	$0, -40(%rbp)
	je	.LBB27_15
# BB#5:                                 # %if.then.11
	movl	-24(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB27_10
# BB#6:                                 # %if.then.13
	movq	-40(%rbp), %rax
	cmpq	$0, 112(%rax)
	je	.LBB27_8
# BB#7:                                 # %if.then.15
	movq	-8(%rbp), %rax
	movl	$1, 320(%rax)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 296(%rcx)
	movq	-8(%rbp), %rax
	movl	$1, 328(%rax)
	jmp	.LBB27_9
.LBB27_8:                               # %if.else
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	control_extend_selection
	movq	-8(%rbp), %rdi
	callq	gimp_gradient_editor_update
.LBB27_9:                               # %if.end.16
	jmp	.LBB27_14
.LBB27_10:                              # %if.else.17
	movq	-40(%rbp), %rax
	cmpq	$0, 112(%rax)
	je	.LBB27_12
# BB#11:                                # %if.then.20
	movq	-8(%rbp), %rax
	movl	$1, 320(%rax)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 296(%rcx)
	jmp	.LBB27_13
.LBB27_12:                              # %if.else.23
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	control_select_single_segment
	movq	-8(%rbp), %rdi
	callq	gimp_gradient_editor_update
.LBB27_13:                              # %if.end.24
	jmp	.LBB27_14
.LBB27_14:                              # %if.end.25
	jmp	.LBB27_19
.LBB27_15:                              # %if.else.26
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_gradient_segment_get_last
	movq	%rax, -40(%rbp)
	movl	-24(%rbp), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB27_17
# BB#16:                                # %if.then.30
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	control_extend_selection
	movq	-8(%rbp), %rdi
	callq	gimp_gradient_editor_update
	jmp	.LBB27_18
.LBB27_17:                              # %if.else.31
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	control_select_single_segment
	movq	-8(%rbp), %rdi
	callq	gimp_gradient_editor_update
.LBB27_18:                              # %if.end.32
	jmp	.LBB27_19
.LBB27_19:                              # %if.end.33
	jmp	.LBB27_25
.LBB27_20:                              # %sw.bb.34
	movl	-24(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB27_22
# BB#21:                                # %if.then.37
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	control_extend_selection
	movq	-8(%rbp), %rdi
	callq	gimp_gradient_editor_update
	jmp	.LBB27_23
.LBB27_22:                              # %if.else.38
	movq	-8(%rbp), %rax
	movl	$2, 320(%rax)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 296(%rcx)
.LBB27_23:                              # %if.end.41
	jmp	.LBB27_25
.LBB27_24:                              # %sw.default
	movabsq	$.L.str.30, %rdi
	movabsq	$.L__func__.control_button_press, %rsi
	movl	-60(%rbp), %edx
	movb	$0, %al
	callq	g_warning
.LBB27_25:                              # %sw.epilog
	jmp	.LBB27_29
.LBB27_26:                              # %if.else.42
	movq	-32(%rbp), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_gradient_get_segment_at
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movl	$3, 320(%rax)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, 296(%rdi)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 336(%rax)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 344(%rax)
	movl	-24(%rbp), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB27_28
# BB#27:                                # %if.then.48
	movq	-8(%rbp), %rax
	movl	$1, 328(%rax)
.LBB27_28:                              # %if.end.50
	jmp	.LBB27_29
.LBB27_29:                              # %if.end.51
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	control_button_press, .Lfunc_end27-control_button_press
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI28_0:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	control_extend_selection,@function
control_extend_selection:               # @control_extend_selection
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	movq	304(%rsi), %rsi
	subsd	(%rsi), %xmm0
	movapd	.LCPI28_0(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rsi
	movq	312(%rsi), %rsi
	subsd	16(%rsi), %xmm1
	movapd	.LCPI28_0(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB28_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 304(%rcx)
	jmp	.LBB28_3
.LBB28_2:                               # %if.else
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 312(%rcx)
.LBB28_3:                               # %if.end
	popq	%rbp
	retq
.Lfunc_end28:
	.size	control_extend_selection, .Lfunc_end28-control_extend_selection
	.cfi_endproc

	.align	16, 0x90
	.type	control_select_single_segment,@function
control_select_single_segment:          # @control_select_single_segment
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 304(%rdi)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 312(%rdi)
	popq	%rbp
	retq
.Lfunc_end29:
	.size	control_select_single_segment, .Lfunc_end29-control_select_single_segment
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI30_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	control_do_hint,@function
control_do_hint:                        # @control_do_hint
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
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	160(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	control_calc_g_pos
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -48(%rbp)
	ucomisd	-48(%rbp), %xmm1
	ja	.LBB30_2
# BB#1:                                 # %lor.lhs.false
	movsd	.LCPI30_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB30_3
.LBB30_2:                               # %if.then
	jmp	.LBB30_16
.LBB30_3:                               # %if.end
	leaq	-32(%rbp), %rsi
	leaq	-36(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	seg_get_closest_handle
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movq	-32(%rbp), %r8
	movl	-36(%rbp), %r9d
	callq	control_point_in_handle
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB30_15
# BB#4:                                 # %if.then.7
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	%ecx, -88(%rbp)         # 4-byte Spill
	je	.LBB30_5
	jmp	.LBB30_17
.LBB30_17:                              # %if.then.7
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB30_12
	jmp	.LBB30_13
.LBB30_5:                               # %sw.bb
	cmpq	$0, -32(%rbp)
	je	.LBB30_10
# BB#6:                                 # %if.then.9
	movq	-32(%rbp), %rax
	cmpq	$0, 112(%rax)
	je	.LBB30_8
# BB#7:                                 # %if.then.11
	movabsq	$.L.str.32, %rdi
	callq	gettext
	movl	$1, %edi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_get_mod_string
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.33, %rdi
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-56(%rbp), %rcx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-120(%rbp), %r8         # 8-byte Reload
	callq	gradient_editor_set_hint
	movq	-56(%rbp), %rdi
	callq	g_free
	jmp	.LBB30_9
.LBB30_8:                               # %if.else
	movabsq	$.L.str.34, %rdi
	callq	gettext
	movl	$1, %edi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_get_mod_string
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.35, %rdi
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-56(%rbp), %rcx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-144(%rbp), %r8         # 8-byte Reload
	callq	gradient_editor_set_hint
	movq	-56(%rbp), %rdi
	callq	g_free
.LBB30_9:                               # %if.end.20
	jmp	.LBB30_11
.LBB30_10:                              # %if.else.21
	movabsq	$.L.str.34, %rdi
	callq	gettext
	movl	$1, %edi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_get_mod_string
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.35, %rdi
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-56(%rbp), %rcx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-168(%rbp), %r8         # 8-byte Reload
	callq	gradient_editor_set_hint
	movq	-56(%rbp), %rdi
	callq	g_free
.LBB30_11:                              # %if.end.26
	jmp	.LBB30_14
.LBB30_12:                              # %sw.bb.27
	movabsq	$.L.str.34, %rdi
	callq	gettext
	movl	$1, %edi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_get_mod_string
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.36, %rdi
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-56(%rbp), %rcx
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-192(%rbp), %r8         # 8-byte Reload
	callq	gradient_editor_set_hint
	movq	-56(%rbp), %rdi
	callq	g_free
	jmp	.LBB30_14
.LBB30_13:                              # %sw.default
	movabsq	$.L.str.30, %rdi
	movabsq	$.L__func__.control_do_hint, %rsi
	movl	-40(%rbp), %edx
	movb	$0, %al
	callq	g_warning
.LBB30_14:                              # %sw.epilog
	jmp	.LBB30_16
.LBB30_15:                              # %if.else.32
	movabsq	$.L.str.34, %rdi
	callq	gettext
	movl	$1, %edi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_get_mod_string
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.32, %rdi
	movq	%rax, -56(%rbp)
	callq	gettext
	movl	$1, %edi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_get_mod_string
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.36, %rdi
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gradient_editor_set_hint
	movq	-56(%rbp), %rdi
	callq	g_free
	movq	-64(%rbp), %rdi
	callq	g_free
.LBB30_16:                              # %if.end.40
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	control_do_hint, .Lfunc_end30-control_do_hint
	.cfi_endproc

	.align	16, 0x90
	.type	control_motion,@function
control_motion:                         # @control_motion
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	296(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	$0, -56(%rbp)
	movq	-8(%rbp), %rsi
	movl	320(%rsi), %edx
	movl	%edx, %eax
	subl	$1, %eax
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB31_1
	jmp	.LBB31_13
.LBB31_13:                              # %entry
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB31_5
	jmp	.LBB31_14
.LBB31_14:                              # %entry
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB31_6
	jmp	.LBB31_11
.LBB31_1:                               # %sw.bb
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	control_calc_g_pos
	movsd	%xmm0, -40(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 328(%rdi)
	jne	.LBB31_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_gradient_segment_set_left_pos
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB31_4
.LBB31_3:                               # %if.else
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	304(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	312(%rax), %rdx
	movq	-32(%rbp), %rcx
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	control_compress_left
.LBB31_4:                               # %if.end
	movabsq	$.L.str.37, %rdi
	callq	gettext
	movq	-32(%rbp), %rdi
	movsd	(%rdi), %xmm0           # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movb	$1, %al
	callq	g_strdup_printf
	movq	%rax, -56(%rbp)
	jmp	.LBB31_12
.LBB31_5:                               # %sw.bb.4
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	control_calc_g_pos
	movsd	%xmm0, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_gradient_segment_set_middle_pos
	movabsq	$.L.str.37, %rdi
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-32(%rbp), %rsi
	movsd	8(%rsi), %xmm0          # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movb	$1, %al
	callq	g_strdup_printf
	movq	%rax, -56(%rbp)
	jmp	.LBB31_12
.LBB31_6:                               # %sw.bb.9
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	control_calc_g_pos
	movsd	%xmm0, -40(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	subsd	336(%rdi), %xmm0
	movsd	%xmm0, -48(%rbp)
	movq	-32(%rbp), %rdi
	movsd	(%rdi), %xmm0           # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movq	304(%rdi), %rdi
	ucomisd	(%rdi), %xmm0
	jb	.LBB31_9
# BB#7:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movq	312(%rax), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB31_9
# BB#8:                                 # %if.then.17
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	304(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	312(%rax), %rdx
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	control_move
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB31_10
.LBB31_9:                               # %if.else.21
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	control_move
	movsd	%xmm0, -48(%rbp)
.LBB31_10:                              # %if.end.23
	movabsq	$.L.str.38, %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	336(%rax), %xmm0
	movsd	%xmm0, 336(%rax)
	callq	gettext
	movq	-8(%rbp), %rdi
	movsd	336(%rdi), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	subsd	344(%rdi), %xmm0
	movq	%rax, %rdi
	movb	$1, %al
	callq	g_strdup_printf
	movq	%rax, -56(%rbp)
	jmp	.LBB31_12
.LBB31_11:                              # %sw.default
	movabsq	$.L.str.39, %rdi
	movabsq	$.L__func__.control_motion, %rsi
	movq	-8(%rbp), %rax
	movl	320(%rax), %edx
	movb	$0, %al
	callq	g_warning
.LBB31_12:                              # %sw.epilog
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	%rcx, %rdx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	-96(%rbp), %r8          # 8-byte Reload
	callq	gradient_editor_set_hint
	movq	-56(%rbp), %rdi
	callq	g_free
	movq	-8(%rbp), %rdi
	callq	gimp_gradient_editor_update
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	control_motion, .Lfunc_end31-control_motion
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI32_0:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	seg_get_closest_handle,@function
seg_get_closest_handle:                 # @seg_get_closest_handle
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_gradient_get_segment_at
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	subsd	8(%rax), %xmm0
	movapd	.LCPI32_0(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB32_5
# BB#1:                                 # %if.then
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	subsd	(%rax), %xmm0
	movapd	.LCPI32_0(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB32_3
# BB#2:                                 # %if.then.6
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	jmp	.LBB32_4
.LBB32_3:                               # %if.else
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
.LBB32_4:                               # %if.end
	jmp	.LBB32_9
.LBB32_5:                               # %if.else.7
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	subsd	16(%rax), %xmm0
	movapd	.LCPI32_0(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB32_7
# BB#6:                                 # %if.then.11
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	jmp	.LBB32_8
.LBB32_7:                               # %if.else.12
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	120(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
.LBB32_8:                               # %if.end.13
	jmp	.LBB32_9
.LBB32_9:                               # %if.end.14
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	seg_get_closest_handle, .Lfunc_end32-seg_get_closest_handle
	.cfi_endproc

	.align	16, 0x90
	.type	control_point_in_handle,@function
control_point_in_handle:                # @control_point_in_handle
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movl	%r9d, %ecx
	subl	$1, %r9d
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movl	%r9d, -56(%rbp)         # 4-byte Spill
	je	.LBB33_1
	jmp	.LBB33_12
.LBB33_12:                              # %entry
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB33_5
	jmp	.LBB33_6
.LBB33_1:                               # %sw.bb
	cmpq	$0, -40(%rbp)
	je	.LBB33_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	callq	control_calc_p_pos
	movl	%eax, -48(%rbp)
	jmp	.LBB33_4
.LBB33_3:                               # %if.else
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_gradient_segment_get_last
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	control_calc_p_pos
	movl	%eax, -48(%rbp)
.LBB33_4:                               # %if.end
	jmp	.LBB33_7
.LBB33_5:                               # %sw.bb.3
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	callq	control_calc_p_pos
	movl	%eax, -48(%rbp)
	jmp	.LBB33_7
.LBB33_6:                               # %sw.default
	movabsq	$.L.str.31, %rdi
	movabsq	$.L__func__.control_point_in_handle, %rsi
	movl	-44(%rbp), %edx
	movb	$0, %al
	callq	g_warning
	movl	$0, -4(%rbp)
	jmp	.LBB33_11
.LBB33_7:                               # %sw.epilog
	movl	$2, %eax
	movl	-32(%rbp), %ecx
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-64(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	movl	-48(%rbp), %esi
	subl	-32(%rbp), %esi
	cmpl	%esi, %eax
	jl	.LBB33_10
# BB#8:                                 # %land.lhs.true
	movl	-28(%rbp), %eax
	movl	-48(%rbp), %ecx
	addl	-32(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB33_10
# BB#9:                                 # %if.then.6
	movl	$1, -4(%rbp)
	jmp	.LBB33_11
.LBB33_10:                              # %if.else.7
	movl	$0, -4(%rbp)
.LBB33_11:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	control_point_in_handle, .Lfunc_end33-control_point_in_handle
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB34_2
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
.LBB34_2:                               # %entry
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
	movl	$.L.str.1, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end34:
	.size	g_warning, .Lfunc_end34-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	control_calc_p_pos,@function
control_calc_p_pos:                     # @control_calc_p_pos
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
	subq	$80, %rsp
	leaq	-40(%rbp), %rsi
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	272(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	256(%rdi), %rdi
	callq	gtk_widget_get_allocation
	movl	-32(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-24(%rbp), %rdi
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movsd	%xmm1, -64(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_value
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movq	-24(%rbp), %rdi
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_page_size
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	rint
	cvttsd2si	%xmm0, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	control_calc_p_pos, .Lfunc_end35-control_calc_p_pos
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI36_0:
	.quad	4457293557087583675     # double 1.0E-10
.LCPI36_1:
	.quad	4611686018427387904     # double 2
.LCPI36_2:
	.quad	4461797156714954171     # double 2.0000000000000001E-10
	.text
	.align	16, 0x90
	.type	control_compress_left,@function
control_compress_left:                  # @control_compress_left
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movq	-32(%rbp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rcx
	ucomisd	(%rcx), %xmm0
	jb	.LBB36_3
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jae	.LBB36_4
# BB#2:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	120(%rcx), %rax
	je	.LBB36_4
.LBB36_3:                               # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	%rax, -16(%rbp)
.LBB36_4:                               # %if.end
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB36_6
# BB#5:                                 # %if.then.6
	movsd	.LCPI36_2, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, -56(%rbp)
	jmp	.LBB36_10
.LBB36_6:                               # %if.else
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -68(%rbp)
.LBB36_7:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB36_9
# BB#8:                                 # %while.body
                                        #   in Loop: Header=BB36_7 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	movq	-48(%rbp), %rcx
	movq	112(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	jmp	.LBB36_7
.LBB36_9:                               # %while.end
	movsd	.LCPI36_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI36_1, %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm2           # xmm2 = mem[0],zero
	cvtsi2sdl	-68(%rbp), %xmm3
	mulsd	%xmm3, %xmm1
	mulsd	%xmm0, %xmm1
	addsd	%xmm1, %xmm2
	movsd	%xmm2, -56(%rbp)
.LBB36_10:                              # %if.end.13
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	120(%rcx), %rax
	jne	.LBB36_12
# BB#11:                                # %if.then.17
	movsd	.LCPI36_2, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)
	jmp	.LBB36_16
.LBB36_12:                              # %if.else.20
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$1, -68(%rbp)
.LBB36_13:                              # %while.cond.21
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB36_15
# BB#14:                                # %while.body.24
                                        #   in Loop: Header=BB36_13 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	movq	-48(%rbp), %rcx
	movq	120(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	jmp	.LBB36_13
.LBB36_15:                              # %while.end.27
	movsd	.LCPI36_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI36_1, %xmm1        # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm2         # xmm2 = mem[0],zero
	cvtsi2sdl	-68(%rbp), %xmm3
	mulsd	%xmm3, %xmm1
	mulsd	%xmm0, %xmm1
	subsd	%xmm1, %xmm2
	movsd	%xmm2, -64(%rbp)
.LBB36_16:                              # %if.end.33
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-64(%rbp), %xmm0
	jbe	.LBB36_18
# BB#17:                                # %cond.true
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB36_22
.LBB36_18:                              # %cond.false
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB36_20
# BB#19:                                # %cond.true.38
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB36_21
.LBB36_20:                              # %cond.false.39
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
.LBB36_21:                              # %cond.end
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
.LBB36_22:                              # %cond.end.40
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB36_24
# BB#23:                                # %if.then.44
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	112(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_gradient_segment_range_compress
	jmp	.LBB36_25
.LBB36_24:                              # %if.else.49
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_gradient_segment_range_compress
.LBB36_25:                              # %if.end.52
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	120(%rcx), %rax
	je	.LBB36_27
# BB#26:                                # %if.then.56
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	callq	gimp_gradient_segment_range_compress
	jmp	.LBB36_28
.LBB36_27:                              # %if.else.58
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	callq	gimp_gradient_segment_range_compress
.LBB36_28:                              # %if.end.60
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	control_compress_left, .Lfunc_end36-control_compress_left
	.cfi_endproc

	.align	16, 0x90
	.type	control_move,@function
control_move:                           # @control_move
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	160(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movl	328(%rax), %ecx
	callq	gimp_gradient_segment_range_move
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	control_move, .Lfunc_end37-control_move
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI38_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	control_draw,@function
control_draw:                           # @control_draw
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp119:
	.cfi_def_cfa_offset 16
.Ltmp120:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp121:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm1, -48(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB38_2
# BB#1:                                 # %if.then
	jmp	.LBB38_27
.LBB38_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	256(%rax), %rdi
	callq	gtk_widget_get_style
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	304(%rax), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	callq	control_calc_p_pos
	movl	%eax, -72(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	312(%rcx), %rcx
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	callq	control_calc_p_pos
	movl	%eax, -76(%rbp)
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rcx
	addq	$384, %rcx              # imm = 0x180
	movq	%rcx, %rsi
	callq	gdk_cairo_set_source_color
	xorps	%xmm0, %xmm0
	movq	-24(%rbp), %rdi
	cvtsi2sdl	-28(%rbp), %xmm2
	cvtsi2sdl	-32(%rbp), %xmm3
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_rectangle
	movq	-24(%rbp), %rdi
	callq	cairo_fill
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rcx
	addq	$384, %rcx              # imm = 0x180
	addq	$36, %rcx
	movq	%rcx, %rsi
	callq	gdk_cairo_set_source_color
	xorps	%xmm1, %xmm1
	movq	-24(%rbp), %rdi
	cvtsi2sdl	-72(%rbp), %xmm0
	movl	-76(%rbp), %eax
	subl	-72(%rbp), %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm2
	cvtsi2sdl	-32(%rbp), %xmm3
	callq	cairo_rectangle
	movq	-24(%rbp), %rdi
	callq	cairo_fill
	movl	$0, -92(%rbp)
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rcx, -64(%rbp)
.LBB38_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB38_12
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB38_3 Depth=1
	movq	-64(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	304(%rcx), %rax
	jne	.LBB38_6
# BB#5:                                 # %if.then.14
                                        #   in Loop: Header=BB38_3 Depth=1
	movl	$1, -92(%rbp)
.LBB38_6:                               # %if.end.15
                                        #   in Loop: Header=BB38_3 Depth=1
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movl	-32(%rbp), %edx
	movl	-92(%rbp), %ecx
	callq	control_draw_normal_handle
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-64(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movl	-32(%rbp), %edx
	movl	-92(%rbp), %ecx
	callq	control_draw_middle_handle
	movq	-64(%rbp), %rax
	cmpq	$0, 120(%rax)
	jne	.LBB38_8
# BB#7:                                 # %if.then.19
                                        #   in Loop: Header=BB38_3 Depth=1
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-64(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movl	-32(%rbp), %edx
	movl	-92(%rbp), %ecx
	callq	control_draw_normal_handle
.LBB38_8:                               # %if.end.21
                                        #   in Loop: Header=BB38_3 Depth=1
	movq	-64(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	312(%rcx), %rax
	jne	.LBB38_10
# BB#9:                                 # %if.then.25
                                        #   in Loop: Header=BB38_3 Depth=1
	movl	$0, -92(%rbp)
.LBB38_10:                              # %if.end.26
                                        #   in Loop: Header=BB38_3 Depth=1
	jmp	.LBB38_11
.LBB38_11:                              # %for.inc
                                        #   in Loop: Header=BB38_3 Depth=1
	movq	-64(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB38_3
.LBB38_12:                              # %for.end
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	332(%rax), %esi
	callq	control_calc_g_pos
	movsd	.LCPI38_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
	movq	-16(%rbp), %rdi
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	jbe	.LBB38_14
# BB#13:                                # %cond.true
	movsd	.LCPI38_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jmp	.LBB38_18
.LBB38_14:                              # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-88(%rbp), %xmm0
	jbe	.LBB38_16
# BB#15:                                # %cond.true.33
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	jmp	.LBB38_17
.LBB38_16:                              # %cond.false.34
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
.LBB38_17:                              # %cond.end
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
.LBB38_18:                              # %cond.end.35
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	leaq	-64(%rbp), %rsi
	leaq	-68(%rbp), %rdx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	callq	seg_get_closest_handle
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -64(%rbp)
	movb	%cl, -129(%rbp)         # 1-byte Spill
	je	.LBB38_20
# BB#19:                                # %land.rhs
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	304(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	312(%rax), %rcx
	callq	seg_in_selection
	cmpl	$0, %eax
	setne	%r8b
	movb	%r8b, -129(%rbp)        # 1-byte Spill
.LBB38_20:                              # %land.end
	movb	-129(%rbp), %al         # 1-byte Reload
	movzbl	%al, %ecx
	andl	$1, %ecx
	movl	%ecx, -92(%rbp)
	movl	-68(%rbp), %ecx
	movl	%ecx, %edx
	subl	$1, %edx
	movl	%ecx, -136(%rbp)        # 4-byte Spill
	movl	%edx, -140(%rbp)        # 4-byte Spill
	je	.LBB38_21
	jmp	.LBB38_28
.LBB38_28:                              # %land.end
	movl	-136(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	je	.LBB38_25
	jmp	.LBB38_26
.LBB38_21:                              # %sw.bb
	cmpq	$0, -64(%rbp)
	je	.LBB38_23
# BB#22:                                # %if.then.43
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movl	-32(%rbp), %edx
	movl	-92(%rbp), %ecx
	callq	control_draw_normal_handle
	jmp	.LBB38_24
.LBB38_23:                              # %if.else
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_gradient_segment_get_last
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-8(%rbp), %rdi
	cmpq	312(%rdi), %rax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -92(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-64(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movl	-32(%rbp), %edx
	movl	-92(%rbp), %ecx
	callq	control_draw_normal_handle
.LBB38_24:                              # %if.end.51
	jmp	.LBB38_27
.LBB38_25:                              # %sw.bb.52
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-64(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movl	-32(%rbp), %edx
	movl	-92(%rbp), %ecx
	callq	control_draw_middle_handle
	jmp	.LBB38_27
.LBB38_26:                              # %sw.default
	jmp	.LBB38_27
.LBB38_27:                              # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	control_draw, .Lfunc_end38-control_draw
	.cfi_endproc

	.align	16, 0x90
	.type	control_draw_normal_handle,@function
control_draw_normal_handle:             # @control_draw_normal_handle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp122:
	.cfi_def_cfa_offset 16
.Ltmp123:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp124:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	256(%rsi), %rdi
	callq	gtk_widget_get_style
	xorl	%ecx, %ecx
	movl	$3, %edx
	movq	%rax, -40(%rbp)
	cmpl	$0, -32(%rbp)
	cmovnel	%edx, %ecx
	movl	%ecx, -44(%rbp)
	movq	-16(%rbp), %rdi
	movl	-44(%rbp), %ecx
	movl	%ecx, %eax
	movq	-40(%rbp), %rsi
	addq	$444, %rsi              # imm = 0x1BC
	imulq	$12, %rax, %rax
	addq	%rax, %rsi
	movq	-40(%rbp), %rax
	addq	$504, %rax              # imm = 0x1F8
	movq	-8(%rbp), %r8
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	control_calc_p_pos
	movl	-28(%rbp), %r8d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movl	%eax, %ecx
	callq	control_draw_handle
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	control_draw_normal_handle, .Lfunc_end39-control_draw_normal_handle
	.cfi_endproc

	.align	16, 0x90
	.type	control_draw_middle_handle,@function
control_draw_middle_handle:             # @control_draw_middle_handle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp125:
	.cfi_def_cfa_offset 16
.Ltmp126:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp127:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	256(%rsi), %rdi
	callq	gtk_widget_get_style
	xorl	%ecx, %ecx
	movl	$3, %edx
	movq	%rax, -40(%rbp)
	cmpl	$0, -32(%rbp)
	cmovnel	%edx, %ecx
	movl	%ecx, -44(%rbp)
	movq	-16(%rbp), %rdi
	movl	-44(%rbp), %ecx
	movl	%ecx, %eax
	movq	-40(%rbp), %rsi
	addq	$444, %rsi              # imm = 0x1BC
	imulq	$12, %rax, %rax
	addq	%rax, %rsi
	movq	-40(%rbp), %rax
	addq	$516, %rax              # imm = 0x204
	movq	-8(%rbp), %r8
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	control_calc_p_pos
	movl	-28(%rbp), %r8d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movl	%eax, %ecx
	callq	control_draw_handle
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	control_draw_middle_handle, .Lfunc_end40-control_draw_middle_handle
	.cfi_endproc

	.align	16, 0x90
	.type	seg_in_selection,@function
seg_in_selection:                       # @seg_in_selection
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp128:
	.cfi_def_cfa_offset 16
.Ltmp129:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp130:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -48(%rbp)
.LBB41_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB41_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB41_1 Depth=1
	movq	-48(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB41_4
# BB#3:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB41_9
.LBB41_4:                               # %if.end
                                        #   in Loop: Header=BB41_1 Depth=1
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB41_6
# BB#5:                                 # %if.then.2
	jmp	.LBB41_8
.LBB41_6:                               # %if.end.3
                                        #   in Loop: Header=BB41_1 Depth=1
	jmp	.LBB41_7
.LBB41_7:                               # %for.inc
                                        #   in Loop: Header=BB41_1 Depth=1
	movq	-48(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB41_1
.LBB41_8:                               # %for.end
	movl	$0, -4(%rbp)
.LBB41_9:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end41:
	.size	seg_in_selection, .Lfunc_end41-seg_in_selection
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI42_0:
	.quad	4607182418800017408     # double 1
.LCPI42_1:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	control_draw_handle,@function
control_draw_handle:                    # @control_draw_handle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp131:
	.cfi_def_cfa_offset 16
.Ltmp132:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp133:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	xorps	%xmm1, %xmm1
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movq	-8(%rbp), %rdi
	cvtsi2sdl	-28(%rbp), %xmm0
	callq	cairo_move_to
	movsd	.LCPI42_1, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	cvtsi2sdl	-28(%rbp), %xmm1
	cvtsi2sdl	-32(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	cvtsi2sdl	-32(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-40(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_line_to
	movsd	.LCPI42_1, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	cvtsi2sdl	-28(%rbp), %xmm1
	cvtsi2sdl	-32(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	cvtsi2sdl	-32(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_line_to
	xorps	%xmm1, %xmm1
	movq	-8(%rbp), %rdi
	cvtsi2sdl	-28(%rbp), %xmm0
	callq	cairo_line_to
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gdk_cairo_set_source_color
	movq	-8(%rbp), %rdi
	callq	cairo_fill_preserve
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gdk_cairo_set_source_color
	movsd	.LCPI42_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	callq	cairo_set_line_width
	movq	-8(%rbp), %rdi
	callq	cairo_stroke
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	control_draw_handle, .Lfunc_end42-control_draw_handle
	.cfi_endproc

	.type	gimp_gradient_editor_get_type.g_define_type_id__volatile,@object # @gimp_gradient_editor_get_type.g_define_type_id__volatile
	.local	gimp_gradient_editor_get_type.g_define_type_id__volatile
	.comm	gimp_gradient_editor_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpGradientEditor"
	.size	.L.str, 19

	.type	gimp_gradient_editor_get_type.g_implement_interface_info,@object # @gimp_gradient_editor_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_gradient_editor_get_type.g_implement_interface_info:
	.quad	gimp_gradient_editor_docked_iface_init
	.quad	0
	.quad	0
	.size	gimp_gradient_editor_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_gradient_editor_new,@object # @__func__.gimp_gradient_editor_new
.L__func__.gimp_gradient_editor_new:
	.asciz	"gimp_gradient_editor_new"
	.size	.L__func__.gimp_gradient_editor_new, 25

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"menu-factory"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"menu-identifier"
	.size	.L.str.4, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"<GradientEditor>"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"ui-path"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"/gradient-editor-popup"
	.size	.L.str.7, 23

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"data-factory"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"context"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"data"
	.size	.L.str.10, 5

	.type	.L__func__.gimp_gradient_editor_update,@object # @__func__.gimp_gradient_editor_update
.L__func__.gimp_gradient_editor_update:
	.asciz	"gimp_gradient_editor_update"
	.size	.L__func__.gimp_gradient_editor_update, 28

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"GIMP_IS_GRADIENT_EDITOR (editor)"
	.size	.L.str.11, 33

	.type	.L__func__.gimp_gradient_editor_zoom,@object # @__func__.gimp_gradient_editor_zoom
.L__func__.gimp_gradient_editor_zoom:
	.asciz	"gimp_gradient_editor_zoom"
	.size	.L__func__.gimp_gradient_editor_zoom, 26

	.type	gimp_gradient_editor_parent_class,@object # @gimp_gradient_editor_parent_class
	.local	gimp_gradient_editor_parent_class
	.comm	gimp_gradient_editor_parent_class,8,8
	.type	GimpGradientEditor_private_offset,@object # @GimpGradientEditor_private_offset
	.local	GimpGradientEditor_private_offset
	.comm	GimpGradientEditor_private_offset,4,4
	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Gradient Editor"
	.size	.L.str.12, 16

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gradient-editor"
	.size	.L.str.13, 16

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gradient-editor-zoom-out"
	.size	.L.str.14, 25

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gradient-editor-zoom-in"
	.size	.L.str.15, 24

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gradient-editor-zoom-all"
	.size	.L.str.16, 25

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"dirty"
	.size	.L.str.17, 6

	.type	parent_docked_iface,@object # @parent_docked_iface
	.local	parent_docked_iface
	.comm	parent_docked_iface,8,8
	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"event"
	.size	.L.str.18, 6

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"expose-event"
	.size	.L.str.19, 13

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"value-changed"
	.size	.L.str.20, 14

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"changed"
	.size	.L.str.21, 8

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"RGB (%d, %d, %d)"
	.size	.L.str.22, 17

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"(%0.3f, %0.3f, %0.3f)"
	.size	.L.str.23, 22

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Foreground color set to:"
	.size	.L.str.24, 25

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Background color set to:"
	.size	.L.str.25, 25

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Position: %0.4f"
	.size	.L.str.26, 16

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"RGB (%0.3f, %0.3f, %0.3f)"
	.size	.L.str.27, 26

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"HSV (%0.1f, %0.1f, %0.1f)"
	.size	.L.str.28, 26

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Luminance: %0.1f    Opacity: %0.1f"
	.size	.L.str.29, 35

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"%s: in_handle is true, but received handle type %d."
	.size	.L.str.30, 52

	.type	.L__func__.control_button_press,@object # @__func__.control_button_press
.L__func__.control_button_press:
	.asciz	"control_button_press"
	.size	.L__func__.control_button_press, 21

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"%s: Cannot handle drag mode %d."
	.size	.L.str.31, 32

	.type	.L__func__.control_point_in_handle,@object # @__func__.control_point_in_handle
.L__func__.control_point_in_handle:
	.asciz	"control_point_in_handle"
	.size	.L__func__.control_point_in_handle, 24

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"%s-Drag: move & compress"
	.size	.L.str.32, 25

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Drag: move"
	.size	.L.str.33, 11

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"%s-Click: extend selection"
	.size	.L.str.34, 27

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Click: select"
	.size	.L.str.35, 14

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Click: select    Drag: move"
	.size	.L.str.36, 28

	.type	.L__func__.control_do_hint,@object # @__func__.control_do_hint
.L__func__.control_do_hint:
	.asciz	"control_do_hint"
	.size	.L__func__.control_do_hint, 16

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Handle position: %0.4f"
	.size	.L.str.37, 23

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Distance: %0.4f"
	.size	.L.str.38, 16

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"%s: Attempting to move bogus handle %d."
	.size	.L.str.39, 40

	.type	.L__func__.control_motion,@object # @__func__.control_motion
.L__func__.control_motion:
	.asciz	"control_motion"
	.size	.L__func__.control_motion, 15

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Zoom factor: %d:1"
	.size	.L.str.40, 18

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Displaying [%0.4f, %0.4f]"
	.size	.L.str.41, 26

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"xalign"
	.size	.L.str.42, 7

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"yalign"
	.size	.L.str.43, 7

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"single-line-mode"
	.size	.L.str.44, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
