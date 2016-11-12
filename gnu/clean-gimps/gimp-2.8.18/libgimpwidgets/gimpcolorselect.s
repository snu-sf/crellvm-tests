	.text
	.file	"gimpcolorselect.bc"
	.globl	gimp_color_select_get_type
	.align	16, 0x90
	.type	gimp_color_select_get_type,@function
gimp_color_select_get_type:             # @gimp_color_select_get_type
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
	movq	gimp_color_select_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_color_select_get_type.g_define_type_id__volatile(%rip), %rax
	movq	%rax, %rdi
	callq	g_once_init_enter@PLT
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
	callq	gimp_color_selector_get_type@PLT
	leaq	.L.str(%rip), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string@PLT
	movl	$936, %edx              # imm = 0x3A8
	leaq	gimp_color_select_class_intern_init(%rip), %rdi
	movl	$264, %r8d              # imm = 0x108
	leaq	gimp_color_select_init(%rip), %rcx
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
	callq	g_type_register_static_simple@PLT
	leaq	gimp_color_select_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_color_select_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_color_select_get_type, .Lfunc_end0-gimp_color_select_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_select_class_intern_init,@function
gimp_color_select_class_intern_init:    # @gimp_color_select_class_intern_init
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
	callq	g_type_class_peek_parent@PLT
	movq	%rax, gimp_color_select_parent_class(%rip)
	cmpl	$0, GimpColorSelect_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpColorSelect_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_color_select_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_color_select_class_intern_init, .Lfunc_end1-gimp_color_select_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_select_init,@function
