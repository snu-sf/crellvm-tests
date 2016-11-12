	.text
	.file	"gimpeditor.bc"
	.globl	gimp_editor_get_type
	.align	16, 0x90
	.type	gimp_editor_get_type,@function
gimp_editor_get_type:                   # @gimp_editor_get_type
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
	movq	gimp_editor_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_editor_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_box_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$824, %edx              # imm = 0x338
	movabsq	$gimp_editor_class_intern_init, %rdi
	movl	$136, %r8d
	movabsq	$gimp_editor_init, %rcx
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
	movabsq	$gimp_editor_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_editor_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_editor_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_editor_get_type, .Lfunc_end0-gimp_editor_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_editor_class_intern_init,@function
gimp_editor_class_intern_init:          # @gimp_editor_class_intern_init
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
	movq	%rax, gimp_editor_parent_class
	cmpl	$0, GimpEditor_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpEditor_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_editor_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_editor_class_intern_init, .Lfunc_end1-gimp_editor_class_intern_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_editor_init,@function
gimp_editor_init:                       # @gimp_editor_init
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_orientable_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_orientable_set_orientation
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	-8(%rbp), %rsi
	movq	%rax, 128(%rsi)
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rsi
	movq	128(%rsi), %rsi
	movq	%rax, 32(%rsi)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movl	$1, 40(%rax)
	callq	gtk_label_get_type
	movabsq	$.L.str.35, %rsi
	xorps	%xmm0, %xmm0
	movabsq	$.L.str.36, %rdx
	movsd	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero
	movabsq	$.L.str.37, %rcx
	movl	$3, %r8d
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	%rax, %rdi
	movb	$2, %al
	callq	g_object_new
	movq	-8(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	%rax, 48(%rcx)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %esi
	movl	$2, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_label_set_attributes
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rsi
	movq	128(%rsi), %rsi
	movq	48(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movl	-44(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_editor_init, .Lfunc_end2-gimp_editor_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_editor_docked_iface_init,@function
gimp_editor_docked_iface_init:          # @gimp_editor_docked_iface_init
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
	movabsq	$gimp_editor_get_show_button_bar, %rax
	movabsq	$gimp_editor_set_show_button_bar, %rcx
	movabsq	$gimp_editor_has_button_bar, %rdx
	movabsq	$gimp_editor_get_menu, %rsi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rsi, 56(%rdi)
	movq	-8(%rbp), %rsi
	movq	%rdx, 80(%rsi)
	movq	-8(%rbp), %rdx
	movq	%rcx, 88(%rdx)
	movq	-8(%rbp), %rcx
	movq	%rax, 96(%rcx)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_editor_docked_iface_init, .Lfunc_end3-gimp_editor_docked_iface_init
	.cfi_endproc

	.globl	gimp_editor_new
	.align	16, 0x90
	.type	gimp_editor_new,@function
gimp_editor_new:                        # @gimp_editor_new
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
	callq	gimp_editor_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_editor_new, .Lfunc_end4-gimp_editor_new
	.cfi_endproc

	.globl	gimp_editor_create_menu
	.align	16, 0x90
	.type	gimp_editor_create_menu,@function
gimp_editor_create_menu:                # @gimp_editor_create_menu
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_editor_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_editor_create_menu, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_41
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_menu_factory_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB5_15
# BB#14:                                # %if.then.20
	movl	$0, -84(%rbp)
	jmp	.LBB5_20
.LBB5_15:                               # %if.else.21
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_18
# BB#16:                                # %land.lhs.true.24
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB5_18
# BB#17:                                # %if.then.28
	movl	$1, -84(%rbp)
	jmp	.LBB5_19
.LBB5_18:                               # %if.else.29
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB5_19:                               # %if.end.31
	jmp	.LBB5_20
.LBB5_20:                               # %if.end.32
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB5_22
# BB#21:                                # %if.then.35
	jmp	.LBB5_23
.LBB5_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_editor_create_menu, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_41
.LBB5_23:                               # %if.end.37
	jmp	.LBB5_24
.LBB5_24:                               # %do.end.38
	jmp	.LBB5_25
.LBB5_25:                               # %do.body.39
	cmpq	$0, -24(%rbp)
	je	.LBB5_27
# BB#26:                                # %if.then.41
	jmp	.LBB5_28
.LBB5_27:                               # %if.else.42
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_editor_create_menu, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_41
.LBB5_28:                               # %if.end.43
	jmp	.LBB5_29
.LBB5_29:                               # %do.end.44
	jmp	.LBB5_30
.LBB5_30:                               # %do.body.45
	cmpq	$0, -32(%rbp)
	je	.LBB5_32
# BB#31:                                # %if.then.47
	jmp	.LBB5_33
.LBB5_32:                               # %if.else.48
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_editor_create_menu, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_41
.LBB5_33:                               # %if.end.49
	jmp	.LBB5_34
.LBB5_34:                               # %do.end.50
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB5_36
# BB#35:                                # %if.then.53
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB5_36:                               # %if.end.56
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-8(%rbp), %rdi
	movq	128(%rdi), %rdi
	movq	%rax, (%rdi)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	cmpq	$0, 16(%rax)
	je	.LBB5_38
# BB#37:                                # %if.then.62
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB5_38:                               # %if.end.65
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_menu_factory_manager_new
	movq	-8(%rbp), %rdx
	movq	128(%rdx), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	cmpq	$0, 24(%rax)
	je	.LBB5_40
# BB#39:                                # %if.then.72
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	24(%rax), %rdi
	callq	g_free
.LBB5_40:                               # %if.end.75
	movq	-32(%rbp), %rdi
	callq	g_strdup
	movq	-8(%rbp), %rdi
	movq	128(%rdi), %rdi
	movq	%rax, 24(%rdi)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	128(%rdi), %rdi
	movq	%rax, 32(%rdi)
.LBB5_41:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_editor_create_menu, .Lfunc_end5-gimp_editor_create_menu
	.cfi_endproc

	.globl	gimp_editor_popup_menu
	.align	16, 0x90
	.type	gimp_editor_popup_menu,@function
gimp_editor_popup_menu:                 # @gimp_editor_popup_menu
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_editor_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_editor_popup_menu, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_16
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	cmpq	$0, 16(%rax)
	je	.LBB6_15
# BB#13:                                # %land.lhs.true.12
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	cmpq	$0, 24(%rax)
	je	.LBB6_15
# BB#14:                                # %if.then.15
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	32(%rax), %rsi
	callq	gimp_ui_manager_update
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	24(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %r8
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movq	$0, (%rsp)
	callq	gimp_ui_manager_ui_popup
	movl	$1, -4(%rbp)
	jmp	.LBB6_16
.LBB6_15:                               # %if.end.25
	movl	$0, -4(%rbp)
.LBB6_16:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_editor_popup_menu, .Lfunc_end6-gimp_editor_popup_menu
	.cfi_endproc

	.globl	gimp_editor_add_button
	.align	16, 0x90
	.type	gimp_editor_add_button,@function
gimp_editor_add_button:                 # @gimp_editor_add_button
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
	subq	$176, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	%rax, -64(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_editor_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -108(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -108(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_editor_add_button, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_25
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB7_15
# BB#14:                                # %if.then.13
	jmp	.LBB7_16
.LBB7_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_editor_add_button, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_25
.LBB7_16:                               # %if.end.15
	jmp	.LBB7_17
.LBB7_17:                               # %do.end.16
	leaq	-88(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_editor_ensure_button_box
	movl	%eax, -84(%rbp)
	callq	gimp_button_get_type
	movabsq	$.L.str.7, %rsi
	movl	$1, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-88(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_button_set_relief
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -132(%rbp)        # 4-byte Spill
	movl	-132(%rbp), %ecx        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	cmpq	$0, -32(%rbp)
	jne	.LBB7_19
# BB#18:                                # %lor.lhs.false
	cmpq	$0, -40(%rbp)
	je	.LBB7_20
.LBB7_19:                               # %if.then.26
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_help_set_help_data
.LBB7_20:                               # %if.end.27
	cmpq	$0, -48(%rbp)
	je	.LBB7_22
# BB#21:                                # %if.then.29
	movabsq	$.L.str.8, %rsi
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-144(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB7_22:                               # %if.end.31
	cmpq	$0, -56(%rbp)
	je	.LBB7_24
# BB#23:                                # %if.then.33
	movabsq	$.L.str.9, %rsi
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-160(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB7_24:                               # %if.end.35
	movq	-24(%rbp), %rdi
	movl	-84(%rbp), %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB7_25:                               # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_editor_add_button, .Lfunc_end7-gimp_editor_add_button
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_editor_ensure_button_box,@function
gimp_editor_ensure_button_box:          # @gimp_editor_ensure_button_box
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.22, %rsi
	leaq	-20(%rbp), %rdx
	movabsq	$.L.str.23, %rcx
	leaq	-24(%rbp), %r8
	movabsq	$.L.str.24, %r9
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-16(%rbp), %r11
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%r11, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gtk_widget_style_get
	movq	-8(%rbp), %rcx
	movq	128(%rcx), %rcx
	cmpq	$0, 56(%rcx)
	jne	.LBB8_4
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movl	-24(%rbp), %esi
	callq	gtk_box_new
	movq	-8(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	%rax, 56(%rcx)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_homogeneous
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-8(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	56(%rcx), %rsi
	movq	%rax, %rdi
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movl	-60(%rbp), %ecx         # 4-byte Reload
	movl	-60(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_end
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-8(%rbp), %rsi
	movq	128(%rsi), %rsi
	movq	56(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_box_reorder_child
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	cmpl	$0, 40(%rax)
	je	.LBB8_3
# BB#2:                                 # %if.then.19
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	56(%rax), %rdi
	callq	gtk_widget_show
.LBB8_3:                                # %if.end
	jmp	.LBB8_4
.LBB8_4:                                # %if.end.22
	movl	-20(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_editor_ensure_button_box, .Lfunc_end8-gimp_editor_ensure_button_box
	.cfi_endproc

	.globl	gimp_editor_add_stock_box
	.align	16, 0x90
	.type	gimp_editor_add_stock_box,@function
gimp_editor_add_stock_box:              # @gimp_editor_add_stock_box
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
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_editor_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -108(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -108(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_editor_add_stock_box, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_30
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.11
	movl	$48, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB9_15
# BB#14:                                # %if.then.14
	jmp	.LBB9_16
.LBB9_15:                               # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_editor_add_stock_box, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_30
.LBB9_16:                               # %if.end.16
	jmp	.LBB9_17
.LBB9_17:                               # %do.end.17
	jmp	.LBB9_18
.LBB9_18:                               # %do.body.18
	cmpq	$0, -32(%rbp)
	je	.LBB9_20
# BB#19:                                # %if.then.20
	jmp	.LBB9_21
.LBB9_20:                               # %if.else.21
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_editor_add_stock_box, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_30
.LBB9_21:                               # %if.end.22
	jmp	.LBB9_22
.LBB9_22:                               # %do.end.23
	leaq	-72(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_editor_ensure_button_box
	leaq	-64(%rbp), %r9
	movl	%eax, -68(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-68(%rbp), %edx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	callq	gimp_enum_stock_box_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_children
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB9_23:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -88(%rbp)
	je	.LBB9_29
# BB#24:                                # %for.body
                                        #   in Loop: Header=BB9_23 Depth=1
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-120(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-72(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_button_set_relief
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_remove
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
# BB#25:                                # %for.inc
                                        #   in Loop: Header=BB9_23 Depth=1
	cmpq	$0, -88(%rbp)
	je	.LBB9_27
# BB#26:                                # %cond.true
                                        #   in Loop: Header=BB9_23 Depth=1
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB9_28
.LBB9_27:                               # %cond.false
                                        #   in Loop: Header=BB9_23 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB9_28
.LBB9_28:                               # %cond.end
                                        #   in Loop: Header=BB9_23 Depth=1
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, -88(%rbp)
	jmp	.LBB9_23
.LBB9_29:                               # %for.end
	movq	-80(%rbp), %rdi
	callq	g_list_free
	movq	-56(%rbp), %rdi
	callq	g_object_ref_sink
	movq	-56(%rbp), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	g_object_unref
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB9_30:                               # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_editor_add_stock_box, .Lfunc_end9-gimp_editor_add_stock_box
	.cfi_endproc

	.globl	gimp_editor_add_action_button
	.align	16, 0x90
	.type	gimp_editor_add_action_button,@function
gimp_editor_add_action_button:          # @gimp_editor_add_action_button
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
	subq	$752, %rsp              # imm = 0x2F0
	testb	%al, %al
	movaps	%xmm7, -416(%rbp)       # 16-byte Spill
	movaps	%xmm6, -432(%rbp)       # 16-byte Spill
	movaps	%xmm5, -448(%rbp)       # 16-byte Spill
	movaps	%xmm4, -464(%rbp)       # 16-byte Spill
	movaps	%xmm3, -480(%rbp)       # 16-byte Spill
	movaps	%xmm2, -496(%rbp)       # 16-byte Spill
	movaps	%xmm1, -512(%rbp)       # 16-byte Spill
	movaps	%xmm0, -528(%rbp)       # 16-byte Spill
	movq	%rdi, -536(%rbp)        # 8-byte Spill
	movq	%r9, -544(%rbp)         # 8-byte Spill
	movq	%r8, -552(%rbp)         # 8-byte Spill
	movq	%rcx, -560(%rbp)        # 8-byte Spill
	movq	%rdx, -568(%rbp)        # 8-byte Spill
	movq	%rsi, -576(%rbp)        # 8-byte Spill
	je	.LBB10_71
# BB#70:                                # %entry
	movaps	-528(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -352(%rbp)
	movaps	-512(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -336(%rbp)
	movaps	-496(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -320(%rbp)
	movaps	-480(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -304(%rbp)
	movaps	-464(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -288(%rbp)
	movaps	-448(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -272(%rbp)
	movaps	-432(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -256(%rbp)
	movaps	-416(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -240(%rbp)
.LBB10_71:                              # %entry
	movq	-544(%rbp), %rax        # 8-byte Reload
	movq	%rax, -360(%rbp)
	movq	-552(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -368(%rbp)
	movq	-560(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -376(%rbp)
	movq	-568(%rbp), %rsi        # 8-byte Reload
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	-536(%rbp), %r8         # 8-byte Reload
	movq	%r8, -16(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -112(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)
	callq	gimp_editor_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -164(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -164(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_editor_add_action_button, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_69
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	jmp	.LBB10_13
.LBB10_13:                              # %do.body.11
	cmpq	$0, -32(%rbp)
	je	.LBB10_15
# BB#14:                                # %if.then.13
	jmp	.LBB10_16
.LBB10_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_editor_add_action_button, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_69
.LBB10_16:                              # %if.end.15
	jmp	.LBB10_17
.LBB10_17:                              # %do.end.16
	jmp	.LBB10_18
.LBB10_18:                              # %do.body.17
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	cmpq	$0, 16(%rax)
	je	.LBB10_20
# BB#19:                                # %if.then.19
	jmp	.LBB10_21
.LBB10_20:                              # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_editor_add_action_button, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_69
.LBB10_21:                              # %if.end.21
	jmp	.LBB10_22
.LBB10_22:                              # %do.end.22
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_ui_manager_get_action_group
	movq	%rax, -40(%rbp)
# BB#23:                                # %do.body.26
	cmpq	$0, -40(%rbp)
	je	.LBB10_25
# BB#24:                                # %if.then.28
	jmp	.LBB10_26
.LBB10_25:                              # %if.else.29
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_editor_add_action_button, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_69
.LBB10_26:                              # %if.end.30
	jmp	.LBB10_27
.LBB10_27:                              # %do.end.31
	movq	-40(%rbp), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_action_group_get_action
	movq	%rax, -48(%rbp)
# BB#28:                                # %do.body.35
	cmpq	$0, -48(%rbp)
	je	.LBB10_30
# BB#29:                                # %if.then.37
	jmp	.LBB10_31
.LBB10_30:                              # %if.else.38
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_editor_add_action_button, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_69
.LBB10_31:                              # %if.end.39
	jmp	.LBB10_32
.LBB10_32:                              # %do.end.40
	leaq	-80(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_editor_ensure_button_box
	movl	%eax, -76(%rbp)
	movq	-48(%rbp), %rsi
	movq	%rsi, -176(%rbp)
	callq	gtk_toggle_action_get_type
	movq	%rax, -184(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.LBB10_34
# BB#33:                                # %if.then.50
	movl	$0, -188(%rbp)
	jmp	.LBB10_39
.LBB10_34:                              # %if.else.51
	movq	-176(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_37
# BB#35:                                # %land.lhs.true.54
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-184(%rbp), %rax
	jne	.LBB10_37
# BB#36:                                # %if.then.58
	movl	$1, -188(%rbp)
	jmp	.LBB10_38
.LBB10_37:                              # %if.else.59
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -188(%rbp)
.LBB10_38:                              # %if.end.61
	jmp	.LBB10_39
.LBB10_39:                              # %if.end.62
	movl	-188(%rbp), %eax
	movl	%eax, -192(%rbp)
	cmpl	$0, -192(%rbp)
	je	.LBB10_41
# BB#40:                                # %if.then.65
	callq	gtk_toggle_button_new
	movq	%rax, -56(%rbp)
	jmp	.LBB10_42
.LBB10_41:                              # %if.else.67
	callq	gimp_button_new
	movq	%rax, -56(%rbp)
.LBB10_42:                              # %if.end.69
	movq	-56(%rbp), %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-80(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_button_set_relief
	movq	-48(%rbp), %rdi
	callq	gtk_action_get_stock_id
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_action_get_tooltip
	movq	%rax, %rdi
	callq	g_strdup
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rax, -96(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gimp_help_id_quark
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	g_object_get_qdata
	movq	%rax, -104(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB10_44
# BB#43:                                # %if.then.82
	movq	-64(%rbp), %rdi
	callq	gtk_widget_destroy
.LBB10_44:                              # %if.end.83
	movq	-88(%rbp), %rdi
	movl	-76(%rbp), %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gtk_activatable_get_type
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_activatable_set_related_action
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-144(%rbp), %rax
	movq	%rax, %rsi
	leaq	-400(%rbp), %rdi
	movq	%rdi, 16(%rsi)
	leaq	16(%rbp), %rdi
	movq	%rdi, 8(%rsi)
	movl	$48, 4(%rsi)
	movl	$24, (%rsi)
	movl	-144(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -640(%rbp)        # 8-byte Spill
	movl	%ecx, -644(%rbp)        # 4-byte Spill
	ja	.LBB10_46
# BB#45:                                # %vaarg.in_reg
	movl	-644(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-640(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -656(%rbp)        # 8-byte Spill
	jmp	.LBB10_47
.LBB10_46:                              # %vaarg.in_mem
	movq	-640(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -656(%rbp)        # 8-byte Spill
.LBB10_47:                              # %vaarg.end
	movq	-656(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB10_48:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB10_63
# BB#49:                                # %while.body
                                        #   in Loop: Header=BB10_48 Depth=1
	leaq	-144(%rbp), %rax
	movl	-144(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -664(%rbp)        # 8-byte Spill
	movl	%ecx, -668(%rbp)        # 4-byte Spill
	ja	.LBB10_51
# BB#50:                                # %vaarg.in_reg.100
                                        #   in Loop: Header=BB10_48 Depth=1
	movl	-668(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-664(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -680(%rbp)        # 8-byte Spill
	jmp	.LBB10_52
.LBB10_51:                              # %vaarg.in_mem.102
                                        #   in Loop: Header=BB10_48 Depth=1
	movq	-664(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -680(%rbp)        # 8-byte Spill
.LBB10_52:                              # %vaarg.end.106
                                        #   in Loop: Header=BB10_48 Depth=1
	movq	-680(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
	movl	%ecx, -196(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_action_group_get_action
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB10_59
# BB#53:                                # %land.lhs.true.112
                                        #   in Loop: Header=BB10_48 Depth=1
	cmpl	$0, -196(%rbp)
	je	.LBB10_59
# BB#54:                                # %if.then.114
                                        #   in Loop: Header=BB10_48 Depth=1
	movl	$16, %eax
	movl	%eax, %edi
	callq	g_slice_alloc
	movq	%rax, -208(%rbp)
	movl	-196(%rbp), %ecx
	movq	-208(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-48(%rbp), %rax
	movq	-208(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-112(%rbp), %rdi
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -112(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB10_58
# BB#55:                                # %if.then.121
                                        #   in Loop: Header=BB10_48 Depth=1
	movq	-48(%rbp), %rdi
	callq	gtk_action_get_tooltip
	movq	%rax, -216(%rbp)
	cmpq	$0, -216(%rbp)
	je	.LBB10_57
# BB#56:                                # %if.then.125
                                        #   in Loop: Header=BB10_48 Depth=1
	movq	-96(%rbp), %rdi
	movq	-208(%rbp), %rax
	movl	(%rax), %ecx
	movq	%rdi, -696(%rbp)        # 8-byte Spill
	movl	%ecx, %edi
	callq	gimp_get_mod_string
	movabsq	$.L.str.16, %rsi
	movabsq	$.L.str.17, %rcx
	xorl	%edi, %edi
	movl	%edi, %r9d
	movq	-216(%rbp), %r8
	movq	-696(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, -224(%rbp)
	movq	-96(%rbp), %rdi
	callq	g_free
	movq	-224(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB10_57:                              # %if.end.131
                                        #   in Loop: Header=BB10_48 Depth=1
	jmp	.LBB10_58
.LBB10_58:                              # %if.end.132
                                        #   in Loop: Header=BB10_48 Depth=1
	jmp	.LBB10_59
.LBB10_59:                              # %if.end.133
                                        #   in Loop: Header=BB10_48 Depth=1
	leaq	-144(%rbp), %rax
	movl	-144(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -704(%rbp)        # 8-byte Spill
	movl	%ecx, -708(%rbp)        # 4-byte Spill
	ja	.LBB10_61
# BB#60:                                # %vaarg.in_reg.138
                                        #   in Loop: Header=BB10_48 Depth=1
	movl	-708(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-704(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -720(%rbp)        # 8-byte Spill
	jmp	.LBB10_62
.LBB10_61:                              # %vaarg.in_mem.140
                                        #   in Loop: Header=BB10_48 Depth=1
	movq	-704(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -720(%rbp)        # 8-byte Spill
.LBB10_62:                              # %vaarg.end.144
                                        #   in Loop: Header=BB10_48 Depth=1
	movq	-720(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB10_48
.LBB10_63:                              # %while.end
	leaq	-144(%rbp), %rax
	cmpq	$0, -112(%rbp)
	movq	%rax, -728(%rbp)        # 8-byte Spill
	je	.LBB10_65
# BB#64:                                # %if.then.149
	movl	$80, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.18, %rsi
	movabsq	$gimp_editor_button_extended_actions_free, %rcx
	movq	-112(%rbp), %rdi
	movq	%rdi, -736(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-736(%rbp), %rdx        # 8-byte Reload
	callq	g_object_set_data_full
	movabsq	$.L.str.9, %rsi
	movabsq	$gimp_editor_button_extended_clicked, %rax
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	%rcx, -744(%rbp)        # 8-byte Spill
	movq	-744(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -752(%rbp)        # 8-byte Spill
.LBB10_65:                              # %if.end.152
	cmpq	$0, -96(%rbp)
	jne	.LBB10_67
# BB#66:                                # %lor.lhs.false
	cmpq	$0, -104(%rbp)
	je	.LBB10_68
.LBB10_67:                              # %if.then.155
	movq	-56(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-104(%rbp), %rdx
	callq	gimp_help_set_help_data_with_markup
.LBB10_68:                              # %if.end.156
	movq	-96(%rbp), %rdi
	callq	g_free
	movq	-56(%rbp), %rdi
	movq	%rdi, -8(%rbp)
.LBB10_69:                              # %return
	movq	-8(%rbp), %rax
	addq	$752, %rsp              # imm = 0x2F0
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_editor_add_action_button, .Lfunc_end10-gimp_editor_add_action_button
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_editor_button_extended_actions_free,@function
gimp_editor_button_extended_actions_free: # @gimp_editor_button_extended_actions_free
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB11_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_3
.LBB11_3:                               # %do.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	$16, %eax
	movl	%eax, %edi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rsi
	callq	g_slice_free1
# BB#4:                                 # %do.end
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_5
.LBB11_5:                               # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB11_1
.LBB11_6:                               # %for.end
	movq	-8(%rbp), %rdi
	callq	g_list_free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_editor_button_extended_actions_free, .Lfunc_end11-gimp_editor_button_extended_actions_free
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_editor_button_extended_clicked,@function
gimp_editor_button_extended_clicked:    # @gimp_editor_button_extended_clicked
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
	subq	$64, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.18, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB12_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	andl	-12(%rbp), %ecx
	movq	-48(%rbp), %rax
	cmpl	(%rax), %ecx
	jne	.LBB12_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gtk_action_get_sensitive
	cmpl	$0, %eax
	je	.LBB12_5
# BB#4:                                 # %if.then
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gtk_action_activate
	jmp	.LBB12_10
.LBB12_5:                               # %if.end
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_6
.LBB12_6:                               # %for.inc
                                        #   in Loop: Header=BB12_1 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB12_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB12_9
.LBB12_8:                               # %cond.false
                                        #   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB12_9
.LBB12_9:                               # %cond.end
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB12_1
.LBB12_10:                              # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_editor_button_extended_clicked, .Lfunc_end12-gimp_editor_button_extended_clicked
	.cfi_endproc

	.globl	gimp_editor_set_show_name
	.align	16, 0x90
	.type	gimp_editor_set_show_name,@function
gimp_editor_set_show_name:              # @gimp_editor_set_show_name
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_editor_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_editor_set_show_name, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_13
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	movabsq	$.L.str.19, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
.LBB13_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_editor_set_show_name, .Lfunc_end13-gimp_editor_set_show_name
	.cfi_endproc

	.globl	gimp_editor_set_name
	.align	16, 0x90
	.type	gimp_editor_set_name,@function
gimp_editor_set_name:                   # @gimp_editor_set_name
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_editor_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_editor_set_name, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_16
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpq	$0, -16(%rbp)
	movq	%rax, -56(%rbp)         # 8-byte Spill
	je	.LBB14_14
# BB#13:                                # %cond.true
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB14_15
.LBB14_14:                              # %cond.false
	movabsq	$.L.str.20, %rdi
	callq	gettext
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB14_15:                              # %cond.end
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_text
.LBB14_16:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_editor_set_name, .Lfunc_end14-gimp_editor_set_name
	.cfi_endproc

	.globl	gimp_editor_set_box_style
	.align	16, 0x90
	.type	gimp_editor_set_box_style,@function
gimp_editor_set_box_style:              # @gimp_editor_set_box_style
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_editor_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_editor_set_box_style, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_52
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	jmp	.LBB15_13
.LBB15_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gtk_box_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB15_15
# BB#14:                                # %if.then.20
	movl	$0, -92(%rbp)
	jmp	.LBB15_20
.LBB15_15:                              # %if.else.21
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_18
# BB#16:                                # %land.lhs.true.24
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB15_18
# BB#17:                                # %if.then.28
	movl	$1, -92(%rbp)
	jmp	.LBB15_19
.LBB15_18:                              # %if.else.29
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB15_19:                              # %if.end.31
	jmp	.LBB15_20
.LBB15_20:                              # %if.end.32
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB15_22
# BB#21:                                # %if.then.35
	jmp	.LBB15_23
.LBB15_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_editor_set_box_style, %rsi
	movabsq	$.L.str.21, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_52
.LBB15_23:                              # %if.end.37
	jmp	.LBB15_24
.LBB15_24:                              # %do.end.38
	movq	-8(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.22, %rsi
	leaq	-20(%rbp), %rdx
	movabsq	$.L.str.23, %rcx
	leaq	-24(%rbp), %r8
	movabsq	$.L.str.24, %r9
	leaq	-28(%rbp), %rdi
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movq	%r11, -192(%rbp)        # 8-byte Spill
	callq	gtk_widget_style_get
	movq	-16(%rbp), %rdi
	movl	-24(%rbp), %esi
	callq	gtk_box_set_spacing
	movq	-16(%rbp), %rcx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_children
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB15_25:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB15_51
# BB#26:                                # %for.body
                                        #   in Loop: Header=BB15_25 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	callq	gtk_button_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB15_28
# BB#27:                                # %if.then.53
                                        #   in Loop: Header=BB15_25 Depth=1
	movl	$0, -116(%rbp)
	jmp	.LBB15_33
.LBB15_28:                              # %if.else.54
                                        #   in Loop: Header=BB15_25 Depth=1
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_31
# BB#29:                                # %land.lhs.true.57
                                        #   in Loop: Header=BB15_25 Depth=1
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB15_31
# BB#30:                                # %if.then.61
                                        #   in Loop: Header=BB15_25 Depth=1
	movl	$1, -116(%rbp)
	jmp	.LBB15_32
.LBB15_31:                              # %if.else.62
                                        #   in Loop: Header=BB15_25 Depth=1
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB15_32:                              # %if.end.64
                                        #   in Loop: Header=BB15_25 Depth=1
	jmp	.LBB15_33
.LBB15_33:                              # %if.end.65
                                        #   in Loop: Header=BB15_25 Depth=1
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB15_46
# BB#34:                                # %if.then.68
                                        #   in Loop: Header=BB15_25 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-28(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_button_set_relief
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -136(%rbp)
	callq	gtk_image_get_type
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB15_36
# BB#35:                                # %if.then.85
                                        #   in Loop: Header=BB15_25 Depth=1
	movl	$0, -148(%rbp)
	jmp	.LBB15_41
.LBB15_36:                              # %if.else.86
                                        #   in Loop: Header=BB15_25 Depth=1
	movq	-136(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_39
# BB#37:                                # %land.lhs.true.89
                                        #   in Loop: Header=BB15_25 Depth=1
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB15_39
# BB#38:                                # %if.then.93
                                        #   in Loop: Header=BB15_25 Depth=1
	movl	$1, -148(%rbp)
	jmp	.LBB15_40
.LBB15_39:                              # %if.else.94
                                        #   in Loop: Header=BB15_25 Depth=1
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -148(%rbp)
.LBB15_40:                              # %if.end.96
                                        #   in Loop: Header=BB15_25 Depth=1
	jmp	.LBB15_41
.LBB15_41:                              # %if.end.97
                                        #   in Loop: Header=BB15_25 Depth=1
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB15_45
# BB#42:                                # %if.then.100
                                        #   in Loop: Header=BB15_25 Depth=1
	movq	-128(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_image_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-168(%rbp), %rsi
	leaq	-156(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_image_get_stock
	movl	-20(%rbp), %ecx
	cmpl	-156(%rbp), %ecx
	je	.LBB15_44
# BB#43:                                # %if.then.106
                                        #   in Loop: Header=BB15_25 Depth=1
	movq	-128(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_image_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-168(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_image_set_from_stock
.LBB15_44:                              # %if.end.109
                                        #   in Loop: Header=BB15_25 Depth=1
	jmp	.LBB15_45
.LBB15_45:                              # %if.end.110
                                        #   in Loop: Header=BB15_25 Depth=1
	jmp	.LBB15_46
.LBB15_46:                              # %if.end.111
                                        #   in Loop: Header=BB15_25 Depth=1
	jmp	.LBB15_47
.LBB15_47:                              # %for.inc
                                        #   in Loop: Header=BB15_25 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB15_49
# BB#48:                                # %cond.true
                                        #   in Loop: Header=BB15_25 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jmp	.LBB15_50
.LBB15_49:                              # %cond.false
                                        #   in Loop: Header=BB15_25 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	jmp	.LBB15_50
.LBB15_50:                              # %cond.end
                                        #   in Loop: Header=BB15_25 Depth=1
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB15_25
.LBB15_51:                              # %for.end
	movq	-40(%rbp), %rdi
	callq	g_list_free
.LBB15_52:                              # %return
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_editor_set_box_style, .Lfunc_end15-gimp_editor_set_box_style
	.cfi_endproc

	.globl	gimp_editor_get_ui_manager
	.align	16, 0x90
	.type	gimp_editor_get_ui_manager,@function
gimp_editor_get_ui_manager:             # @gimp_editor_get_ui_manager
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_editor_get_type
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
	callq	g_type_check_instance_is_a
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_editor_get_ui_manager, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB16_13
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB16_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_editor_get_ui_manager, .Lfunc_end16-gimp_editor_get_ui_manager
	.cfi_endproc

	.globl	gimp_editor_get_button_box
	.align	16, 0x90
	.type	gimp_editor_get_button_box,@function
gimp_editor_get_button_box:             # @gimp_editor_get_button_box
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_editor_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.8
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_editor_get_button_box, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB17_13
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB17_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_editor_get_button_box, .Lfunc_end17-gimp_editor_get_button_box
	.cfi_endproc

	.globl	gimp_editor_get_menu_factory
	.align	16, 0x90
	.type	gimp_editor_get_menu_factory,@function
gimp_editor_get_menu_factory:           # @gimp_editor_get_menu_factory
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
	callq	gimp_editor_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB18_8
.LBB18_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB18_7:                               # %if.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.8
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_editor_get_menu_factory, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB18_13
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB18_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_editor_get_menu_factory, .Lfunc_end18-gimp_editor_get_menu_factory
	.cfi_endproc

	.globl	gimp_editor_get_popup_data
	.align	16, 0x90
	.type	gimp_editor_get_popup_data,@function
gimp_editor_get_popup_data:             # @gimp_editor_get_popup_data
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_editor_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB19_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB19_8
.LBB19_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB19_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB19_7:                               # %if.end
	jmp	.LBB19_8
.LBB19_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB19_10
# BB#9:                                 # %if.then.8
	jmp	.LBB19_11
.LBB19_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_editor_get_popup_data, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB19_13
.LBB19_11:                              # %if.end.10
	jmp	.LBB19_12
.LBB19_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB19_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_editor_get_popup_data, .Lfunc_end19-gimp_editor_get_popup_data
	.cfi_endproc

	.globl	gimp_editor_get_ui_path
	.align	16, 0x90
	.type	gimp_editor_get_ui_path,@function
gimp_editor_get_ui_path:                # @gimp_editor_get_ui_path
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_editor_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB20_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB20_8
.LBB20_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB20_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB20_7
.LBB20_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB20_7:                               # %if.end
	jmp	.LBB20_8
.LBB20_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB20_10
# BB#9:                                 # %if.then.8
	jmp	.LBB20_11
.LBB20_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_editor_get_ui_path, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB20_13
.LBB20_11:                              # %if.end.10
	jmp	.LBB20_12
.LBB20_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB20_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_editor_get_ui_path, .Lfunc_end20-gimp_editor_get_ui_path
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_editor_class_init,@function
gimp_editor_class_init:                 # @gimp_editor_class_init
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_editor_style_set, %rsi
	movabsq	$gimp_editor_get_property, %rdi
	movabsq	$gimp_editor_set_property, %rcx
	movabsq	$gimp_editor_dispose, %rdx
	movabsq	$gimp_editor_constructed, %r8
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%r8, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 280(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_menu_factory_get_type
	movabsq	$.L.str.25, %rdi
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.26, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$235, %r8d
	movq	-16(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rax, %rdx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	callq	g_param_spec_string
	movl	$2, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.27, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$235, %r8d
	movq	-16(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rax, %rdx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	callq	g_param_spec_string
	movl	$3, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.28, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$235, %ecx
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_pointer
	movl	$4, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.19, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$5, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.29, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$230, %r8d
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_string
	movl	$6, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.30, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$2, %r9d
	movl	$225, %esi
	movq	-24(%rbp), %rdx
	movl	%esi, -84(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movl	$225, (%rsp)
	callq	g_param_spec_int
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_widget_class_install_style_property
	movabsq	$.L.str.23, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$2, %r9d
	movl	$225, %r10d
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	$225, (%rsp)
	movl	%r10d, -108(%rbp)       # 4-byte Spill
	callq	g_param_spec_int
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_widget_class_install_style_property
	movq	-24(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gtk_icon_size_get_type
	movabsq	$.L.str.22, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$1, %r8d
	movl	$225, %r9d
	movq	%rdx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_widget_class_install_style_property
	movq	-24(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gtk_relief_style_get_type
	movabsq	$.L.str.24, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movl	$2, %r8d
	movl	$225, %r9d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_widget_class_install_style_property
	movl	$64, %r8d
	movl	%r8d, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_editor_class_init, .Lfunc_end21-gimp_editor_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_editor_constructed,@function
gimp_editor_constructed:                # @gimp_editor_constructed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_editor_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB22_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB22_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB22_4
# BB#3:                                 # %if.then.6
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	%rax, 32(%rcx)
.LBB22_4:                               # %if.end.9
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB22_7
# BB#5:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB22_7
# BB#6:                                 # %if.then.14
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	8(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	32(%rax), %rdx
	callq	gimp_menu_factory_manager_new
	movq	-16(%rbp), %rdx
	movq	128(%rdx), %rdx
	movq	%rax, 16(%rdx)
.LBB22_7:                               # %if.end.23
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_editor_constructed, .Lfunc_end22-gimp_editor_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_editor_dispose,@function
gimp_editor_dispose:                    # @gimp_editor_dispose
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
	callq	gimp_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB23_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	$0, (%rax)
.LBB23_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB23_4
# BB#3:                                 # %if.then.8
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	8(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	$0, 8(%rax)
.LBB23_4:                               # %if.end.13
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	cmpq	$0, 16(%rax)
	je	.LBB23_6
# BB#5:                                 # %if.then.16
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	$0, 16(%rax)
.LBB23_6:                               # %if.end.21
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	cmpq	$0, 24(%rax)
	je	.LBB23_8
# BB#7:                                 # %if.then.24
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	24(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	$0, 24(%rax)
.LBB23_8:                               # %if.end.29
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_editor_dispose, .Lfunc_end23-gimp_editor_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_editor_set_property,@function
gimp_editor_set_property:               # @gimp_editor_set_property
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$5, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB24_7
# BB#11:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI24_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB24_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object
	movq	-40(%rbp), %rdi
	movq	128(%rdi), %rdi
	movq	%rax, (%rdi)
	jmp	.LBB24_10
.LBB24_2:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	128(%rdi), %rdi
	movq	%rax, 8(%rdi)
	jmp	.LBB24_10
.LBB24_3:                               # %sw.bb.6
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	128(%rdi), %rdi
	movq	%rax, 24(%rdi)
	jmp	.LBB24_10
.LBB24_4:                               # %sw.bb.9
	movq	-24(%rbp), %rdi
	callq	g_value_get_pointer
	movq	-40(%rbp), %rdi
	movq	128(%rdi), %rdi
	movq	%rax, 32(%rdi)
	jmp	.LBB24_10
.LBB24_5:                               # %sw.bb.12
	movl	$80, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.31, %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_property
	jmp	.LBB24_10
.LBB24_6:                               # %sw.bb.15
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_string
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_editor_set_name
	jmp	.LBB24_10
.LBB24_7:                               # %sw.default
	jmp	.LBB24_8
.LBB24_8:                               # %do.body
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
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.32, %rdi
	movabsq	$.L.str.33, %rsi
	movl	$314, %edx              # imm = 0x13A
	movabsq	$.L.str.34, %rcx
	movl	-100(%rbp), %r8d        # 4-byte Reload
	movq	-112(%rbp), %r9         # 8-byte Reload
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#9:                                 # %do.end
	jmp	.LBB24_10
.LBB24_10:                              # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_editor_set_property, .Lfunc_end24-gimp_editor_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI24_0:
	.quad	.LBB24_1
	.quad	.LBB24_2
	.quad	.LBB24_3
	.quad	.LBB24_4
	.quad	.LBB24_5
	.quad	.LBB24_6

	.text
	.align	16, 0x90
	.type	gimp_editor_get_property,@function
gimp_editor_get_property:               # @gimp_editor_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$4, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB25_6
# BB#10:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI25_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB25_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	128(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB25_9
.LBB25_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	128(%rax), %rax
	movq	8(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB25_9
.LBB25_3:                               # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	128(%rax), %rax
	movq	24(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB25_9
.LBB25_4:                               # %sw.bb.6
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	128(%rax), %rax
	movq	32(%rax), %rsi
	callq	g_value_set_pointer
	jmp	.LBB25_9
.LBB25_5:                               # %sw.bb.8
	movl	$80, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.31, %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_get_property
	jmp	.LBB25_9
.LBB25_6:                               # %sw.default
	jmp	.LBB25_7
.LBB25_7:                               # %do.body
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
	movl	%r8d, -88(%rbp)         # 4-byte Spill
	movq	%r9, -96(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.32, %rdi
	movabsq	$.L.str.33, %rsi
	movl	$351, %edx              # imm = 0x15F
	movabsq	$.L.str.34, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#8:                                 # %do.end
	jmp	.LBB25_9
.LBB25_9:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_editor_get_property, .Lfunc_end25-gimp_editor_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI25_0:
	.quad	.LBB25_1
	.quad	.LBB25_2
	.quad	.LBB25_3
	.quad	.LBB25_4
	.quad	.LBB25_5

	.text
	.align	16, 0x90
	.type	gimp_editor_style_set,@function
gimp_editor_style_set:                  # @gimp_editor_style_set
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	gimp_editor_parent_class, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	280(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movabsq	$.L.str.30, %rsi
	leaq	-28(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	gtk_widget_style_get
	movq	-8(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-28(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_box_set_spacing
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	cmpq	$0, 56(%rax)
	je	.LBB26_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	movq	56(%rax), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_editor_set_box_style
.LBB26_2:                               # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_editor_style_set, .Lfunc_end26-gimp_editor_style_set
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
	je	.LBB27_2
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
.LBB27_2:                               # %entry
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
.Lfunc_end27:
	.size	g_warning, .Lfunc_end27-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_editor_get_menu,@function
gimp_editor_get_menu:                   # @gimp_editor_get_menu
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
	subq	$48, %rsp
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
	movq	-32(%rbp), %rax
	movq	128(%rax), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movq	128(%rax), %rax
	movq	32(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movq	128(%rax), %rax
	movq	16(%rax), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_editor_get_menu, .Lfunc_end28-gimp_editor_get_menu
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_editor_has_button_bar,@function
gimp_editor_has_button_bar:             # @gimp_editor_has_button_bar
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	cmpq	$0, 56(%rax)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_editor_has_button_bar, .Lfunc_end29-gimp_editor_has_button_bar
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_editor_set_show_button_bar,@function
gimp_editor_set_show_button_bar:        # @gimp_editor_set_show_button_bar
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
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	cmpl	40(%rax), %ecx
	je	.LBB30_4
# BB#1:                                 # %if.then
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	movq	128(%rcx), %rcx
	movl	%eax, 40(%rcx)
	movq	-24(%rbp), %rcx
	movq	128(%rcx), %rcx
	cmpq	$0, 56(%rcx)
	je	.LBB30_3
# BB#2:                                 # %if.then.5
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	movq	56(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	gtk_widget_set_visible
.LBB30_3:                               # %if.end
	jmp	.LBB30_4
.LBB30_4:                               # %if.end.8
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_editor_set_show_button_bar, .Lfunc_end30-gimp_editor_set_show_button_bar
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_editor_get_show_button_bar,@function
gimp_editor_get_show_button_bar:        # @gimp_editor_get_show_button_bar
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movl	40(%rax), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_editor_get_show_button_bar, .Lfunc_end31-gimp_editor_get_show_button_bar
	.cfi_endproc

	.type	gimp_editor_get_type.g_define_type_id__volatile,@object # @gimp_editor_get_type.g_define_type_id__volatile
	.local	gimp_editor_get_type.g_define_type_id__volatile
	.comm	gimp_editor_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpEditor"
	.size	.L.str, 11

	.type	gimp_editor_get_type.g_implement_interface_info,@object # @gimp_editor_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_editor_get_type.g_implement_interface_info:
	.quad	gimp_editor_docked_iface_init
	.quad	0
	.quad	0
	.size	gimp_editor_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_editor_create_menu,@object # @__func__.gimp_editor_create_menu
.L__func__.gimp_editor_create_menu:
	.asciz	"gimp_editor_create_menu"
	.size	.L__func__.gimp_editor_create_menu, 24

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_EDITOR (editor)"
	.size	.L.str.2, 24

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_MENU_FACTORY (menu_factory)"
	.size	.L.str.3, 36

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"menu_identifier != NULL"
	.size	.L.str.4, 24

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"ui_path != NULL"
	.size	.L.str.5, 16

	.type	.L__func__.gimp_editor_popup_menu,@object # @__func__.gimp_editor_popup_menu
.L__func__.gimp_editor_popup_menu:
	.asciz	"gimp_editor_popup_menu"
	.size	.L__func__.gimp_editor_popup_menu, 23

	.type	.L__func__.gimp_editor_add_button,@object # @__func__.gimp_editor_add_button
.L__func__.gimp_editor_add_button:
	.asciz	"gimp_editor_add_button"
	.size	.L__func__.gimp_editor_add_button, 23

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"stock_id != NULL"
	.size	.L.str.6, 17

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"use-stock"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"clicked"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"extended-clicked"
	.size	.L.str.9, 17

	.type	.L__func__.gimp_editor_add_stock_box,@object # @__func__.gimp_editor_add_stock_box
.L__func__.gimp_editor_add_stock_box:
	.asciz	"gimp_editor_add_stock_box"
	.size	.L__func__.gimp_editor_add_stock_box, 26

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"g_type_is_a (enum_type, G_TYPE_ENUM)"
	.size	.L.str.10, 37

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"stock_prefix != NULL"
	.size	.L.str.11, 21

	.type	.L__func__.gimp_editor_add_action_button,@object # @__func__.gimp_editor_add_action_button
.L__func__.gimp_editor_add_action_button:
	.asciz	"gimp_editor_add_action_button"
	.size	.L__func__.gimp_editor_add_action_button, 30

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"action_name != NULL"
	.size	.L.str.12, 20

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"editor->priv->ui_manager != NULL"
	.size	.L.str.13, 33

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"group != NULL"
	.size	.L.str.14, 14

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"action != NULL"
	.size	.L.str.15, 15

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"\n<b>"
	.size	.L.str.16, 5

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"</b>  "
	.size	.L.str.17, 7

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"extended-actions"
	.size	.L.str.18, 17

	.type	.L__func__.gimp_editor_set_show_name,@object # @__func__.gimp_editor_set_show_name
.L__func__.gimp_editor_set_show_name:
	.asciz	"gimp_editor_set_show_name"
	.size	.L__func__.gimp_editor_set_show_name, 26

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"show-name"
	.size	.L.str.19, 10

	.type	.L__func__.gimp_editor_set_name,@object # @__func__.gimp_editor_set_name
.L__func__.gimp_editor_set_name:
	.asciz	"gimp_editor_set_name"
	.size	.L__func__.gimp_editor_set_name, 21

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"(None)"
	.size	.L.str.20, 7

	.type	.L__func__.gimp_editor_set_box_style,@object # @__func__.gimp_editor_set_box_style
.L__func__.gimp_editor_set_box_style:
	.asciz	"gimp_editor_set_box_style"
	.size	.L__func__.gimp_editor_set_box_style, 26

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"GTK_IS_BOX (box)"
	.size	.L.str.21, 17

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"button-icon-size"
	.size	.L.str.22, 17

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"button-spacing"
	.size	.L.str.23, 15

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"button-relief"
	.size	.L.str.24, 14

	.type	.L__func__.gimp_editor_get_ui_manager,@object # @__func__.gimp_editor_get_ui_manager
.L__func__.gimp_editor_get_ui_manager:
	.asciz	"gimp_editor_get_ui_manager"
	.size	.L__func__.gimp_editor_get_ui_manager, 27

	.type	.L__func__.gimp_editor_get_button_box,@object # @__func__.gimp_editor_get_button_box
.L__func__.gimp_editor_get_button_box:
	.asciz	"gimp_editor_get_button_box"
	.size	.L__func__.gimp_editor_get_button_box, 27

	.type	.L__func__.gimp_editor_get_menu_factory,@object # @__func__.gimp_editor_get_menu_factory
.L__func__.gimp_editor_get_menu_factory:
	.asciz	"gimp_editor_get_menu_factory"
	.size	.L__func__.gimp_editor_get_menu_factory, 29

	.type	.L__func__.gimp_editor_get_popup_data,@object # @__func__.gimp_editor_get_popup_data
.L__func__.gimp_editor_get_popup_data:
	.asciz	"gimp_editor_get_popup_data"
	.size	.L__func__.gimp_editor_get_popup_data, 27

	.type	.L__func__.gimp_editor_get_ui_path,@object # @__func__.gimp_editor_get_ui_path
.L__func__.gimp_editor_get_ui_path:
	.asciz	"gimp_editor_get_ui_path"
	.size	.L__func__.gimp_editor_get_ui_path, 24

	.type	gimp_editor_parent_class,@object # @gimp_editor_parent_class
	.local	gimp_editor_parent_class
	.comm	gimp_editor_parent_class,8,8
	.type	GimpEditor_private_offset,@object # @GimpEditor_private_offset
	.local	GimpEditor_private_offset
	.comm	GimpEditor_private_offset,4,4
	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"menu-factory"
	.size	.L.str.25, 13

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"menu-identifier"
	.size	.L.str.26, 16

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"ui-path"
	.size	.L.str.27, 8

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"popup-data"
	.size	.L.str.28, 11

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"name"
	.size	.L.str.29, 5

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"content-spacing"
	.size	.L.str.30, 16

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"visible"
	.size	.L.str.31, 8

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.32, 54

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gimpeditor.c"
	.size	.L.str.33, 13

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"property"
	.size	.L.str.34, 9

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"xalign"
	.size	.L.str.35, 7

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"yalign"
	.size	.L.str.36, 7

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"ellipsize"
	.size	.L.str.37, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
