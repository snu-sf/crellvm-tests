	.text
	.file	"gimptooloptionseditor.bc"
	.globl	gimp_tool_options_editor_get_type
	.align	16, 0x90
	.type	gimp_tool_options_editor_get_type,@function
gimp_tool_options_editor_get_type:      # @gimp_tool_options_editor_get_type
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
	movq	gimp_tool_options_editor_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_tool_options_editor_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_editor_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$824, %edx              # imm = 0x338
	movabsq	$gimp_tool_options_editor_class_intern_init, %rdi
	movl	$144, %r8d
	movabsq	$gimp_tool_options_editor_init, %rcx
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
	movabsq	$gimp_tool_options_editor_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_tool_options_editor_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_tool_options_editor_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_tool_options_editor_get_type, .Lfunc_end0-gimp_tool_options_editor_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_options_editor_class_intern_init,@function
gimp_tool_options_editor_class_intern_init: # @gimp_tool_options_editor_class_intern_init
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
	movq	%rax, gimp_tool_options_editor_parent_class
	cmpl	$0, GimpToolOptionsEditor_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpToolOptionsEditor_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_tool_options_editor_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_tool_options_editor_class_intern_init, .Lfunc_end1-gimp_tool_options_editor_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_options_editor_init,@function
gimp_tool_options_editor_init:          # @gimp_tool_options_editor_init
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_tool_options_editor_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	-8(%rbp), %rsi
	movq	%rax, 136(%rsi)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	$200, %edx
	movq	%rax, %rdi
	callq	gtk_widget_set_size_request
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_tool_info_get_type
	movabsq	$gimp_tool_options_editor_drop_tool, %rdx
	movq	-8(%rbp), %rsi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-64(%rbp), %rcx         # 8-byte Reload
	callq	gimp_dnd_viewable_dest_add
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	gtk_label_new
	movq	-8(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	%rax, 24(%rcx)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	movss	%xmm0, -84(%rbp)        # 4-byte Spill
	movss	-84(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	gtk_misc_set_alignment
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %esi
	movl	$700, %edx              # imm = 0x2BC
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_label_set_attributes
	movq	-8(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rsi
	movq	136(%rsi), %rsi
	movq	24(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	movl	-108(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	24(%rax), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gtk_scrolled_window_new
	movq	-8(%rbp), %rsi
	movq	136(%rsi), %rsi
	movq	%rax, 8(%rsi)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_scrolled_window_set_policy
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rsi
	movq	136(%rsi), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rdi
	callq	gtk_scrolled_window_get_hadjustment
	movq	-16(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_vadjustment
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_viewport_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_viewport_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_viewport_set_shadow_type
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	xorl	%esi, %esi
	callq	gtk_box_new
	movq	-8(%rbp), %r9
	movq	136(%r9), %r9
	movq	%rax, 16(%r9)
	movq	-24(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	136(%rsi), %rsi
	movq	16(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_show
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_tool_options_editor_init, .Lfunc_end2-gimp_tool_options_editor_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_options_editor_docked_iface_init,@function
gimp_tool_options_editor_docked_iface_init: # @gimp_tool_options_editor_docked_iface_init
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
	movabsq	$gimp_tool_options_editor_get_prefer_icon, %rax
	movabsq	$gimp_tool_options_editor_get_title, %rcx
	movabsq	$gimp_tool_options_editor_get_preview, %rdx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdx, 40(%rdi)
	movq	-8(%rbp), %rdx
	movq	%rcx, 64(%rdx)
	movq	-8(%rbp), %rcx
	movq	%rax, 48(%rcx)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_tool_options_editor_docked_iface_init, .Lfunc_end3-gimp_tool_options_editor_docked_iface_init
	.cfi_endproc

	.globl	gimp_tool_options_editor_new
	.align	16, 0x90
	.type	gimp_tool_options_editor_new,@function
gimp_tool_options_editor_new:           # @gimp_tool_options_editor_new
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
	pushq	%r14
	pushq	%rbx
	subq	$144, %rsp
.Ltmp15:
	.cfi_offset %rbx, -32
.Ltmp16:
	.cfi_offset %r14, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_options_editor_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB4_25
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_menu_factory_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB4_15
# BB#14:                                # %if.then.20
	movl	$0, -84(%rbp)
	jmp	.LBB4_20
.LBB4_15:                               # %if.else.21
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_18
# BB#16:                                # %land.lhs.true.24
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB4_18
# BB#17:                                # %if.then.28
	movl	$1, -84(%rbp)
	jmp	.LBB4_19
.LBB4_18:                               # %if.else.29
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB4_19:                               # %if.end.31
	jmp	.LBB4_20
.LBB4_20:                               # %if.end.32
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB4_22
# BB#21:                                # %if.then.35
	jmp	.LBB4_23
.LBB4_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_options_editor_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB4_25
.LBB4_23:                               # %if.end.37
	jmp	.LBB4_24
.LBB4_24:                               # %do.end.38
	callq	gimp_tool_options_editor_get_type
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %rcx
	movabsq	$.L.str.6, %r9
	movabsq	$.L.str.7, %rdx
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %r8
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movq	-32(%rbp), %rbx
	movq	-40(%rbp), %r14
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rbx, %rdx
	movq	%r8, -112(%rbp)         # 8-byte Spill
	movq	%r14, %r8
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-96(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, 8(%rsp)
	movq	-112(%rbp), %r14        # 8-byte Reload
	movq	%r14, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	movq	%r11, -120(%rbp)        # 8-byte Spill
	callq	g_object_new
	movq	%rax, -24(%rbp)
.LBB4_25:                               # %return
	movq	-24(%rbp), %rax
	addq	$144, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_tool_options_editor_new, .Lfunc_end4-gimp_tool_options_editor_new
	.cfi_endproc

	.globl	gimp_tool_options_editor_get_tool_options
	.align	16, 0x90
	.type	gimp_tool_options_editor_get_tool_options,@function
gimp_tool_options_editor_get_tool_options: # @gimp_tool_options_editor_get_tool_options
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_options_editor_get_type
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
	movabsq	$.L__func__.gimp_tool_options_editor_get_tool_options, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_13
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB5_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_tool_options_editor_get_tool_options, .Lfunc_end5-gimp_tool_options_editor_get_tool_options
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_options_editor_class_init,@function
gimp_tool_options_editor_class_init:    # @gimp_tool_options_editor_class_init
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
	subq	$32, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$gimp_tool_options_editor_get_property, %rsi
	movabsq	$gimp_tool_options_editor_set_property, %rdi
	movabsq	$gimp_tool_options_editor_dispose, %rcx
	movabsq	$gimp_tool_options_editor_constructed, %rdx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 40(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 32(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_get_type
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movl	$72, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_tool_options_editor_class_init, .Lfunc_end6-gimp_tool_options_editor_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_options_editor_constructed,@function
gimp_tool_options_editor_constructed:   # @gimp_tool_options_editor_constructed
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
	pushq	%rbx
	subq	$168, %rsp
.Ltmp26:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_tool_options_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	gimp_tool_options_editor_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_tool_options_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
.LBB7_2:                                # %if.end
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.13, %rcx
	movabsq	$gimp_tool_options_editor_save_clicked, %rdi
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-24(%rbp), %r8
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%r8, -72(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	movq	-72(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	gimp_editor_add_button
	movq	-24(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	%rax, 32(%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.15, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.14, %rsi
	movabsq	$.L.str.16, %rcx
	movabsq	$gimp_tool_options_editor_restore_clicked, %rdx
	xorl	%ebx, %ebx
	movl	%ebx, %r9d
	movq	-24(%rbp), %rdi
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-104(%rbp), %r8         # 8-byte Reload
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	gimp_editor_add_button
	movq	-24(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	%rax, 40(%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.18, %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.17, %rsi
	movabsq	$.L.str.19, %rcx
	movabsq	$gimp_tool_options_editor_delete_clicked, %rdx
	xorl	%ebx, %ebx
	movl	%ebx, %r9d
	movq	-24(%rbp), %rdi
	movq	-120(%rbp), %r8         # 8-byte Reload
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-136(%rbp), %r8         # 8-byte Reload
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	gimp_editor_add_button
	movq	-24(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	%rax, 48(%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.20, %rsi
	movabsq	$.L.str.21, %rdx
	movabsq	$.L.str.22, %rcx
	movl	$1, %r8d
	xorl	%ebx, %ebx
	movl	%ebx, %r9d
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-24(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	%rax, 56(%rcx)
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	(%rax), %rdi
	callq	gimp_get_user_context
	movabsq	$.L.str.23, %rsi
	movabsq	$gimp_tool_options_editor_tool_changed, %rcx
	xorl	%r8d, %r8d
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-152(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_context_get_tool
	movq	-24(%rbp), %rdx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_tool_options_editor_tool_changed
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_tool_options_editor_constructed, .Lfunc_end7-gimp_tool_options_editor_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_options_editor_dispose,@function
gimp_tool_options_editor_dispose:       # @gimp_tool_options_editor_dispose
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_tool_options_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	cmpq	$0, 16(%rax)
	je	.LBB8_9
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_children
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB8_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB8_8
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_object_ref
	movq	-16(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	16(%rdi), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_container_remove
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB8_2 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB8_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB8_7
.LBB8_6:                                # %cond.false
                                        #   in Loop: Header=BB8_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB8_7
.LBB8_7:                                # %cond.end
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB8_2
.LBB8_8:                                # %for.end
	movq	-24(%rbp), %rdi
	callq	g_list_free
	movq	-16(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	$0, 16(%rdi)
.LBB8_9:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_tool_options_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_tool_options_editor_dispose, .Lfunc_end8-gimp_tool_options_editor_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_options_editor_set_property,@function
gimp_tool_options_editor_set_property:  # @gimp_tool_options_editor_set_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_tool_options_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB9_2
	jmp	.LBB9_1
.LBB9_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	-40(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	%rax, (%rdi)
	jmp	.LBB9_5
.LBB9_2:                                # %sw.default
	jmp	.LBB9_3
.LBB9_3:                                # %do.body
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
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.32, %rdi
	movabsq	$.L.str.33, %rsi
	movl	$285, %edx              # imm = 0x11D
	movabsq	$.L.str.34, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB9_5
.LBB9_5:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_tool_options_editor_set_property, .Lfunc_end9-gimp_tool_options_editor_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_options_editor_get_property,@function
gimp_tool_options_editor_get_property:  # @gimp_tool_options_editor_get_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_tool_options_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB10_2
	jmp	.LBB10_1
.LBB10_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	136(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB10_5
.LBB10_2:                               # %sw.default
	jmp	.LBB10_3
.LBB10_3:                               # %do.body
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
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.32, %rdi
	movabsq	$.L.str.33, %rsi
	movl	$305, %edx              # imm = 0x131
	movabsq	$.L.str.34, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB10_5
.LBB10_5:                               # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_tool_options_editor_get_property, .Lfunc_end10-gimp_tool_options_editor_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_options_editor_save_clicked,@function
gimp_tool_options_editor_save_clicked:  # @gimp_tool_options_editor_save_clicked
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	136(%rsi), %rsi
	movq	40(%rsi), %rdi
	callq	gtk_widget_get_sensitive
	cmpl	$0, %eax
	je	.LBB11_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.24, %rdx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	gimp_tool_options_editor_menu_popup
	jmp	.LBB11_3
.LBB11_2:                               # %if.else
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_ui_manager
	movabsq	$.L.str.20, %rsi
	movabsq	$.L.str.25, %rdx
	movq	%rax, %rdi
	callq	gimp_ui_manager_activate_action
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB11_3:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_tool_options_editor_save_clicked, .Lfunc_end11-gimp_tool_options_editor_save_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_options_editor_restore_clicked,@function
gimp_tool_options_editor_restore_clicked: # @gimp_tool_options_editor_restore_clicked
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
	movabsq	$.L.str.26, %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	gimp_tool_options_editor_menu_popup
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_tool_options_editor_restore_clicked, .Lfunc_end12-gimp_tool_options_editor_restore_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_options_editor_delete_clicked,@function
gimp_tool_options_editor_delete_clicked: # @gimp_tool_options_editor_delete_clicked
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
	subq	$16, %rsp
	movabsq	$.L.str.27, %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	gimp_tool_options_editor_menu_popup
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_tool_options_editor_delete_clicked, .Lfunc_end13-gimp_tool_options_editor_delete_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_options_editor_tool_changed,@function
gimp_tool_options_editor_tool_changed:  # @gimp_tool_options_editor_tool_changed
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_tool_info_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_options_editor_tool_changed, %rsi
	movabsq	$.L.str.28, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_31
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	cmpq	$0, -16(%rbp)
	je	.LBB14_15
# BB#13:                                # %land.lhs.true.12
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	136(%rcx), %rcx
	cmpq	64(%rcx), %rax
	jne	.LBB14_15
# BB#14:                                # %if.then.14
	jmp	.LBB14_31
.LBB14_15:                              # %if.end.15
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	cmpq	$0, 64(%rax)
	je	.LBB14_21
# BB#16:                                # %if.then.19
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	64(%rax), %rax
	movq	344(%rax), %rax
	movq	136(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB14_18
# BB#17:                                # %if.then.25
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_tool_options_editor_presets_update, %rdx
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-80(%rbp), %r10         # 8-byte Reload
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-88(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB14_18:                              # %if.end.27
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	64(%rax), %rdi
	callq	gimp_tools_get_tool_options_gui
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB14_20
# BB#19:                                # %if.then.32
	movq	-40(%rbp), %rdi
	callq	gtk_widget_hide
.LBB14_20:                              # %if.end.33
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	$0, 64(%rax)
.LBB14_21:                              # %if.end.36
	cmpq	$0, -16(%rbp)
	je	.LBB14_28
# BB#22:                                # %land.lhs.true.38
	movq	-16(%rbp), %rax
	cmpq	$0, 120(%rax)
	je	.LBB14_28
# BB#23:                                # %if.then.41
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB14_25
# BB#24:                                # %if.then.44
	movl	$80, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.29, %rsi
	movabsq	$gimp_tool_options_editor_presets_update, %rcx
	movl	$2, %r8d
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_signal_connect_object
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.30, %rsi
	movabsq	$gimp_tool_options_editor_presets_update, %rcx
	movl	$2, %r8d
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_signal_connect_object
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.31, %rsi
	movabsq	$gimp_tool_options_editor_presets_update, %rcx
	movl	$2, %r8d
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_signal_connect_object
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB14_25:                              # %if.end.51
	movq	-16(%rbp), %rax
	movq	120(%rax), %rdi
	callq	gimp_tools_get_tool_options_gui
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_widget_get_parent
	cmpq	$0, %rax
	jne	.LBB14_27
# BB#26:                                # %if.then.56
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	movl	-156(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
.LBB14_27:                              # %if.end.60
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movq	120(%rdi), %rdi
	movq	-24(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	%rdi, 64(%rcx)
	movq	-24(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movq	104(%rcx), %rdx
	callq	gimp_help_set_help_data
	movq	-24(%rbp), %rdi
	callq	gimp_tool_options_editor_presets_update
.LBB14_28:                              # %if.end.65
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	cmpq	$0, 24(%rax)
	je	.LBB14_30
# BB#29:                                # %if.then.68
	movq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_docked_interface_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_docked_get_title
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-72(%rbp), %rdi
	callq	g_free
.LBB14_30:                              # %if.end.77
	movq	-24(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_docked_interface_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_docked_title_changed
.LBB14_31:                              # %return
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_tool_options_editor_tool_changed, .Lfunc_end14-gimp_tool_options_editor_tool_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_options_editor_menu_popup,@function
gimp_tool_options_editor_menu_popup:    # @gimp_tool_options_editor_menu_popup
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_editor_get_ui_manager
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_ui_path
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_ui_manager_get_widget
	movq	-32(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_ui_manager
	movq	-32(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_popup_data
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_ui_manager_update
	movq	-32(%rbp), %rdi
	callq	gimp_editor_get_ui_manager
	movabsq	$gimp_tool_options_editor_menu_pos, %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-80(%rbp), %r8          # 8-byte Reload
	movq	$0, (%rsp)
	callq	gimp_ui_manager_ui_popup
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_tool_options_editor_menu_popup, .Lfunc_end15-gimp_tool_options_editor_menu_popup
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_options_editor_menu_pos,@function
gimp_tool_options_editor_menu_pos:      # @gimp_tool_options_editor_menu_pos
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
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_button_menu_position
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_tool_options_editor_menu_pos, .Lfunc_end16-gimp_tool_options_editor_menu_pos
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_options_editor_presets_update,@function
gimp_tool_options_editor_presets_update: # @gimp_tool_options_editor_presets_update
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	64(%rdi), %rdi
	movq	344(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movq	-16(%rbp), %rdi
	cmpq	$0, 136(%rdi)
	je	.LBB17_4
# BB#1:                                 # %if.then
	movl	$1, -20(%rbp)
	movl	$1, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	136(%rax), %rdi
	callq	gimp_container_is_empty
	cmpl	$0, %eax
	jne	.LBB17_3
# BB#2:                                 # %if.then.4
	movl	$1, -24(%rbp)
	movl	$1, -28(%rbp)
.LBB17_3:                               # %if.end
	jmp	.LBB17_4
.LBB17_4:                               # %if.end.5
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	32(%rax), %rdi
	movl	-20(%rbp), %esi
	callq	gtk_widget_set_sensitive
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	40(%rax), %rdi
	movl	-24(%rbp), %esi
	callq	gtk_widget_set_sensitive
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	48(%rax), %rdi
	movl	-28(%rbp), %esi
	callq	gtk_widget_set_sensitive
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	56(%rax), %rdi
	movl	-32(%rbp), %esi
	callq	gtk_widget_set_sensitive
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_tool_options_editor_presets_update, .Lfunc_end17-gimp_tool_options_editor_presets_update
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB18_2
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
.LBB18_2:                               # %entry
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
.Lfunc_end18:
	.size	g_warning, .Lfunc_end18-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_options_editor_get_preview,@function
gimp_tool_options_editor_get_preview:   # @gimp_tool_options_editor_get_preview
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_settings
	leaq	-44(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gtk_icon_size_lookup_for_settings
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.35, %rsi
	movq	-16(%rbp), %rdx
	movl	-48(%rbp), %ecx
	movq	%rax, %rdi
	callq	gimp_prop_view_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	112(%rax), %rax
	movl	$-1, 136(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	112(%rax), %rdi
	movl	-44(%rbp), %esi
	movl	-48(%rbp), %edx
	callq	gimp_view_renderer_set_size_full
	movq	-40(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_tool_options_editor_get_preview, .Lfunc_end19-gimp_tool_options_editor_get_preview
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_options_editor_get_title,@function
gimp_tool_options_editor_get_title:     # @gimp_tool_options_editor_get_title
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_tool_options_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	(%rax), %rdi
	callq	gimp_get_user_context
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_tool
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB20_2
# BB#1:                                 # %cond.true
	movq	-32(%rbp), %rax
	movq	64(%rax), %rdi
	callq	g_strdup
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB20_3
.LBB20_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB20_3
.LBB20_3:                               # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_tool_options_editor_get_title, .Lfunc_end20-gimp_tool_options_editor_get_title
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_options_editor_get_prefer_icon,@function
gimp_tool_options_editor_get_prefer_icon: # @gimp_tool_options_editor_get_prefer_icon
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
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_tool_options_editor_get_prefer_icon, .Lfunc_end21-gimp_tool_options_editor_get_prefer_icon
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_options_editor_drop_tool,@function
gimp_tool_options_editor_drop_tool:     # @gimp_tool_options_editor_drop_tool
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_tool_options_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	136(%rax), %rax
	movq	(%rax), %rdi
	callq	gimp_get_user_context
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_tool_info_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_set_tool
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_tool_options_editor_drop_tool, .Lfunc_end22-gimp_tool_options_editor_drop_tool
	.cfi_endproc

	.type	gimp_tool_options_editor_get_type.g_define_type_id__volatile,@object # @gimp_tool_options_editor_get_type.g_define_type_id__volatile
	.local	gimp_tool_options_editor_get_type.g_define_type_id__volatile
	.comm	gimp_tool_options_editor_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpToolOptionsEditor"
	.size	.L.str, 22

	.type	gimp_tool_options_editor_get_type.g_implement_interface_info,@object # @gimp_tool_options_editor_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_tool_options_editor_get_type.g_implement_interface_info:
	.quad	gimp_tool_options_editor_docked_iface_init
	.quad	0
	.quad	0
	.size	gimp_tool_options_editor_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_tool_options_editor_new,@object # @__func__.gimp_tool_options_editor_new
.L__func__.gimp_tool_options_editor_new:
	.asciz	"gimp_tool_options_editor_new"
	.size	.L__func__.gimp_tool_options_editor_new, 29

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_MENU_FACTORY (menu_factory)"
	.size	.L.str.3, 36

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"menu-factory"
	.size	.L.str.5, 13

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"menu-identifier"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"<ToolOptions>"
	.size	.L.str.7, 14

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"ui-path"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"/tool-options-popup"
	.size	.L.str.9, 20

	.type	.L__func__.gimp_tool_options_editor_get_tool_options,@object # @__func__.gimp_tool_options_editor_get_tool_options
.L__func__.gimp_tool_options_editor_get_tool_options:
	.asciz	"gimp_tool_options_editor_get_tool_options"
	.size	.L__func__.gimp_tool_options_editor_get_tool_options, 42

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"GIMP_IS_TOOL_OPTIONS_EDITOR (editor)"
	.size	.L.str.10, 37

	.type	gimp_tool_options_editor_parent_class,@object # @gimp_tool_options_editor_parent_class
	.local	gimp_tool_options_editor_parent_class
	.comm	gimp_tool_options_editor_parent_class,8,8
	.type	GimpToolOptionsEditor_private_offset,@object # @GimpToolOptionsEditor_private_offset
	.local	GimpToolOptionsEditor_private_offset
	.comm	GimpToolOptionsEditor_private_offset,4,4
	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gtk-save"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Save Tool Preset..."
	.size	.L.str.12, 20

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp-tool-options-save"
	.size	.L.str.13, 23

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gtk-revert-to-saved"
	.size	.L.str.14, 20

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Restore Tool Preset..."
	.size	.L.str.15, 23

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp-tool-options-restore"
	.size	.L.str.16, 26

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gtk-delete"
	.size	.L.str.17, 11

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Delete Tool Preset..."
	.size	.L.str.18, 22

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp-tool-options-delete"
	.size	.L.str.19, 25

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"tool-options"
	.size	.L.str.20, 13

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"tool-options-reset"
	.size	.L.str.21, 19

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"tool-options-reset-all"
	.size	.L.str.22, 23

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"tool-changed"
	.size	.L.str.23, 13

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"/tool-options-popup/Save"
	.size	.L.str.24, 25

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"tool-options-save-new-preset"
	.size	.L.str.25, 29

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"/tool-options-popup/Restore"
	.size	.L.str.26, 28

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"/tool-options-popup/Delete"
	.size	.L.str.27, 27

	.type	.L__func__.gimp_tool_options_editor_tool_changed,@object # @__func__.gimp_tool_options_editor_tool_changed
.L__func__.gimp_tool_options_editor_tool_changed:
	.asciz	"gimp_tool_options_editor_tool_changed"
	.size	.L__func__.gimp_tool_options_editor_tool_changed, 38

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"GIMP_IS_TOOL_INFO(tool_info)"
	.size	.L.str.28, 29

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"add"
	.size	.L.str.29, 4

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"remove"
	.size	.L.str.30, 7

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"thaw"
	.size	.L.str.31, 5

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.32, 54

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gimptooloptionseditor.c"
	.size	.L.str.33, 24

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"property"
	.size	.L.str.34, 9

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"tool"
	.size	.L.str.35, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