gimp_color_select_init:                 # @gimp_color_select_init
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
	subq	$288, %rsp              # imm = 0x120
	xorl	%eax, %eax
	movl	$4, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$0, 252(%rdi)
	movq	-8(%rbp), %rdi
	movl	$9, 256(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 260(%rdi)
	movl	%eax, %edi
	callq	gtk_box_new@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start@PLT
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_frame_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_frame_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start@PLT
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show@PLT
	callq	gimp_preview_area_new@PLT
	movl	$150, %ecx
	movq	-8(%rbp), %rsi
	movq	%rax, 224(%rsi)
	movq	-8(%rbp), %rax
	movq	224(%rax), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_widget_set_size_request@PLT
	movl	$4882, %esi             # imm = 0x1312
	movq	-8(%rbp), %rax
	movq	224(%rax), %rdi
	callq	gtk_widget_set_events@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-8(%rbp), %rsi
	movq	224(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	movq	-8(%rbp), %rax
	movq	224(%rax), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.4(%rip), %rsi
	leaq	gimp_color_select_xy_size_allocate(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	224(%rdi), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data@PLT
	leaq	.L.str.5(%rip), %rsi
	leaq	gimp_color_select_xy_expose(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$1, %r9d
	movq	-8(%rbp), %rdx
	movq	224(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data@PLT
	leaq	.L.str.6(%rip), %rsi
	leaq	gimp_color_select_xy_events(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	224(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data@PLT
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_frame_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type@PLT
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start@PLT
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show@PLT
	callq	gimp_preview_area_new@PLT
	movl	$15, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-8(%rbp), %rdi
	movq	%rax, 232(%rdi)
	movq	-8(%rbp), %rax
	movq	232(%rax), %rdi
	callq	gtk_widget_set_size_request@PLT
	movl	$4882, %esi             # imm = 0x1312
	movq	-8(%rbp), %rax
	movq	232(%rax), %rdi
	callq	gtk_widget_set_events@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-8(%rbp), %rsi
	movq	232(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	movq	-8(%rbp), %rax
	movq	232(%rax), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.4(%rip), %rsi
	leaq	gimp_color_select_z_size_allocate(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	232(%rdi), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data@PLT
	leaq	.L.str.5(%rip), %rsi
	leaq	gimp_color_select_z_expose(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$1, %r9d
	movq	-8(%rbp), %rdx
	movq	232(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data@PLT
	leaq	.L.str.6(%rip), %rsi
	leaq	gimp_color_select_z_events(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	232(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data@PLT
	movl	$1, %edi
	movl	$2, %esi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_box_new@PLT
	movq	-8(%rbp), %rcx
	movq	%rax, 216(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rcx
	movq	216(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start@PLT
	movq	-8(%rbp), %rax
	movq	216(%rax), %rdi
	callq	gtk_widget_show@PLT
	movq	$0, -48(%rbp)
	callq	gimp_color_selector_channel_get_type@PLT
	movq	%rax, %rdi
	callq	g_type_class_ref@PLT
	movq	%rax, -40(%rbp)
	movl	$0, -28(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$6, -28(%rbp)
	jae	.LBB2_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-40(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_enum_get_desc@PLT
	leaq	.L.str.7(%rip), %rdi
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rsi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_mnemonic@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type@PLT
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group@PLT
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type@PLT
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_mode@PLT
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -244(%rbp)        # 4-byte Spill
	movl	-244(%rbp), %ecx        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.8(%rip), %rsi
	movl	-28(%rbp), %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	g_object_set_data@PLT
	cmpl	$0, -28(%rbp)
	jne	.LBB2_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type@PLT
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active@PLT
.LBB2_4:                                # %if.end
                                        #   in Loop: Header=BB2_1 Depth=1
	leaq	.L.str.7(%rip), %rdi
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	16(%rcx), %rsi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data@PLT
	leaq	.L.str.9(%rip), %rsi
	leaq	gimp_color_select_channel_toggled(%rip), %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-272(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movq	%rax, -280(%rbp)        # 8-byte Spill
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB2_1
.LBB2_6:                                # %for.end
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_unref@PLT
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_color_select_init, .Lfunc_end2-gimp_color_select_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_select_class_init,@function
gimp_color_select_class_init:           # @gimp_color_select_class_init
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_color_selector_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	leaq	gimp_color_select_set_channel(%rip), %rsi
	leaq	gimp_color_select_set_color(%rip), %rdi
	leaq	gimp_color_select_togg_sensitive(%rip), %rcx
	leaq	gimp_color_select_togg_visible(%rip), %rdx
	leaq	.L.str.3(%rip), %r8
	leaq	.L.str.2(%rip), %r9
	leaq	.L.str.1(%rip), %r10
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%r10, 824(%rax)
	movq	-16(%rbp), %rax
	movq	%r9, 832(%rax)
	movq	-16(%rbp), %rax
	movq	%r8, 840(%rax)
	movq	-16(%rbp), %rax
	movq	%rdx, 848(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 856(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 872(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 880(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_color_select_class_init, .Lfunc_end3-gimp_color_select_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_select_togg_visible,@function
gimp_color_select_togg_visible:         # @gimp_color_select_togg_visible
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
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_color_select_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	216(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	gtk_widget_set_visible@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_color_select_togg_visible, .Lfunc_end4-gimp_color_select_togg_visible
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_select_togg_sensitive,@function
gimp_color_select_togg_sensitive:       # @gimp_color_select_togg_sensitive
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
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_color_select_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	216(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	gtk_widget_set_sensitive@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_color_select_togg_sensitive, .Lfunc_end5-gimp_color_select_togg_sensitive
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_select_set_color,@function
gimp_color_select_set_color:            # @gimp_color_select_set_color
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_color_select_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$14, %esi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_color_select_update
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_color_select_set_color, .Lfunc_end6-gimp_color_select_set_color
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_select_set_channel,@function
gimp_color_select_set_channel:          # @gimp_color_select_set_channel
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_color_select_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, %eax
	movq	%rax, %rsi
	subq	$5, %rsi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	ja	.LBB7_7
# BB#9:                                 # %entry
	leaq	.LJTI7_0(%rip), %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB7_1:                                # %sw.bb
	movq	-24(%rbp), %rax
	movl	$0, 252(%rax)
	movq	-24(%rbp), %rax
	movl	$9, 256(%rax)
	jmp	.LBB7_8
.LBB7_2:                                # %sw.bb.2
	movq	-24(%rbp), %rax
	movl	$1, 252(%rax)
	movq	-24(%rbp), %rax
	movl	$8, 256(%rax)
	jmp	.LBB7_8
.LBB7_3:                                # %sw.bb.5
	movq	-24(%rbp), %rax
	movl	$2, 252(%rax)
	movq	-24(%rbp), %rax
	movl	$7, 256(%rax)
	jmp	.LBB7_8
.LBB7_4:                                # %sw.bb.8
	movq	-24(%rbp), %rax
	movl	$3, 252(%rax)
	movq	-24(%rbp), %rax
	movl	$12, 256(%rax)
	jmp	.LBB7_8
.LBB7_5:                                # %sw.bb.11
	movq	-24(%rbp), %rax
	movl	$4, 252(%rax)
	movq	-24(%rbp), %rax
	movl	$11, 256(%rax)
	jmp	.LBB7_8
.LBB7_6:                                # %sw.bb.14
	movq	-24(%rbp), %rax
	movl	$5, 252(%rax)
	movq	-24(%rbp), %rax
	movl	$10, 256(%rax)
	jmp	.LBB7_8
.LBB7_7:                                # %sw.default
	jmp	.LBB7_8
.LBB7_8:                                # %sw.epilog
	movl	$14, %esi
	movq	-24(%rbp), %rdi
	callq	gimp_color_select_update
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_color_select_set_channel, .Lfunc_end7-gimp_color_select_set_channel
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI7_0:
	.long	.LBB7_1-.LJTI7_0
	.long	.LBB7_2-.LJTI7_0
	.long	.LBB7_3-.LJTI7_0
	.long	.LBB7_4-.LJTI7_0
	.long	.LBB7_5-.LJTI7_0
	.long	.LBB7_6-.LJTI7_0

	.text
	.align	16, 0x90
	.type	gimp_color_select_update,@function
gimp_color_select_update:               # @gimp_color_select_update
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
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_color_selector_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gimp_color_select_update_pos
.LBB8_2:                                # %if.end
	movl	-12(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB8_4
# BB#3:                                 # %if.then.4
	movq	-8(%rbp), %rdi
	callq	gimp_color_select_update_values
.LBB8_4:                                # %if.end.5
	movl	-12(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB8_6
# BB#5:                                 # %if.then.8
	movq	-8(%rbp), %rax
	movq	224(%rax), %rdi
	movq	-8(%rbp), %rax
	movl	256(%rax), %esi
	movq	-24(%rbp), %rax
	addq	$176, %rax
	movq	-24(%rbp), %rcx
	addq	$144, %rcx
	movq	%rax, %rdx
	callq	gimp_color_select_image_fill
	movq	-8(%rbp), %rax
	movq	224(%rax), %rdi
	callq	gtk_widget_queue_draw@PLT
.LBB8_6:                                # %if.end.10
	movl	-12(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB8_8
# BB#7:                                 # %if.then.13
	movq	-8(%rbp), %rax
	movq	232(%rax), %rdi
	movq	-8(%rbp), %rax
	movl	252(%rax), %esi
	movq	-24(%rbp), %rax
	addq	$176, %rax
	movq	-24(%rbp), %rcx
	addq	$144, %rcx
	movq	%rax, %rdx
	callq	gimp_color_select_image_fill
	movq	-8(%rbp), %rax
	movq	232(%rax), %rdi
	callq	gtk_widget_queue_draw@PLT
.LBB8_8:                                # %if.end.17
	movl	-12(%rbp), %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB8_10
# BB#9:                                 # %if.then.20
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_color_selector_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_color_selector_color_changed@PLT
.LBB8_10:                               # %if.end.23
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_color_select_update, .Lfunc_end8-gimp_color_select_update
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4602678819172646912     # double 0.5
.LCPI9_1:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	gimp_color_select_update_pos,@function
gimp_color_select_update_pos:           # @gimp_color_select_update_pos
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
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_color_selector_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	252(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rsi
	subq	$5, %rsi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	ja	.LBB9_7
# BB#9:                                 # %entry
	leaq	.LJTI9_0(%rip), %rax
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB9_1:                                # %sw.bb
	movsd	.LCPI9_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI9_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	movaps	%xmm1, %xmm2
	mulsd	160(%rax), %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 240(%rax)
	movq	-16(%rbp), %rax
	movaps	%xmm1, %xmm2
	mulsd	152(%rax), %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 244(%rax)
	movq	-16(%rbp), %rax
	mulsd	144(%rax), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 248(%rax)
	jmp	.LBB9_8
.LBB9_2:                                # %sw.bb.14
	movsd	.LCPI9_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI9_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	movaps	%xmm1, %xmm2
	mulsd	160(%rax), %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 240(%rax)
	movq	-16(%rbp), %rax
	movaps	%xmm1, %xmm2
	mulsd	144(%rax), %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 244(%rax)
	movq	-16(%rbp), %rax
	mulsd	152(%rax), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 248(%rax)
	jmp	.LBB9_8
.LBB9_3:                                # %sw.bb.36
	movsd	.LCPI9_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI9_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	movaps	%xmm1, %xmm2
	mulsd	152(%rax), %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 240(%rax)
	movq	-16(%rbp), %rax
	movaps	%xmm1, %xmm2
	mulsd	144(%rax), %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 244(%rax)
	movq	-16(%rbp), %rax
	mulsd	160(%rax), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 248(%rax)
	jmp	.LBB9_8
.LBB9_4:                                # %sw.bb.58
	movsd	.LCPI9_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI9_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	movaps	%xmm1, %xmm2
	mulsd	192(%rax), %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 240(%rax)
	movq	-16(%rbp), %rax
	movaps	%xmm1, %xmm2
	mulsd	184(%rax), %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 244(%rax)
	movq	-16(%rbp), %rax
	mulsd	176(%rax), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 248(%rax)
	jmp	.LBB9_8
.LBB9_5:                                # %sw.bb.76
	movsd	.LCPI9_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI9_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	movaps	%xmm1, %xmm2
	mulsd	192(%rax), %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 240(%rax)
	movq	-16(%rbp), %rax
	movaps	%xmm1, %xmm2
	mulsd	176(%rax), %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 244(%rax)
	movq	-16(%rbp), %rax
	mulsd	184(%rax), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 248(%rax)
	jmp	.LBB9_8
.LBB9_6:                                # %sw.bb.98
	movsd	.LCPI9_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI9_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	movaps	%xmm1, %xmm2
	mulsd	184(%rax), %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 240(%rax)
	movq	-16(%rbp), %rax
	movaps	%xmm1, %xmm2
	mulsd	176(%rax), %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 244(%rax)
	movq	-16(%rbp), %rax
	mulsd	192(%rax), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 248(%rax)
	jmp	.LBB9_8
.LBB9_7:                                # %sw.default
	jmp	.LBB9_8
.LBB9_8:                                # %sw.epilog
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_color_select_update_pos, .Lfunc_end9-gimp_color_select_update_pos
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI9_0:
	.long	.LBB9_4-.LJTI9_0
	.long	.LBB9_5-.LJTI9_0
	.long	.LBB9_6-.LJTI9_0
	.long	.LBB9_1-.LJTI9_0
	.long	.LBB9_2-.LJTI9_0
	.long	.LBB9_3-.LJTI9_0

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	gimp_color_select_update_values,@function
gimp_color_select_update_values:        # @gimp_color_select_update_values
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
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_color_selector_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	252(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rsi
	subq	$5, %rsi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	ja	.LBB10_7
# BB#13:                                # %entry
	leaq	.LJTI10_0(%rip), %rax
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB10_1:                               # %sw.bb
	movsd	.LCPI10_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	cvtsi2sdl	240(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movq	-16(%rbp), %rax
	movsd	%xmm1, 160(%rax)
	movq	-8(%rbp), %rax
	cvtsi2sdl	244(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movq	-16(%rbp), %rax
	movsd	%xmm1, 152(%rax)
	movq	-8(%rbp), %rax
	cvtsi2sdl	248(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movq	-16(%rbp), %rax
	movsd	%xmm1, 144(%rax)
	jmp	.LBB10_8
.LBB10_2:                               # %sw.bb.12
	movsd	.LCPI10_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	cvtsi2sdl	240(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movq	-16(%rbp), %rax
	movsd	%xmm1, 160(%rax)
	movq	-8(%rbp), %rax
	cvtsi2sdl	244(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movq	-16(%rbp), %rax
	movsd	%xmm1, 144(%rax)
	movq	-8(%rbp), %rax
	cvtsi2sdl	248(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movq	-16(%rbp), %rax
	movsd	%xmm1, 152(%rax)
	jmp	.LBB10_8
.LBB10_3:                               # %sw.bb.31
	movsd	.LCPI10_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	cvtsi2sdl	240(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movq	-16(%rbp), %rax
	movsd	%xmm1, 152(%rax)
	movq	-8(%rbp), %rax
	cvtsi2sdl	244(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movq	-16(%rbp), %rax
	movsd	%xmm1, 144(%rax)
	movq	-8(%rbp), %rax
	cvtsi2sdl	248(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movq	-16(%rbp), %rax
	movsd	%xmm1, 160(%rax)
	jmp	.LBB10_8
.LBB10_4:                               # %sw.bb.50
	movsd	.LCPI10_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	cvtsi2sdl	240(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movq	-16(%rbp), %rax
	movsd	%xmm1, 192(%rax)
	movq	-8(%rbp), %rax
	cvtsi2sdl	244(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movq	-16(%rbp), %rax
	movsd	%xmm1, 184(%rax)
	movq	-8(%rbp), %rax
	cvtsi2sdl	248(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movq	-16(%rbp), %rax
	movsd	%xmm1, 176(%rax)
	jmp	.LBB10_8
.LBB10_5:                               # %sw.bb.65
	movsd	.LCPI10_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	cvtsi2sdl	240(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movq	-16(%rbp), %rax
	movsd	%xmm1, 192(%rax)
	movq	-8(%rbp), %rax
	cvtsi2sdl	244(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movq	-16(%rbp), %rax
	movsd	%xmm1, 176(%rax)
	movq	-8(%rbp), %rax
	cvtsi2sdl	248(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movq	-16(%rbp), %rax
	movsd	%xmm1, 184(%rax)
	jmp	.LBB10_8
.LBB10_6:                               # %sw.bb.84
	movsd	.LCPI10_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	cvtsi2sdl	240(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movq	-16(%rbp), %rax
	movsd	%xmm1, 184(%rax)
	movq	-8(%rbp), %rax
	cvtsi2sdl	244(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movq	-16(%rbp), %rax
	movsd	%xmm1, 176(%rax)
	movq	-8(%rbp), %rax
	cvtsi2sdl	248(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movq	-16(%rbp), %rax
	movsd	%xmm1, 192(%rax)
	jmp	.LBB10_8
.LBB10_7:                               # %sw.default
	jmp	.LBB10_8
.LBB10_8:                               # %sw.epilog
	movq	-8(%rbp), %rax
	movl	252(%rax), %ecx
	movl	%ecx, %edx
	subl	$3, %edx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movl	%edx, -48(%rbp)         # 4-byte Spill
	jb	.LBB10_10
	jmp	.LBB10_14
.LBB10_14:                              # %sw.epilog
	movl	-44(%rbp), %eax         # 4-byte Reload
	addl	$-3, %eax
	subl	$2, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	ja	.LBB10_11
	jmp	.LBB10_9
.LBB10_9:                               # %sw.bb.104
	movq	-16(%rbp), %rax
	addq	$144, %rax
	movq	-16(%rbp), %rcx
	addq	$176, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_rgb_to_hsv@PLT
	jmp	.LBB10_12
.LBB10_10:                              # %sw.bb.107
	movq	-16(%rbp), %rax
	addq	$176, %rax
	movq	-16(%rbp), %rcx
	addq	$144, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_hsv_to_rgb@PLT
	jmp	.LBB10_12
.LBB10_11:                              # %sw.default.110
	jmp	.LBB10_12
.LBB10_12:                              # %sw.epilog.111
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_color_select_update_values, .Lfunc_end10-gimp_color_select_update_values
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI10_0:
	.long	.LBB10_4-.LJTI10_0
	.long	.LBB10_5-.LJTI10_0
	.long	.LBB10_6-.LJTI10_0
	.long	.LBB10_1-.LJTI10_0
	.long	.LBB10_2-.LJTI10_0
	.long	.LBB10_3-.LJTI10_0

	.text
	.align	16, 0x90
	.type	gimp_color_select_image_fill,@function
gimp_color_select_image_fill:           # @gimp_color_select_image_fill
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	callq	gtk_widget_get_allocation@PLT
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	leaq	update_procs(%rip), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -56(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -128(%rbp)
	movq	-24(%rbp), %rcx
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	movups	%xmm1, -72(%rbp)
	movups	%xmm0, -88(%rbp)
	movq	-32(%rbp), %rcx
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	movups	%xmm1, -104(%rbp)
	movups	%xmm0, -120(%rbp)
	movl	-132(%rbp), %eax
	movl	%eax, %ecx
	leal	(%rcx,%rcx,2), %eax
	movslq	%eax, %rcx
	addq	$15, %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rdx, -144(%rbp)
	movl	$0, -136(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-136(%rbp), %eax
	cmpl	-128(%rbp), %eax
	jge	.LBB11_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB11_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB11_1 Depth=1
	leaq	-144(%rbp), %rdi
	callq	*-56(%rbp)
.LBB11_4:                               # %if.end
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_preview_area_get_type@PLT
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movl	-136(%rbp), %edx
	movl	-132(%rbp), %r9d
	movq	-144(%rbp), %rsi
	imull	$3, -132(%rbp), %r10d
	subq	$16, %rsp
	movq	%rax, %rdi
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	-164(%rbp), %r9d        # 4-byte Reload
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	gimp_preview_area_draw@PLT
	addq	$16, %rsp
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB11_1
.LBB11_6:                               # %for.end
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_color_select_image_fill, .Lfunc_end11-gimp_color_select_image_fill
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI12_0:
	.long	1135869952              # float 360
.LCPI12_2:
	.long	1114636288              # float 60
.LCPI12_3:
	.long	1132396544              # float 255
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_1:
	.quad	4645040803167600640     # double 360
	.text
	.align	16, 0x90
	.type	color_select_update_hue,@function
color_select_update_hue:                # @color_select_update_hue
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
	movss	.LCPI12_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movsd	.LCPI12_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	cvtsi2sdl	8(%rdi), %xmm2
	mulsd	%xmm1, %xmm2
	movq	-8(%rbp), %rdi
	cvtsi2sdl	16(%rdi), %xmm1
	divsd	%xmm1, %xmm2
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, -20(%rbp)
	movaps	%xmm0, %xmm1
	subss	-20(%rbp), %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB12_2
# BB#1:                                 # %cond.true
	movss	.LCPI12_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -44(%rbp)        # 4-byte Spill
	jmp	.LBB12_6
.LBB12_2:                               # %cond.false
	xorps	%xmm0, %xmm0
	movss	.LCPI12_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	subss	-20(%rbp), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.LBB12_4
# BB#3:                                 # %cond.true.7
	xorps	%xmm0, %xmm0
	movss	%xmm0, -48(%rbp)        # 4-byte Spill
	jmp	.LBB12_5
.LBB12_4:                               # %cond.false.8
	movss	.LCPI12_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	subss	-20(%rbp), %xmm0
	movss	%xmm0, -48(%rbp)        # 4-byte Spill
.LBB12_5:                               # %cond.end
	movss	-48(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -44(%rbp)        # 4-byte Spill
.LBB12_6:                               # %cond.end.10
	movss	-44(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -20(%rbp)
	movss	.LCPI12_2(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	cvttss2si	%xmm0, %eax
	cvtsi2ssl	%eax, %xmm1
	subss	%xmm1, %xmm0
	movss	.LCPI12_3(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -28(%rbp)
	cvttss2si	-20(%rbp), %eax
	movl	%eax, %ecx
	subl	$5, %eax
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movl	%eax, -60(%rbp)         # 4-byte Spill
	ja	.LBB12_13
# BB#18:                                # %cond.end.10
	leaq	.LJTI12_0(%rip), %rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB12_7:                               # %sw.bb
	movl	$255, -28(%rbp)
	cvttss2si	-24(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	$0, -36(%rbp)
	jmp	.LBB12_13
.LBB12_8:                               # %sw.bb.19
	movss	.LCPI12_3(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	subss	-24(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -28(%rbp)
	movl	$255, -32(%rbp)
	movl	$0, -36(%rbp)
	jmp	.LBB12_13
.LBB12_9:                               # %sw.bb.22
	movl	$0, -28(%rbp)
	movl	$255, -32(%rbp)
	cvttss2si	-24(%rbp), %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB12_13
.LBB12_10:                              # %sw.bb.24
	movss	.LCPI12_3(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movl	$0, -28(%rbp)
	subss	-24(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -32(%rbp)
	movl	$255, -36(%rbp)
	jmp	.LBB12_13
.LBB12_11:                              # %sw.bb.27
	cvttss2si	-24(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	$0, -32(%rbp)
	movl	$255, -36(%rbp)
	jmp	.LBB12_13
.LBB12_12:                              # %sw.bb.29
	movss	.LCPI12_3(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movl	$255, -28(%rbp)
	movl	$0, -32(%rbp)
	subss	-24(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -36(%rbp)
.LBB12_13:                              # %sw.epilog
	movl	$0, -40(%rbp)
.LBB12_14:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB12_17
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB12_14 Depth=1
	movl	-28(%rbp), %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movl	-32(%rbp), %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movl	-36(%rbp), %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
# BB#16:                                # %for.inc
                                        #   in Loop: Header=BB12_14 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB12_14
.LBB12_17:                              # %for.end
	popq	%rbp
	retq
.Lfunc_end12:
	.size	color_select_update_hue, .Lfunc_end12-color_select_update_hue
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI12_0:
	.long	.LBB12_7-.LJTI12_0
	.long	.LBB12_8-.LJTI12_0
	.long	.LBB12_9-.LJTI12_0
	.long	.LBB12_10-.LJTI12_0
	.long	.LBB12_11-.LJTI12_0
	.long	.LBB12_12-.LJTI12_0

	.text
	.align	16, 0x90
	.type	color_select_update_saturation,@function
color_select_update_saturation:         # @color_select_update_saturation
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	imull	$255, 8(%rdi), %eax
	movq	-8(%rbp), %rdi
	cltd
	idivl	16(%rdi)
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jge	.LBB13_2
# BB#1:                                 # %if.then
	movl	$0, -20(%rbp)
.LBB13_2:                               # %if.end
	cmpl	$255, -20(%rbp)
	jle	.LBB13_4
# BB#3:                                 # %if.then.2
	movl	$255, -20(%rbp)
.LBB13_4:                               # %if.end.3
	movl	$255, %eax
	subl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$0, -24(%rbp)
.LBB13_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB13_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB13_5 Depth=1
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB13_5 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB13_5
.LBB13_8:                               # %for.end
	popq	%rbp
	retq
.Lfunc_end13:
	.size	color_select_update_saturation, .Lfunc_end13-color_select_update_saturation
	.cfi_endproc

	.align	16, 0x90
	.type	color_select_update_value,@function
color_select_update_value:              # @color_select_update_value
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	imull	$255, 8(%rdi), %eax
	movq	-8(%rbp), %rdi
	cltd
	idivl	16(%rdi)
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jge	.LBB14_2
# BB#1:                                 # %if.then
	movl	$0, -20(%rbp)
.LBB14_2:                               # %if.end
	cmpl	$255, -20(%rbp)
	jle	.LBB14_4
# BB#3:                                 # %if.then.2
	movl	$255, -20(%rbp)
.LBB14_4:                               # %if.end.3
	movl	$255, %eax
	subl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$0, -24(%rbp)
.LBB14_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB14_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB14_5 Depth=1
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB14_5 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB14_5
.LBB14_8:                               # %for.end
	popq	%rbp
	retq
.Lfunc_end14:
	.size	color_select_update_value, .Lfunc_end14-color_select_update_value
	.cfi_endproc

	.align	16, 0x90
	.type	color_select_update_red,@function
color_select_update_red:                # @color_select_update_red
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	16(%rdi), %eax
	movq	-8(%rbp), %rdi
	subl	8(%rdi), %eax
	addl	$1, %eax
	imull	$255, %eax, %eax
	movq	-8(%rbp), %rdi
	cltd
	idivl	16(%rdi)
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jge	.LBB15_2
# BB#1:                                 # %if.then
	movl	$0, -24(%rbp)
.LBB15_2:                               # %if.end
	cmpl	$255, -24(%rbp)
	jle	.LBB15_4
# BB#3:                                 # %if.then.3
	movl	$255, -24(%rbp)
.LBB15_4:                               # %if.end.4
	movl	$0, -20(%rbp)
.LBB15_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB15_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB15_5 Depth=1
	movl	-24(%rbp), %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	$0, (%rdx)
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	$0, (%rdx)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB15_5 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB15_5
.LBB15_8:                               # %for.end
	popq	%rbp
	retq
.Lfunc_end15:
	.size	color_select_update_red, .Lfunc_end15-color_select_update_red
	.cfi_endproc

	.align	16, 0x90
	.type	color_select_update_green,@function
color_select_update_green:              # @color_select_update_green
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	16(%rdi), %eax
	movq	-8(%rbp), %rdi
	subl	8(%rdi), %eax
	addl	$1, %eax
	imull	$255, %eax, %eax
	movq	-8(%rbp), %rdi
	cltd
	idivl	16(%rdi)
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jge	.LBB16_2
# BB#1:                                 # %if.then
	movl	$0, -24(%rbp)
.LBB16_2:                               # %if.end
	cmpl	$255, -24(%rbp)
	jle	.LBB16_4
# BB#3:                                 # %if.then.3
	movl	$255, -24(%rbp)
.LBB16_4:                               # %if.end.4
	movl	$0, -20(%rbp)
.LBB16_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB16_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB16_5 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	$0, (%rax)
	movl	-24(%rbp), %edx
	movb	%dl, %sil
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	%sil, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	$0, (%rax)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB16_5 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB16_5
.LBB16_8:                               # %for.end
	popq	%rbp
	retq
.Lfunc_end16:
	.size	color_select_update_green, .Lfunc_end16-color_select_update_green
	.cfi_endproc

	.align	16, 0x90
	.type	color_select_update_blue,@function
color_select_update_blue:               # @color_select_update_blue
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	16(%rdi), %eax
	movq	-8(%rbp), %rdi
	subl	8(%rdi), %eax
	addl	$1, %eax
	imull	$255, %eax, %eax
	movq	-8(%rbp), %rdi
	cltd
	idivl	16(%rdi)
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jge	.LBB17_2
# BB#1:                                 # %if.then
	movl	$0, -24(%rbp)
.LBB17_2:                               # %if.end
	cmpl	$255, -24(%rbp)
	jle	.LBB17_4
# BB#3:                                 # %if.then.3
	movl	$255, -24(%rbp)
.LBB17_4:                               # %if.end.4
	movl	$0, -20(%rbp)
.LBB17_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB17_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	$0, (%rax)
	movl	-24(%rbp), %edx
	movb	%dl, %sil
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	%sil, (%rax)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB17_5 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB17_5
.LBB17_8:                               # %for.end
	popq	%rbp
	retq
.Lfunc_end17:
	.size	color_select_update_blue, .Lfunc_end17-color_select_update_blue
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI18_0:
	.long	1135837184              # float 359
.LCPI18_1:
	.long	1114636288              # float 60
.LCPI18_2:
	.long	1132396544              # float 255
.LCPI18_4:
	.long	1065353216              # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_3:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	color_select_update_hue_saturation,@function
color_select_update_hue_saturation:     # @color_select_update_hue_saturation
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
	xorps	%xmm0, %xmm0
	movl	$360, %eax              # imm = 0x168
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	imull	$360, 8(%rdi), %ecx     # imm = 0x168
	movq	-8(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	16(%rdi)
	movl	-44(%rbp), %ecx         # 4-byte Reload
	subl	%eax, %ecx
	cvtsi2ssl	%ecx, %xmm1
	movss	%xmm1, -20(%rbp)
	ucomiss	-20(%rbp), %xmm0
	jbe	.LBB18_2
# BB#1:                                 # %if.then
	xorps	%xmm0, %xmm0
	movss	%xmm0, -20(%rbp)
.LBB18_2:                               # %if.end
	movss	.LCPI18_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movss	-20(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB18_4
# BB#3:                                 # %if.then.4
	movss	.LCPI18_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -20(%rbp)
.LBB18_4:                               # %if.end.5
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI18_1(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	cvttss2si	%xmm0, %eax
	cvtsi2ssl	%eax, %xmm1
	subss	%xmm1, %xmm0
	movss	.LCPI18_2(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -36(%rbp)
	movl	$0, -28(%rbp)
	movq	-8(%rbp), %rcx
	cvtsi2sdl	12(%rcx), %xmm0
	movsd	.LCPI18_3(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	movq	-8(%rbp), %rcx
	movsd	72(%rcx), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -24(%rbp)
	cvttss2si	-20(%rbp), %eax
	movl	%eax, %ecx
	subl	$5, %eax
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movl	%eax, -60(%rbp)         # 4-byte Spill
	ja	.LBB18_35
# BB#36:                                # %if.end.5
	leaq	.LJTI18_0(%rip), %rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB18_5:                               # %sw.bb
	movl	$0, -40(%rbp)
.LBB18_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB18_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB18_6 Depth=1
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI18_2(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	incq	%rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-28(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movl	-36(%rbp), %eax
	movl	$255, %edi
	subl	%eax, %edi
	cvtsi2ssl	%edi, %xmm3
	mulss	%xmm3, %xmm2
	movaps	%xmm1, %xmm3
	subss	%xmm2, %xmm3
	mulss	%xmm3, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	incq	%rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	-28(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI18_4(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm2
	mulss	%xmm2, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-32(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-28(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB18_6 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB18_6
.LBB18_9:                               # %for.end
	jmp	.LBB18_35
.LBB18_10:                              # %sw.bb.35
	movl	$0, -40(%rbp)
.LBB18_11:                              # %for.cond.36
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB18_14
# BB#12:                                # %for.body.40
                                        #   in Loop: Header=BB18_11 Depth=1
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-28(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtsi2ssl	-36(%rbp), %xmm2
	mulss	%xmm2, %xmm1
	movss	.LCPI18_2(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	movaps	%xmm2, %xmm3
	subss	%xmm1, %xmm3
	mulss	%xmm3, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	incq	%rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	incq	%rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	movss	-28(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI18_4(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm2
	mulss	%xmm2, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-32(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-28(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
# BB#13:                                # %for.inc.56
                                        #   in Loop: Header=BB18_11 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB18_11
.LBB18_14:                              # %for.end.58
	jmp	.LBB18_35
.LBB18_15:                              # %sw.bb.59
	movl	$0, -40(%rbp)
.LBB18_16:                              # %for.cond.60
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB18_19
# BB#17:                                # %for.body.64
                                        #   in Loop: Header=BB18_16 Depth=1
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI18_2(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	-28(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movss	.LCPI18_4(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm3
	mulss	%xmm3, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	incq	%rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	incq	%rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-28(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movl	-36(%rbp), %eax
	movl	$255, %edi
	subl	%eax, %edi
	cvtsi2ssl	%edi, %xmm3
	mulss	%xmm3, %xmm2
	subss	%xmm2, %xmm1
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-32(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-28(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
# BB#18:                                # %for.inc.81
                                        #   in Loop: Header=BB18_16 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB18_16
.LBB18_19:                              # %for.end.83
	jmp	.LBB18_35
.LBB18_20:                              # %sw.bb.84
	movl	$0, -40(%rbp)
.LBB18_21:                              # %for.cond.85
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB18_24
# BB#22:                                # %for.body.89
                                        #   in Loop: Header=BB18_21 Depth=1
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI18_2(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	-28(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movss	.LCPI18_4(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm3
	mulss	%xmm3, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	incq	%rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-28(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtsi2ssl	-36(%rbp), %xmm3
	mulss	%xmm3, %xmm2
	movaps	%xmm1, %xmm3
	subss	%xmm2, %xmm3
	mulss	%xmm3, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	incq	%rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-32(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-28(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
# BB#23:                                # %for.inc.105
                                        #   in Loop: Header=BB18_21 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB18_21
.LBB18_24:                              # %for.end.107
	jmp	.LBB18_35
.LBB18_25:                              # %sw.bb.108
	movl	$0, -40(%rbp)
.LBB18_26:                              # %for.cond.109
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB18_29
# BB#27:                                # %for.body.113
                                        #   in Loop: Header=BB18_26 Depth=1
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-28(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movl	-36(%rbp), %eax
	movl	$255, %ecx
	subl	%eax, %ecx
	cvtsi2ssl	%ecx, %xmm2
	mulss	%xmm2, %xmm1
	movss	.LCPI18_2(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	movaps	%xmm2, %xmm3
	subss	%xmm1, %xmm3
	mulss	%xmm3, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %dl
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, -16(%rbp)
	movb	%dl, (%rsi)
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-28(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI18_4(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm3
	mulss	%xmm2, %xmm3
	mulss	%xmm3, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %dl
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, -16(%rbp)
	movb	%dl, (%rsi)
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %dl
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, -16(%rbp)
	movb	%dl, (%rsi)
	movss	-32(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-28(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
# BB#28:                                # %for.inc.130
                                        #   in Loop: Header=BB18_26 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB18_26
.LBB18_29:                              # %for.end.132
	jmp	.LBB18_35
.LBB18_30:                              # %sw.bb.133
	movl	$0, -40(%rbp)
.LBB18_31:                              # %for.cond.134
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB18_34
# BB#32:                                # %for.body.138
                                        #   in Loop: Header=BB18_31 Depth=1
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI18_2(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	incq	%rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	-28(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movss	.LCPI18_4(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm3
	mulss	%xmm3, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	incq	%rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-28(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtsi2ssl	-36(%rbp), %xmm3
	mulss	%xmm3, %xmm2
	subss	%xmm2, %xmm1
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-32(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-28(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
# BB#33:                                # %for.inc.154
                                        #   in Loop: Header=BB18_31 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB18_31
.LBB18_34:                              # %for.end.156
	jmp	.LBB18_35
.LBB18_35:                              # %sw.epilog
	popq	%rbp
	retq
.Lfunc_end18:
	.size	color_select_update_hue_saturation, .Lfunc_end18-color_select_update_hue_saturation
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI18_0:
	.long	.LBB18_5-.LJTI18_0
	.long	.LBB18_10-.LJTI18_0
	.long	.LBB18_15-.LJTI18_0
	.long	.LBB18_20-.LJTI18_0
	.long	.LBB18_25-.LJTI18_0
	.long	.LBB18_30-.LJTI18_0

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI19_0:
	.long	1135837184              # float 359
.LCPI19_1:
	.long	1114636288              # float 60
.LCPI19_2:
	.long	1132396544              # float 255
.LCPI19_4:
	.long	1065353216              # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_3:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	color_select_update_hue_value,@function
color_select_update_hue_value:          # @color_select_update_hue_value
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
	xorps	%xmm0, %xmm0
	movl	$360, %eax              # imm = 0x168
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	imull	$360, 8(%rdi), %ecx     # imm = 0x168
	movq	-8(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	16(%rdi)
	movl	-44(%rbp), %ecx         # 4-byte Reload
	subl	%eax, %ecx
	cvtsi2ssl	%ecx, %xmm1
	movss	%xmm1, -20(%rbp)
	ucomiss	-20(%rbp), %xmm0
	jbe	.LBB19_2
# BB#1:                                 # %if.then
	xorps	%xmm0, %xmm0
	movss	%xmm0, -20(%rbp)
.LBB19_2:                               # %if.end
	movss	.LCPI19_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movss	-20(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB19_4
# BB#3:                                 # %if.then.4
	movss	.LCPI19_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -20(%rbp)
.LBB19_4:                               # %if.end.5
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI19_1(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	cvttss2si	%xmm0, %eax
	cvtsi2ssl	%eax, %xmm1
	subss	%xmm1, %xmm0
	movss	.LCPI19_2(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -36(%rbp)
	movl	$0, -24(%rbp)
	movq	-8(%rbp), %rcx
	cvtsi2sdl	12(%rcx), %xmm0
	movsd	.LCPI19_3(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	movq	-8(%rbp), %rcx
	movsd	64(%rcx), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -32(%rbp)
	cvttss2si	-20(%rbp), %eax
	movl	%eax, %ecx
	subl	$5, %eax
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movl	%eax, -60(%rbp)         # 4-byte Spill
	ja	.LBB19_35
# BB#36:                                # %if.end.5
	leaq	.LJTI19_0(%rip), %rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB19_5:                               # %sw.bb
	movl	$0, -40(%rbp)
.LBB19_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB19_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB19_6 Depth=1
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI19_2(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	incq	%rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-32(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movl	-36(%rbp), %eax
	movl	$255, %edi
	subl	%eax, %edi
	cvtsi2ssl	%edi, %xmm3
	mulss	%xmm3, %xmm2
	movaps	%xmm1, %xmm3
	subss	%xmm2, %xmm3
	mulss	%xmm3, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	incq	%rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	-32(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI19_4(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm2
	mulss	%xmm2, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-24(%rbp), %xmm0
	movss	%xmm0, -24(%rbp)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB19_6 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB19_6
.LBB19_9:                               # %for.end
	jmp	.LBB19_35
.LBB19_10:                              # %sw.bb.35
	movl	$0, -40(%rbp)
.LBB19_11:                              # %for.cond.36
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB19_14
# BB#12:                                # %for.body.40
                                        #   in Loop: Header=BB19_11 Depth=1
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-32(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtsi2ssl	-36(%rbp), %xmm2
	mulss	%xmm2, %xmm1
	movss	.LCPI19_2(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	movaps	%xmm2, %xmm3
	subss	%xmm1, %xmm3
	mulss	%xmm3, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	incq	%rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	incq	%rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	movss	-32(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI19_4(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm2
	mulss	%xmm2, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-24(%rbp), %xmm0
	movss	%xmm0, -24(%rbp)
# BB#13:                                # %for.inc.56
                                        #   in Loop: Header=BB19_11 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB19_11
.LBB19_14:                              # %for.end.58
	jmp	.LBB19_35
.LBB19_15:                              # %sw.bb.59
	movl	$0, -40(%rbp)
.LBB19_16:                              # %for.cond.60
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB19_19
# BB#17:                                # %for.body.64
                                        #   in Loop: Header=BB19_16 Depth=1
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI19_2(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	-32(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movss	.LCPI19_4(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm3
	mulss	%xmm3, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	incq	%rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	incq	%rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-32(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movl	-36(%rbp), %eax
	movl	$255, %edi
	subl	%eax, %edi
	cvtsi2ssl	%edi, %xmm3
	mulss	%xmm3, %xmm2
	subss	%xmm2, %xmm1
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-24(%rbp), %xmm0
	movss	%xmm0, -24(%rbp)
# BB#18:                                # %for.inc.81
                                        #   in Loop: Header=BB19_16 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB19_16
.LBB19_19:                              # %for.end.83
	jmp	.LBB19_35
.LBB19_20:                              # %sw.bb.84
	movl	$0, -40(%rbp)
.LBB19_21:                              # %for.cond.85
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB19_24
# BB#22:                                # %for.body.89
                                        #   in Loop: Header=BB19_21 Depth=1
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI19_2(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	-32(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movss	.LCPI19_4(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm3
	mulss	%xmm3, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	incq	%rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-32(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtsi2ssl	-36(%rbp), %xmm3
	mulss	%xmm3, %xmm2
	movaps	%xmm1, %xmm3
	subss	%xmm2, %xmm3
	mulss	%xmm3, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	incq	%rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-24(%rbp), %xmm0
	movss	%xmm0, -24(%rbp)
# BB#23:                                # %for.inc.105
                                        #   in Loop: Header=BB19_21 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB19_21
.LBB19_24:                              # %for.end.107
	jmp	.LBB19_35
.LBB19_25:                              # %sw.bb.108
	movl	$0, -40(%rbp)
.LBB19_26:                              # %for.cond.109
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB19_29
# BB#27:                                # %for.body.113
                                        #   in Loop: Header=BB19_26 Depth=1
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-32(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movl	-36(%rbp), %eax
	movl	$255, %ecx
	subl	%eax, %ecx
	cvtsi2ssl	%ecx, %xmm2
	mulss	%xmm2, %xmm1
	movss	.LCPI19_2(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	movaps	%xmm2, %xmm3
	subss	%xmm1, %xmm3
	mulss	%xmm3, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %dl
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, -16(%rbp)
	movb	%dl, (%rsi)
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-32(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI19_4(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm3
	mulss	%xmm2, %xmm3
	mulss	%xmm3, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %dl
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, -16(%rbp)
	movb	%dl, (%rsi)
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %dl
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, -16(%rbp)
	movb	%dl, (%rsi)
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-24(%rbp), %xmm0
	movss	%xmm0, -24(%rbp)
# BB#28:                                # %for.inc.130
                                        #   in Loop: Header=BB19_26 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB19_26
.LBB19_29:                              # %for.end.132
	jmp	.LBB19_35
.LBB19_30:                              # %sw.bb.133
	movl	$0, -40(%rbp)
.LBB19_31:                              # %for.cond.134
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB19_34
# BB#32:                                # %for.body.138
                                        #   in Loop: Header=BB19_31 Depth=1
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI19_2(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	incq	%rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	-32(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movss	.LCPI19_4(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm3
	mulss	%xmm3, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	incq	%rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-32(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtsi2ssl	-36(%rbp), %xmm3
	mulss	%xmm3, %xmm2
	subss	%xmm2, %xmm1
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-24(%rbp), %xmm0
	movss	%xmm0, -24(%rbp)
# BB#33:                                # %for.inc.154
                                        #   in Loop: Header=BB19_31 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB19_31
.LBB19_34:                              # %for.end.156
	jmp	.LBB19_35
.LBB19_35:                              # %sw.epilog
	popq	%rbp
	retq
.Lfunc_end19:
	.size	color_select_update_hue_value, .Lfunc_end19-color_select_update_hue_value
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI19_0:
	.long	.LBB19_5-.LJTI19_0
	.long	.LBB19_10-.LJTI19_0
	.long	.LBB19_15-.LJTI19_0
	.long	.LBB19_20-.LJTI19_0
	.long	.LBB19_25-.LJTI19_0
	.long	.LBB19_30-.LJTI19_0

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI20_0:
	.long	1065353216              # float 1
.LCPI20_1:
	.long	1135869952              # float 360
.LCPI20_3:
	.long	1114636288              # float 60
.LCPI20_4:
	.long	1132396544              # float 255
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_2:
	.quad	4645040803167600640     # double 360
.LCPI20_5:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	color_select_update_saturation_value,@function
color_select_update_saturation_value:   # @color_select_update_saturation_value
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
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	cvtsi2ssl	8(%rdi), %xmm1
	movq	-8(%rbp), %rdi
	cvtsi2ssl	16(%rdi), %xmm2
	divss	%xmm2, %xmm1
	movss	%xmm1, -32(%rbp)
	ucomiss	-32(%rbp), %xmm0
	jbe	.LBB20_2
# BB#1:                                 # %if.then
	xorps	%xmm0, %xmm0
	movss	%xmm0, -32(%rbp)
.LBB20_2:                               # %if.end
	movss	.LCPI20_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movss	-32(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB20_4
# BB#3:                                 # %if.then.5
	movss	.LCPI20_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -32(%rbp)
.LBB20_4:                               # %if.end.6
	movss	.LCPI20_1(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movsd	.LCPI20_2(%rip), %xmm1  # xmm1 = mem[0],zero
	movss	.LCPI20_0(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	subss	-32(%rbp), %xmm2
	movss	%xmm2, -32(%rbp)
	movq	-8(%rbp), %rax
	cvtsd2ss	56(%rax), %xmm2
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, -20(%rbp)
	movss	-20(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jb	.LBB20_6
# BB#5:                                 # %if.then.13
	movss	.LCPI20_1(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movss	-20(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movss	%xmm1, -20(%rbp)
.LBB20_6:                               # %if.end.15
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI20_3(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	cvttss2si	%xmm0, %eax
	cvtsi2ssl	%eax, %xmm1
	subss	%xmm1, %xmm0
	movss	.LCPI20_4(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -36(%rbp)
	movl	$0, -24(%rbp)
	movq	-8(%rbp), %rcx
	cvtsi2sdl	12(%rcx), %xmm0
	movsd	.LCPI20_5(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	cvttss2si	-20(%rbp), %eax
	movl	%eax, %ecx
	subl	$5, %eax
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movl	%eax, -52(%rbp)         # 4-byte Spill
	ja	.LBB20_37
# BB#38:                                # %if.end.15
	leaq	.LJTI20_0(%rip), %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB20_7:                               # %sw.bb
	movl	$0, -40(%rbp)
.LBB20_8:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB20_11
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB20_8 Depth=1
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI20_4(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	incq	%rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-32(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movl	-36(%rbp), %eax
	movl	$255, %edi
	subl	%eax, %edi
	cvtsi2ssl	%edi, %xmm3
	mulss	%xmm3, %xmm2
	movaps	%xmm1, %xmm3
	subss	%xmm2, %xmm3
	mulss	%xmm3, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	incq	%rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	-32(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI20_0(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm2
	mulss	%xmm2, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-24(%rbp), %xmm0
	movss	%xmm0, -24(%rbp)
# BB#10:                                # %for.inc
                                        #   in Loop: Header=BB20_8 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB20_8
.LBB20_11:                              # %for.end
	jmp	.LBB20_37
.LBB20_12:                              # %sw.bb.43
	movl	$0, -40(%rbp)
.LBB20_13:                              # %for.cond.44
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB20_16
# BB#14:                                # %for.body.48
                                        #   in Loop: Header=BB20_13 Depth=1
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-32(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtsi2ssl	-36(%rbp), %xmm2
	mulss	%xmm2, %xmm1
	movss	.LCPI20_4(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	movaps	%xmm2, %xmm3
	subss	%xmm1, %xmm3
	mulss	%xmm3, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	incq	%rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	incq	%rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	movss	-32(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI20_0(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm2
	mulss	%xmm2, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-24(%rbp), %xmm0
	movss	%xmm0, -24(%rbp)
# BB#15:                                # %for.inc.64
                                        #   in Loop: Header=BB20_13 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB20_13
.LBB20_16:                              # %for.end.66
	jmp	.LBB20_37
.LBB20_17:                              # %sw.bb.67
	movl	$0, -40(%rbp)
.LBB20_18:                              # %for.cond.68
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB20_21
# BB#19:                                # %for.body.72
                                        #   in Loop: Header=BB20_18 Depth=1
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI20_4(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	-32(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movss	.LCPI20_0(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm3
	mulss	%xmm3, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	incq	%rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	incq	%rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-32(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movl	-36(%rbp), %eax
	movl	$255, %edi
	subl	%eax, %edi
	cvtsi2ssl	%edi, %xmm3
	mulss	%xmm3, %xmm2
	subss	%xmm2, %xmm1
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-24(%rbp), %xmm0
	movss	%xmm0, -24(%rbp)
# BB#20:                                # %for.inc.89
                                        #   in Loop: Header=BB20_18 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB20_18
.LBB20_21:                              # %for.end.91
	jmp	.LBB20_37
.LBB20_22:                              # %sw.bb.92
	movl	$0, -40(%rbp)
.LBB20_23:                              # %for.cond.93
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB20_26
# BB#24:                                # %for.body.97
                                        #   in Loop: Header=BB20_23 Depth=1
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI20_4(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	-32(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movss	.LCPI20_0(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm3
	mulss	%xmm3, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	incq	%rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-32(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtsi2ssl	-36(%rbp), %xmm3
	mulss	%xmm3, %xmm2
	movaps	%xmm1, %xmm3
	subss	%xmm2, %xmm3
	mulss	%xmm3, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	incq	%rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-24(%rbp), %xmm0
	movss	%xmm0, -24(%rbp)
# BB#25:                                # %for.inc.113
                                        #   in Loop: Header=BB20_23 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB20_23
.LBB20_26:                              # %for.end.115
	jmp	.LBB20_37
.LBB20_27:                              # %sw.bb.116
	movl	$0, -40(%rbp)
.LBB20_28:                              # %for.cond.117
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB20_31
# BB#29:                                # %for.body.121
                                        #   in Loop: Header=BB20_28 Depth=1
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-32(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movl	-36(%rbp), %eax
	movl	$255, %ecx
	subl	%eax, %ecx
	cvtsi2ssl	%ecx, %xmm2
	mulss	%xmm2, %xmm1
	movss	.LCPI20_4(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	movaps	%xmm2, %xmm3
	subss	%xmm1, %xmm3
	mulss	%xmm3, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %dl
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, -16(%rbp)
	movb	%dl, (%rsi)
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-32(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI20_0(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm3
	mulss	%xmm2, %xmm3
	mulss	%xmm3, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %dl
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, -16(%rbp)
	movb	%dl, (%rsi)
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %dl
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, -16(%rbp)
	movb	%dl, (%rsi)
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-24(%rbp), %xmm0
	movss	%xmm0, -24(%rbp)
# BB#30:                                # %for.inc.138
                                        #   in Loop: Header=BB20_28 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB20_28
.LBB20_31:                              # %for.end.140
	jmp	.LBB20_37
.LBB20_32:                              # %sw.bb.141
	movl	$0, -40(%rbp)
.LBB20_33:                              # %for.cond.142
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB20_36
# BB#34:                                # %for.body.146
                                        #   in Loop: Header=BB20_33 Depth=1
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI20_4(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	incq	%rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	-32(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movss	.LCPI20_0(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm3
	mulss	%xmm3, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	incq	%rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-32(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtsi2ssl	-36(%rbp), %xmm3
	mulss	%xmm3, %xmm2
	subss	%xmm2, %xmm1
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-24(%rbp), %xmm0
	movss	%xmm0, -24(%rbp)
# BB#35:                                # %for.inc.162
                                        #   in Loop: Header=BB20_33 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB20_33
.LBB20_36:                              # %for.end.164
	jmp	.LBB20_37
.LBB20_37:                              # %sw.epilog
	popq	%rbp
	retq
.Lfunc_end20:
	.size	color_select_update_saturation_value, .Lfunc_end20-color_select_update_saturation_value
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI20_0:
	.long	.LBB20_7-.LJTI20_0
	.long	.LBB20_12-.LJTI20_0
	.long	.LBB20_17-.LJTI20_0
	.long	.LBB20_22-.LJTI20_0
	.long	.LBB20_27-.LJTI20_0
	.long	.LBB20_32-.LJTI20_0

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI21_0:
	.quad	4602678819172646912     # double 0.5
.LCPI21_1:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	color_select_update_red_green,@function
color_select_update_red_green:          # @color_select_update_red_green
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
	movsd	.LCPI21_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI21_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	mulsd	40(%rdi), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdi
	movl	16(%rdi), %eax
	movq	-8(%rbp), %rdi
	subl	8(%rdi), %eax
	addl	$1, %eax
	imull	$255, %eax, %eax
	movq	-8(%rbp), %rdi
	cltd
	idivl	16(%rdi)
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jge	.LBB21_2
# BB#1:                                 # %if.then
	movl	$0, -24(%rbp)
.LBB21_2:                               # %if.end
	cmpl	$255, -24(%rbp)
	jle	.LBB21_4
# BB#3:                                 # %if.then.8
	movl	$255, -24(%rbp)
.LBB21_4:                               # %if.end.9
	movsd	.LCPI21_1(%rip), %xmm0  # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movss	%xmm1, -32(%rbp)
	movq	-8(%rbp), %rax
	cvtsi2sdl	12(%rax), %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -36(%rbp)
	movl	$0, -20(%rbp)
.LBB21_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB21_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB21_5 Depth=1
	movb	-24(%rbp), %al
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	incq	%rdx
	movq	%rdx, -16(%rbp)
	movb	%al, (%rcx)
	cvttss2si	-32(%rbp), %esi
	movb	%sil, %al
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movb	%al, (%rcx)
	movl	-28(%rbp), %esi
	movb	%sil, %al
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movb	%al, (%rcx)
	movss	-36(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-32(%rbp), %xmm0
	movss	%xmm0, -32(%rbp)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB21_5 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB21_5
.LBB21_8:                               # %for.end
	popq	%rbp
	retq
.Lfunc_end21:
	.size	color_select_update_red_green, .Lfunc_end21-color_select_update_red_green
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI22_0:
	.quad	4602678819172646912     # double 0.5
.LCPI22_1:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	color_select_update_red_blue,@function
color_select_update_red_blue:           # @color_select_update_red_blue
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
	movsd	.LCPI22_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI22_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	mulsd	32(%rdi), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdi
	movl	16(%rdi), %eax
	movq	-8(%rbp), %rdi
	subl	8(%rdi), %eax
	addl	$1, %eax
	imull	$255, %eax, %eax
	movq	-8(%rbp), %rdi
	cltd
	idivl	16(%rdi)
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jge	.LBB22_2
# BB#1:                                 # %if.then
	movl	$0, -24(%rbp)
.LBB22_2:                               # %if.end
	cmpl	$255, -24(%rbp)
	jle	.LBB22_4
# BB#3:                                 # %if.then.8
	movl	$255, -24(%rbp)
.LBB22_4:                               # %if.end.9
	movsd	.LCPI22_1(%rip), %xmm0  # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movss	%xmm1, -32(%rbp)
	movq	-8(%rbp), %rax
	cvtsi2sdl	12(%rax), %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -36(%rbp)
	movl	$0, -20(%rbp)
.LBB22_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB22_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB22_5 Depth=1
	movb	-24(%rbp), %al
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	incq	%rdx
	movq	%rdx, -16(%rbp)
	movb	%al, (%rcx)
	movb	-28(%rbp), %al
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	incq	%rdx
	movq	%rdx, -16(%rbp)
	movb	%al, (%rcx)
	cvttss2si	-32(%rbp), %esi
	movb	%sil, %al
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movb	%al, (%rcx)
	movss	-36(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-32(%rbp), %xmm0
	movss	%xmm0, -32(%rbp)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB22_5 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB22_5
.LBB22_8:                               # %for.end
	popq	%rbp
	retq
.Lfunc_end22:
	.size	color_select_update_red_blue, .Lfunc_end22-color_select_update_red_blue
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI23_0:
	.quad	4602678819172646912     # double 0.5
.LCPI23_1:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	color_select_update_green_blue,@function
color_select_update_green_blue:         # @color_select_update_green_blue
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
	movsd	.LCPI23_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI23_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	mulsd	24(%rdi), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdi
	movl	16(%rdi), %eax
	movq	-8(%rbp), %rdi
	subl	8(%rdi), %eax
	addl	$1, %eax
	imull	$255, %eax, %eax
	movq	-8(%rbp), %rdi
	cltd
	idivl	16(%rdi)
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jge	.LBB23_2
# BB#1:                                 # %if.then
	movl	$0, -24(%rbp)
.LBB23_2:                               # %if.end
	cmpl	$255, -24(%rbp)
	jle	.LBB23_4
# BB#3:                                 # %if.then.8
	movl	$255, -24(%rbp)
.LBB23_4:                               # %if.end.9
	movsd	.LCPI23_1(%rip), %xmm0  # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movss	%xmm1, -32(%rbp)
	movq	-8(%rbp), %rax
	cvtsi2sdl	12(%rax), %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -36(%rbp)
	movl	$0, -20(%rbp)
.LBB23_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB23_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB23_5 Depth=1
	movb	-28(%rbp), %al
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	incq	%rdx
	movq	%rdx, -16(%rbp)
	movb	%al, (%rcx)
	movb	-24(%rbp), %al
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	incq	%rdx
	movq	%rdx, -16(%rbp)
	movb	%al, (%rcx)
	cvttss2si	-32(%rbp), %esi
	movb	%sil, %al
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movb	%al, (%rcx)
	movss	-36(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-32(%rbp), %xmm0
	movss	%xmm0, -32(%rbp)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB23_5 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB23_5
.LBB23_8:                               # %for.end
	popq	%rbp
	retq
.Lfunc_end23:
	.size	color_select_update_green_blue, .Lfunc_end23-color_select_update_green_blue
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_select_xy_size_allocate,@function
gimp_color_select_xy_size_allocate:     # @gimp_color_select_xy_size_allocate
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
	subq	$32, %rsp
	movl	$4, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	%eax, %esi
	callq	gimp_color_select_update
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_color_select_xy_size_allocate, .Lfunc_end24-gimp_color_select_xy_size_allocate
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI25_0:
	.quad	4605380978949069210     # double 0.80000000000000004
.LCPI25_1:
	.quad	4607182418800017408     # double 1
.LCPI25_2:
	.quad	4603579539098121011     # double 0.59999999999999998
.LCPI25_3:
	.quad	4613937818241073152     # double 3
.LCPI25_4:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_color_select_xy_expose,@function
gimp_color_select_xy_expose:            # @gimp_color_select_xy_expose
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
	subq	$96, %rsp
	leaq	-40(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	224(%rdx), %rdi
	movq	%rax, %rsi
	callq	gtk_widget_get_allocation@PLT
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_window@PLT
	movq	%rax, %rdi
	callq	gdk_cairo_create@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gdk_cairo_region@PLT
	movq	-48(%rbp), %rdi
	callq	cairo_clip@PLT
	xorps	%xmm0, %xmm0
	movsd	.LCPI25_4(%rip), %xmm1  # xmm1 = mem[0],zero
	movl	$255, %ecx
	movl	-32(%rbp), %r8d
	subl	$1, %r8d
	movq	-24(%rbp), %rax
	imull	240(%rax), %r8d
	movl	%r8d, %eax
	cltd
	idivl	%ecx
	movl	%eax, -52(%rbp)
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movl	-28(%rbp), %r8d
	subl	$1, %r8d
	movq	-24(%rbp), %rsi
	imull	244(%rsi), %r8d
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movl	%r8d, %eax
	cltd
	idivl	%ecx
	movl	-60(%rbp), %ecx         # 4-byte Reload
	subl	%eax, %ecx
	movl	%ecx, -56(%rbp)
	movq	-48(%rbp), %rdi
	cvtsi2sdl	-56(%rbp), %xmm2
	addsd	%xmm1, %xmm2
	movaps	%xmm2, %xmm1
	callq	cairo_move_to@PLT
	movsd	.LCPI25_4(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-48(%rbp), %rdi
	cvtsi2sdl	-32(%rbp), %xmm1
	cvtsi2sdl	-56(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	cairo_line_to@PLT
	xorps	%xmm1, %xmm1
	movsd	.LCPI25_4(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-48(%rbp), %rdi
	cvtsi2sdl	-52(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	callq	cairo_move_to@PLT
	movsd	.LCPI25_4(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-48(%rbp), %rdi
	cvtsi2sdl	-52(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvtsi2sdl	-28(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_line_to@PLT
	movsd	.LCPI25_3(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-48(%rbp), %rdi
	callq	cairo_set_line_width@PLT
	movsd	.LCPI25_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI25_2(%rip), %xmm3  # xmm3 = mem[0],zero
	movq	-48(%rbp), %rdi
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgba@PLT
	movq	-48(%rbp), %rdi
	callq	cairo_stroke_preserve@PLT
	movsd	.LCPI25_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-48(%rbp), %rdi
	callq	cairo_set_line_width@PLT
	xorps	%xmm0, %xmm0
	movsd	.LCPI25_0(%rip), %xmm3  # xmm3 = mem[0],zero
	movq	-48(%rbp), %rdi
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgba@PLT
	movq	-48(%rbp), %rdi
	callq	cairo_stroke@PLT
	movq	-48(%rbp), %rdi
	callq	cairo_destroy@PLT
	movl	$1, %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_color_select_xy_expose, .Lfunc_end25-gimp_color_select_xy_expose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_select_xy_events,@function
gimp_color_select_xy_events:            # @gimp_color_select_xy_events
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movl	(%rdx), %eax
	movl	%eax, %ecx
	subl	$3, %ecx
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	%ecx, -88(%rbp)         # 4-byte Spill
	je	.LBB26_9
	jmp	.LBB26_30
.LBB26_30:                              # %entry
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB26_1
	jmp	.LBB26_31
.LBB26_31:                              # %entry
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$7, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB26_5
	jmp	.LBB26_12
.LBB26_1:                               # %sw.bb
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 260(%rax)
	jne	.LBB26_3
# BB#2:                                 # %lor.lhs.false
	movq	-64(%rbp), %rax
	cmpl	$1, 52(%rax)
	je	.LBB26_4
.LBB26_3:                               # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB26_29
.LBB26_4:                               # %if.end
	movq	-64(%rbp), %rax
	cvttsd2si	24(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	-64(%rbp), %rax
	cvttsd2si	32(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_grab_add@PLT
	movq	-32(%rbp), %rax
	movl	$1, 260(%rax)
	jmp	.LBB26_13
.LBB26_5:                               # %sw.bb.6
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$1, 260(%rax)
	jne	.LBB26_7
# BB#6:                                 # %lor.lhs.false.11
	movq	-72(%rbp), %rax
	cmpl	$1, 52(%rax)
	je	.LBB26_8
.LBB26_7:                               # %if.then.15
	movl	$0, -4(%rbp)
	jmp	.LBB26_29
.LBB26_8:                               # %if.end.16
	movq	-72(%rbp), %rax
	cvttsd2si	24(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	-72(%rbp), %rax
	cvttsd2si	32(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_grab_remove@PLT
	movq	-32(%rbp), %rax
	movl	$0, 260(%rax)
	jmp	.LBB26_13
.LBB26_9:                               # %sw.bb.22
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$1, 260(%rax)
	je	.LBB26_11
# BB#10:                                # %if.then.26
	movl	$0, -4(%rbp)
	jmp	.LBB26_29
.LBB26_11:                              # %if.end.27
	movq	-80(%rbp), %rax
	cvttsd2si	24(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	-80(%rbp), %rax
	cvttsd2si	32(%rax), %ecx
	movl	%ecx, -56(%rbp)
	jmp	.LBB26_13
.LBB26_12:                              # %sw.default
	movl	$0, -4(%rbp)
	jmp	.LBB26_29
.LBB26_13:                              # %sw.epilog
	leaq	-48(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	224(%rax), %rdi
	callq	gtk_widget_get_allocation@PLT
	cmpl	$1, -40(%rbp)
	jle	.LBB26_16
# BB#14:                                # %land.lhs.true
	cmpl	$1, -36(%rbp)
	jle	.LBB26_16
# BB#15:                                # %if.then.36
	movl	$255, %eax
	imull	$255, -52(%rbp), %ecx
	movl	-40(%rbp), %edx
	subl	$1, %edx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	movl	%edx, -104(%rbp)        # 4-byte Spill
	cltd
	movl	-104(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movq	-32(%rbp), %rsi
	movl	%eax, 240(%rsi)
	imull	$255, -56(%rbp), %eax
	movl	-36(%rbp), %edi
	subl	$1, %edi
	cltd
	idivl	%edi
	movl	-100(%rbp), %edi        # 4-byte Reload
	subl	%eax, %edi
	movq	-32(%rbp), %rsi
	movl	%edi, 244(%rsi)
.LBB26_16:                              # %if.end.45
	movq	-32(%rbp), %rax
	cmpl	$255, 240(%rax)
	jle	.LBB26_18
# BB#17:                                # %cond.true
	movl	$255, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB26_22
.LBB26_18:                              # %cond.false
	movq	-32(%rbp), %rax
	cmpl	$0, 240(%rax)
	jge	.LBB26_20
# BB#19:                                # %cond.true.54
	xorl	%eax, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB26_21
.LBB26_20:                              # %cond.false.55
	movq	-32(%rbp), %rax
	movl	240(%rax), %ecx
	movl	%ecx, -112(%rbp)        # 4-byte Spill
.LBB26_21:                              # %cond.end
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB26_22:                              # %cond.end.58
	movl	-108(%rbp), %eax        # 4-byte Reload
	movq	-32(%rbp), %rcx
	movl	%eax, 240(%rcx)
	movq	-32(%rbp), %rcx
	cmpl	$255, 244(%rcx)
	jle	.LBB26_24
# BB#23:                                # %cond.true.66
	movl	$255, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB26_28
.LBB26_24:                              # %cond.false.67
	movq	-32(%rbp), %rax
	cmpl	$0, 244(%rax)
	jge	.LBB26_26
# BB#25:                                # %cond.true.72
	xorl	%eax, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB26_27
.LBB26_26:                              # %cond.false.73
	movq	-32(%rbp), %rax
	movl	244(%rax), %ecx
	movl	%ecx, -120(%rbp)        # 4-byte Spill
.LBB26_27:                              # %cond.end.76
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB26_28:                              # %cond.end.78
	movl	-116(%rbp), %eax        # 4-byte Reload
	movq	-32(%rbp), %rcx
	movl	%eax, 244(%rcx)
	movq	-32(%rbp), %rcx
	movq	224(%rcx), %rdi
	callq	gtk_widget_queue_draw@PLT
	movl	$65, %esi
	movq	-32(%rbp), %rdi
	callq	gimp_color_select_update
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	gdk_event_request_motions@PLT
	movl	$1, -4(%rbp)
.LBB26_29:                              # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_color_select_xy_events, .Lfunc_end26-gimp_color_select_xy_events
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_select_z_size_allocate,@function
gimp_color_select_z_size_allocate:      # @gimp_color_select_z_size_allocate
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
	subq	$32, %rsp
	movl	$8, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	%eax, %esi
	callq	gimp_color_select_update
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_color_select_z_size_allocate, .Lfunc_end27-gimp_color_select_z_size_allocate
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI28_0:
	.quad	4605380978949069210     # double 0.80000000000000004
.LCPI28_1:
	.quad	4607182418800017408     # double 1
.LCPI28_2:
	.quad	4603579539098121011     # double 0.59999999999999998
.LCPI28_3:
	.quad	4613937818241073152     # double 3
.LCPI28_4:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_color_select_z_expose,@function
gimp_color_select_z_expose:             # @gimp_color_select_z_expose
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
	subq	$80, %rsp
	leaq	-40(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	gtk_widget_get_allocation@PLT
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_window@PLT
	movq	%rax, %rdi
	callq	gdk_cairo_create@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gdk_cairo_region@PLT
	movq	-48(%rbp), %rdi
	callq	cairo_clip@PLT
	xorps	%xmm0, %xmm0
	movsd	.LCPI28_4(%rip), %xmm1  # xmm1 = mem[0],zero
	movl	$255, %ecx
	movl	-28(%rbp), %r8d
	subl	$1, %r8d
	movl	-28(%rbp), %r9d
	subl	$1, %r9d
	movq	-24(%rbp), %rax
	imull	248(%rax), %r9d
	movl	%r9d, %eax
	cltd
	idivl	%ecx
	subl	%eax, %r8d
	movl	%r8d, -52(%rbp)
	movq	-48(%rbp), %rdi
	cvtsi2sdl	-52(%rbp), %xmm2
	addsd	%xmm1, %xmm2
	movaps	%xmm2, %xmm1
	callq	cairo_move_to@PLT
	movsd	.LCPI28_4(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-48(%rbp), %rdi
	cvtsi2sdl	-32(%rbp), %xmm1
	cvtsi2sdl	-52(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	cairo_line_to@PLT
	movsd	.LCPI28_3(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-48(%rbp), %rdi
	callq	cairo_set_line_width@PLT
	movsd	.LCPI28_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI28_2(%rip), %xmm3  # xmm3 = mem[0],zero
	movq	-48(%rbp), %rdi
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-64(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgba@PLT
	movq	-48(%rbp), %rdi
	callq	cairo_stroke_preserve@PLT
	movsd	.LCPI28_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-48(%rbp), %rdi
	callq	cairo_set_line_width@PLT
	xorps	%xmm0, %xmm0
	movsd	.LCPI28_0(%rip), %xmm3  # xmm3 = mem[0],zero
	movq	-48(%rbp), %rdi
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgba@PLT
	movq	-48(%rbp), %rdi
	callq	cairo_stroke@PLT
	movq	-48(%rbp), %rdi
	callq	cairo_destroy@PLT
	movl	$1, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_color_select_z_expose, .Lfunc_end28-gimp_color_select_z_expose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_select_z_events,@function
gimp_color_select_z_events:             # @gimp_color_select_z_events
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movl	(%rdx), %eax
	movl	%eax, %ecx
	subl	$3, %ecx
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	%ecx, -88(%rbp)         # 4-byte Spill
	je	.LBB29_9
	jmp	.LBB29_23
.LBB29_23:                              # %entry
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB29_1
	jmp	.LBB29_24
.LBB29_24:                              # %entry
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$7, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB29_5
	jmp	.LBB29_12
.LBB29_1:                               # %sw.bb
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 260(%rax)
	jne	.LBB29_3
# BB#2:                                 # %lor.lhs.false
	movq	-64(%rbp), %rax
	cmpl	$1, 52(%rax)
	je	.LBB29_4
.LBB29_3:                               # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB29_22
.LBB29_4:                               # %if.end
	movq	-64(%rbp), %rax
	cvttsd2si	32(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_grab_add@PLT
	movq	-32(%rbp), %rax
	movl	$2, 260(%rax)
	jmp	.LBB29_13
.LBB29_5:                               # %sw.bb.3
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$2, 260(%rax)
	jne	.LBB29_7
# BB#6:                                 # %lor.lhs.false.8
	movq	-72(%rbp), %rax
	cmpl	$1, 52(%rax)
	je	.LBB29_8
.LBB29_7:                               # %if.then.12
	movl	$0, -4(%rbp)
	jmp	.LBB29_22
.LBB29_8:                               # %if.end.13
	movq	-72(%rbp), %rax
	cvttsd2si	32(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_grab_remove@PLT
	movq	-32(%rbp), %rax
	movl	$0, 260(%rax)
	jmp	.LBB29_13
.LBB29_9:                               # %sw.bb.17
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$2, 260(%rax)
	je	.LBB29_11
# BB#10:                                # %if.then.21
	movl	$0, -4(%rbp)
	jmp	.LBB29_22
.LBB29_11:                              # %if.end.22
	movq	-80(%rbp), %rax
	cvttsd2si	32(%rax), %ecx
	movl	%ecx, -52(%rbp)
	jmp	.LBB29_13
.LBB29_12:                              # %sw.default
	movl	$0, -4(%rbp)
	jmp	.LBB29_22
.LBB29_13:                              # %sw.epilog
	leaq	-48(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	232(%rax), %rdi
	callq	gtk_widget_get_allocation@PLT
	cmpl	$1, -36(%rbp)
	jle	.LBB29_15
# BB#14:                                # %if.then.27
	movl	$255, %eax
	imull	$255, -52(%rbp), %ecx
	movl	-36(%rbp), %edx
	subl	$1, %edx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	movl	%edx, -104(%rbp)        # 4-byte Spill
	cltd
	movl	-104(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	-100(%rbp), %esi        # 4-byte Reload
	subl	%eax, %esi
	movq	-32(%rbp), %rdi
	movl	%esi, 248(%rdi)
.LBB29_15:                              # %if.end.30
	movq	-32(%rbp), %rax
	cmpl	$255, 248(%rax)
	jle	.LBB29_17
# BB#16:                                # %cond.true
	movl	$255, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB29_21
.LBB29_17:                              # %cond.false
	movq	-32(%rbp), %rax
	cmpl	$0, 248(%rax)
	jge	.LBB29_19
# BB#18:                                # %cond.true.39
	xorl	%eax, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB29_20
.LBB29_19:                              # %cond.false.40
	movq	-32(%rbp), %rax
	movl	248(%rax), %ecx
	movl	%ecx, -112(%rbp)        # 4-byte Spill
.LBB29_20:                              # %cond.end
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB29_21:                              # %cond.end.43
	movl	-108(%rbp), %eax        # 4-byte Reload
	movq	-32(%rbp), %rcx
	movl	%eax, 248(%rcx)
	movq	-32(%rbp), %rcx
	movq	232(%rcx), %rdi
	callq	gtk_widget_queue_draw@PLT
	movl	$69, %esi
	movq	-32(%rbp), %rdi
	callq	gimp_color_select_update
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	gdk_event_request_motions@PLT
	movl	$1, -4(%rbp)
.LBB29_22:                              # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_color_select_z_events, .Lfunc_end29-gimp_color_select_z_events
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_select_channel_toggled,@function
gimp_color_select_channel_toggled:      # @gimp_color_select_channel_toggled
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active@PLT
	cmpl	$0, %eax
	je	.LBB30_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_color_selector_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.8(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 208(%rax)
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_color_select_set_channel
	movq	-24(%rbp), %rdi
	callq	gimp_color_selector_channel_changed@PLT
.LBB30_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_color_select_channel_toggled, .Lfunc_end30-gimp_color_select_channel_toggled
	.cfi_endproc

	.type	gimp_color_select_get_type.g_define_type_id__volatile,@object # @gimp_color_select_get_type.g_define_type_id__volatile
	.local	gimp_color_select_get_type.g_define_type_id__volatile
	.comm	gimp_color_select_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpColorSelect"
	.size	.L.str, 16

	.type	gimp_color_select_parent_class,@object # @gimp_color_select_parent_class
	.local	gimp_color_select_parent_class
	.comm	gimp_color_select_parent_class,8,8
	.type	GimpColorSelect_private_offset,@object # @GimpColorSelect_private_offset
	.local	GimpColorSelect_private_offset
	.comm	GimpColorSelect_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP"
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-colorselector-gimp"
	.size	.L.str.2, 24

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-wilber"
	.size	.L.str.3, 12

	.type	update_procs,@object    # @update_procs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
update_procs:
	.quad	color_select_update_hue
	.quad	color_select_update_saturation
	.quad	color_select_update_value
	.quad	color_select_update_red
	.quad	color_select_update_green
	.quad	color_select_update_blue
	.quad	0
	.quad	color_select_update_hue_saturation
	.quad	color_select_update_hue_value
	.quad	color_select_update_saturation_value
	.quad	color_select_update_red_green
	.quad	color_select_update_red_blue
	.quad	color_select_update_green_blue
	.size	update_procs, 104

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"size-allocate"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"expose-event"
	.size	.L.str.5, 13

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"event"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp20-libgimp"
	.size	.L.str.7, 15

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"channel"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"toggled"
	.size	.L.str.9, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
