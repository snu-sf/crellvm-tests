	.text
	.file	"gimpcontainerbox.bc"
	.globl	gimp_container_box_get_type
	.align	16, 0x90
	.type	gimp_container_box_get_type,@function
gimp_container_box_get_type:            # @gimp_container_box_get_type
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
	subq	$96, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_container_box_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_container_box_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_container_box_class_intern_init, %rdi
	movl	$144, %r8d
	movabsq	$gimp_container_box_init, %rcx
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
	callq	gimp_container_view_interface_get_type
	movabsq	$gimp_container_box_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movq	-24(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_docked_interface_get_type
	movabsq	$gimp_container_box_get_type.g_implement_interface_info.1, %rdx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_container_box_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_container_box_get_type.g_define_type_id__volatile, %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_container_box_get_type, .Lfunc_end0-gimp_container_box_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_box_class_intern_init,@function
gimp_container_box_class_intern_init:   # @gimp_container_box_class_intern_init
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
	movq	%rax, gimp_container_box_parent_class
	cmpl	$0, GimpContainerBox_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpContainerBox_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_container_box_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_container_box_class_intern_init, .Lfunc_end1-gimp_container_box_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_box_init,@function
gimp_container_box_init:                # @gimp_container_box_init
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
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	callq	gtk_scrolled_window_new
	movq	-8(%rbp), %rcx
	movq	%rax, 136(%rcx)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rcx
	movq	136(%rcx), %rsi
	movq	%rax, %rdi
	movl	%edx, -28(%rbp)         # 4-byte Spill
	movl	-28(%rbp), %ecx         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_scrolled_window_get_vscrollbar
	xorl	%esi, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_set_can_focus
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_container_box_init, .Lfunc_end2-gimp_container_box_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_box_view_iface_init,@function
gimp_container_box_view_iface_init:     # @gimp_container_box_view_iface_init
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_container_box_view_iface_init, .Lfunc_end3-gimp_container_box_view_iface_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_box_docked_iface_init,@function
gimp_container_box_docked_iface_init:   # @gimp_container_box_docked_iface_init
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
	movabsq	$gimp_container_box_set_context, %rax
	movabsq	$gimp_container_box_get_preview, %rcx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rcx, 40(%rdi)
	movq	-8(%rbp), %rcx
	movq	%rax, 72(%rcx)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_container_box_docked_iface_init, .Lfunc_end4-gimp_container_box_docked_iface_init
	.cfi_endproc

	.globl	gimp_container_box_set_size_request
	.align	16, 0x90
	.type	gimp_container_box_set_size_request,@function
gimp_container_box_set_size_request:    # @gimp_container_box_set_size_request
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_container_box_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_container_box_set_size_request, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_34
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_container_view_get_view_size
	movl	%eax, -60(%rbp)
# BB#13:                                # %do.body.14
	cmpl	$0, -12(%rbp)
	jle	.LBB5_15
# BB#14:                                # %lor.lhs.false
	movl	-12(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.LBB5_16
.LBB5_15:                               # %if.then.17
	jmp	.LBB5_17
.LBB5_16:                               # %if.else.18
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_container_box_set_size_request, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_34
.LBB5_17:                               # %if.end.19
	jmp	.LBB5_18
.LBB5_18:                               # %do.end.20
	jmp	.LBB5_19
.LBB5_19:                               # %do.body.21
	cmpl	$0, -16(%rbp)
	jle	.LBB5_21
# BB#20:                                # %lor.lhs.false.23
	movl	-16(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.LBB5_22
.LBB5_21:                               # %if.then.25
	jmp	.LBB5_23
.LBB5_22:                               # %if.else.26
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_container_box_set_size_request, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_34
.LBB5_23:                               # %if.end.27
	jmp	.LBB5_24
.LBB5_24:                               # %do.end.28
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 824(%rax)
	jl	.LBB5_26
# BB#25:                                # %if.then.31
	movq	-32(%rbp), %rax
	movl	824(%rax), %ecx
	movl	%ecx, -64(%rbp)
	jmp	.LBB5_27
.LBB5_26:                               # %if.else.33
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rsi
	leaq	-64(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_widget_style_get
.LBB5_27:                               # %if.end.37
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_scrolled_window_get_vscrollbar
	leaq	-56(%rbp), %rsi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_widget_size_request
	movl	-56(%rbp), %ecx
	addl	-64(%rbp), %ecx
	movl	%ecx, -64(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_border_width
	movl	%eax, -72(%rbp)
	movl	%eax, -68(%rbp)
	movq	-8(%rbp), %rsi
	movq	136(%rsi), %rdi
	callq	gtk_widget_get_style
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	536(%rax), %ecx
	shll	$1, %ecx
	addl	-64(%rbp), %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movq	-40(%rbp), %rax
	movl	540(%rax), %ecx
	shll	$1, %ecx
	addl	-72(%rbp), %ecx
	movl	%ecx, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdi
	cmpl	$0, -12(%rbp)
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	jle	.LBB5_29
# BB#28:                                # %cond.true
	movl	-12(%rbp), %eax
	addl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB5_30
.LBB5_29:                               # %cond.false
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB5_30
.LBB5_30:                               # %cond.end
	movl	-140(%rbp), %eax        # 4-byte Reload
	cmpl	$0, -16(%rbp)
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jle	.LBB5_32
# BB#31:                                # %cond.true.56
	movl	-16(%rbp), %eax
	addl	-72(%rbp), %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB5_33
.LBB5_32:                               # %cond.false.58
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB5_33
.LBB5_33:                               # %cond.end.59
	movl	-148(%rbp), %eax        # 4-byte Reload
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movl	-144(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	gtk_widget_set_size_request
.LBB5_34:                               # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_container_box_set_size_request, .Lfunc_end5-gimp_container_box_set_size_request
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_box_class_init,@function
gimp_container_box_class_init:          # @gimp_container_box_class_init
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
	subq	$16, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$gimp_container_view_get_property, %rsi
	movabsq	$gimp_container_view_set_property, %rdi
	movabsq	$gimp_container_box_constructed, %rcx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rcx, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 32(%rax)
	movq	-16(%rbp), %rdi
	callq	gimp_container_view_install_properties
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_container_box_class_init, .Lfunc_end6-gimp_container_box_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_box_constructed,@function
gimp_container_box_constructed:         # @gimp_container_box_constructed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_container_box_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	136(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_container_view_set_dnd_widget
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	gimp_container_box_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_container_box_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB7_2:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_container_box_constructed, .Lfunc_end7-gimp_container_box_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_box_get_preview,@function
gimp_container_box_get_preview:         # @gimp_container_box_get_preview
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_container_box_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movl	$1, -76(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_container_view_get_container
	movq	%rax, -56(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -56(%rbp)
	je	.LBB8_3
# BB#2:                                 # %if.then
	jmp	.LBB8_4
.LBB8_3:                                # %if.else
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_container_box_get_preview, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_9
.LBB8_4:                                # %if.end
	jmp	.LBB8_5
.LBB8_5:                                # %do.end
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_settings
	leaq	-68(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	movl	-28(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_icon_size_lookup_for_settings
	movq	-56(%rbp), %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	gimp_container_get_children_type
	movq	%rax, %rdi
	callq	gimp_context_type_to_prop_name
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-72(%rbp), %ecx
	movq	%rax, %rdi
	callq	gimp_prop_view_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-76(%rbp), %rsi
	movq	112(%rax), %rax
	movl	$-1, 136(%rax)
	movq	-48(%rbp), %rdi
	callq	gimp_container_view_get_view_size
	movl	$1, %ecx
	cmpl	-76(%rbp), %ecx
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jge	.LBB8_7
# BB#6:                                 # %cond.true
	movl	$1, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB8_8
.LBB8_7:                                # %cond.false
	movl	-76(%rbp), %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB8_8:                                # %cond.end
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, -76(%rbp)
	movq	-64(%rbp), %rcx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	112(%rax), %rdi
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %edx
	movl	-76(%rbp), %ecx
	callq	gimp_view_renderer_set_size_full
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB8_9:                                # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_container_box_get_preview, .Lfunc_end8-gimp_container_box_get_preview
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_box_set_context,@function
gimp_container_box_set_context:         # @gimp_container_box_set_context
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_container_view_set_context
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_container_box_set_context, .Lfunc_end9-gimp_container_box_set_context
	.cfi_endproc

	.type	gimp_container_box_get_type.g_define_type_id__volatile,@object # @gimp_container_box_get_type.g_define_type_id__volatile
	.local	gimp_container_box_get_type.g_define_type_id__volatile
	.comm	gimp_container_box_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpContainerBox"
	.size	.L.str, 17

	.type	gimp_container_box_get_type.g_implement_interface_info,@object # @gimp_container_box_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_container_box_get_type.g_implement_interface_info:
	.quad	gimp_container_box_view_iface_init
	.quad	0
	.quad	0
	.size	gimp_container_box_get_type.g_implement_interface_info, 24

	.type	gimp_container_box_get_type.g_implement_interface_info.1,@object # @gimp_container_box_get_type.g_implement_interface_info.1
	.align	8
gimp_container_box_get_type.g_implement_interface_info.1:
	.quad	gimp_container_box_docked_iface_init
	.quad	0
	.quad	0
	.size	gimp_container_box_get_type.g_implement_interface_info.1, 24

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"Gimp-Widgets"
	.size	.L.str.2, 13

	.type	.L__func__.gimp_container_box_set_size_request,@object # @__func__.gimp_container_box_set_size_request
.L__func__.gimp_container_box_set_size_request:
	.asciz	"gimp_container_box_set_size_request"
	.size	.L__func__.gimp_container_box_set_size_request, 36

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_CONTAINER_BOX (box)"
	.size	.L.str.3, 28

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"width <= 0 || width >= view_size"
	.size	.L.str.4, 33

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"height <= 0 || height >= view_size"
	.size	.L.str.5, 35

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"scrollbar-spacing"
	.size	.L.str.6, 18

	.type	gimp_container_box_parent_class,@object # @gimp_container_box_parent_class
	.local	gimp_container_box_parent_class
	.comm	gimp_container_box_parent_class,8,8
	.type	GimpContainerBox_private_offset,@object # @GimpContainerBox_private_offset
	.local	GimpContainerBox_private_offset
	.comm	GimpContainerBox_private_offset,4,4
	.type	.L__func__.gimp_container_box_get_preview,@object # @__func__.gimp_container_box_get_preview
.L__func__.gimp_container_box_get_preview:
	.asciz	"gimp_container_box_get_preview"
	.size	.L__func__.gimp_container_box_get_preview, 31

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"container != NULL"
	.size	.L.str.7, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
