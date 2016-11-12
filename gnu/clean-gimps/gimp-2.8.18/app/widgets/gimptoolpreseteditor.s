	.text
	.file	"gimptoolpreseteditor.bc"
	.globl	gimp_tool_preset_editor_get_type
	.align	16, 0x90
	.type	gimp_tool_preset_editor_get_type,@function
gimp_tool_preset_editor_get_type:       # @gimp_tool_preset_editor_get_type
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
	movq	gimp_tool_preset_editor_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_tool_preset_editor_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_tool_preset_editor_class_intern_init, %rdi
	movl	$216, %r8d
	movabsq	$gimp_tool_preset_editor_init, %rcx
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
	movabsq	$gimp_tool_preset_editor_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_tool_preset_editor_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_tool_preset_editor_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_tool_preset_editor_get_type, .Lfunc_end0-gimp_tool_preset_editor_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_preset_editor_class_intern_init,@function
gimp_tool_preset_editor_class_intern_init: # @gimp_tool_preset_editor_class_intern_init
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
	movq	%rax, gimp_tool_preset_editor_parent_class
	cmpl	$0, GimpToolPresetEditor_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpToolPresetEditor_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_tool_preset_editor_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_tool_preset_editor_class_intern_init, .Lfunc_end1-gimp_tool_preset_editor_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_preset_editor_init,@function
gimp_tool_preset_editor_init:           # @gimp_tool_preset_editor_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_tool_preset_editor_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	-8(%rbp), %rsi
	movq	%rax, 208(%rsi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_tool_preset_editor_init, .Lfunc_end2-gimp_tool_preset_editor_init
	.cfi_endproc

	.globl	gimp_tool_preset_editor_new
	.align	16, 0x90
	.type	gimp_tool_preset_editor_new,@function
gimp_tool_preset_editor_new:            # @gimp_tool_preset_editor_new
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$200, %rsp
.Ltmp12:
	.cfi_offset %rbx, -56
.Ltmp13:
	.cfi_offset %r12, -48
.Ltmp14:
	.cfi_offset %r13, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
# BB#1:                                 # %do.body
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_menu_factory_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_preset_editor_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_25
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB3_15
# BB#14:                                # %if.then.20
	movl	$0, -108(%rbp)
	jmp	.LBB3_20
.LBB3_15:                               # %if.else.21
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_18
# BB#16:                                # %land.lhs.true.24
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB3_18
# BB#17:                                # %if.then.28
	movl	$1, -108(%rbp)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.29
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB3_19:                               # %if.end.31
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.32
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.35
	jmp	.LBB3_23
.LBB3_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_preset_editor_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_25
.LBB3_23:                               # %if.end.37
	jmp	.LBB3_24
.LBB3_24:                               # %do.end.38
	callq	gimp_tool_preset_editor_get_type
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	504(%rcx), %rcx
	movq	-56(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	gimp_context_get_tool_preset
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %rcx
	movabsq	$.L.str.6, %r8
	movabsq	$.L.str.7, %r9
	movabsq	$.L.str.8, %rdx
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.10, %r10
	movabsq	$.L.str.11, %r11
	xorl	%ebx, %ebx
	movl	%ebx, %r14d
	movq	-120(%rbp), %r15        # 8-byte Reload
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%r15, %rdi
	movq	-128(%rbp), %r12        # 8-byte Reload
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%r12, %rdx
	movq	-160(%rbp), %r13        # 8-byte Reload
	movq	%r13, (%rsp)
	movq	-152(%rbp), %r15        # 8-byte Reload
	movq	%r15, 8(%rsp)
	movq	-136(%rbp), %r15        # 8-byte Reload
	movq	%r15, 16(%rsp)
	movq	%r10, 24(%rsp)
	movq	-144(%rbp), %r10        # 8-byte Reload
	movq	%r10, 32(%rsp)
	movq	%r11, 40(%rsp)
	movq	%rax, 48(%rsp)
	movq	$0, 56(%rsp)
	movb	$0, %al
	movq	%r14, -168(%rbp)        # 8-byte Spill
	callq	g_object_new
	movq	%rax, -48(%rbp)
.LBB3_25:                               # %return
	movq	-48(%rbp), %rax
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_tool_preset_editor_new, .Lfunc_end3-gimp_tool_preset_editor_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_preset_editor_class_init,@function
gimp_tool_preset_editor_class_init:     # @gimp_tool_preset_editor_class_init
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
	subq	$32, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.12, %rdi
	movabsq	$gimp_tool_preset_editor_set_data, %rsi
	movabsq	$gimp_tool_preset_editor_finalize, %rcx
	movabsq	$gimp_tool_preset_editor_constructed, %rdx
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 824(%rax)
	callq	gettext
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-24(%rbp), %rcx
	movq	%rax, 832(%rcx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_tool_preset_editor_class_init, .Lfunc_end4-gimp_tool_preset_editor_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_preset_editor_constructed,@function
gimp_tool_preset_editor_constructed:    # @gimp_tool_preset_editor_constructed
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
	subq	$352, %rsp              # imm = 0x160
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_tool_preset_editor_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	gimp_tool_preset_editor_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_tool_preset_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB5_2:                                # %if.end
	callq	gimp_tool_preset_get_type
	movabsq	$.L.str.13, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-24(%rbp), %rdx
	movq	144(%rdx), %rdx
	movq	32(%rdx), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movabsq	$.L.str.14, %rsi
	movabsq	$gimp_tool_preset_editor_notify_model, %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	208(%rdx), %rdx
	movq	%rax, (%rdx)
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movl	$2, %esi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_image_new
	movq	-16(%rbp), %rsi
	movq	208(%rsi), %rsi
	movq	%rax, 8(%rsi)
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rsi
	movq	208(%rsi), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	movl	-108(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.15, %rdi
	callq	gtk_label_new
	movq	-16(%rbp), %rsi
	movq	208(%rsi), %rsi
	movq	%rax, 16(%rsi)
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %esi
	movl	$2, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_label_set_attributes
	movq	-40(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rsi
	movq	208(%rsi), %rsi
	movq	16(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	movl	-132(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$2, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	movl	-148(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.16, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	movl	-164(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.17, %rsi
	movq	-24(%rbp), %rdi
	movq	144(%rdi), %rdi
	movq	32(%rdi), %rdx
	movq	%rax, %rdi
	callq	gimp_prop_icon_picker_new
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	movl	-180(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.19, %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.18, %rsi
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_check_button_new
	movq	-16(%rbp), %rdx
	movq	208(%rdx), %rdx
	movq	%rax, 24(%rdx)
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	movl	-204(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.21, %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.20, %rsi
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_check_button_new
	movq	-16(%rbp), %rdx
	movq	208(%rdx), %rdx
	movq	%rax, 32(%rdx)
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	movl	-228(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.23, %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.22, %rsi
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_check_button_new
	movq	-16(%rbp), %rdx
	movq	208(%rdx), %rdx
	movq	%rax, 40(%rdx)
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -252(%rbp)        # 4-byte Spill
	movl	-252(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.25, %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.24, %rsi
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_check_button_new
	movq	-16(%rbp), %rdx
	movq	208(%rdx), %rdx
	movq	%rax, 48(%rdx)
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -276(%rbp)        # 4-byte Spill
	movl	-276(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.27, %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.26, %rsi
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_check_button_new
	movq	-16(%rbp), %rdx
	movq	208(%rdx), %rdx
	movq	%rax, 56(%rdx)
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -300(%rbp)        # 4-byte Spill
	movl	-300(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.29, %rdi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.28, %rsi
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_check_button_new
	movq	-16(%rbp), %rdx
	movq	208(%rdx), %rdx
	movq	%rax, 64(%rdx)
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -324(%rbp)        # 4-byte Spill
	movl	-324(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.31, %rdi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.30, %rsi
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_check_button_new
	movq	-16(%rbp), %rdx
	movq	208(%rdx), %rdx
	movq	%rax, 72(%rdx)
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -348(%rbp)        # 4-byte Spill
	movl	-348(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	cmpq	$0, 160(%rax)
	je	.LBB5_4
# BB#3:                                 # %if.then.89
	movq	-16(%rbp), %rdi
	callq	gimp_tool_preset_editor_sync_data
.LBB5_4:                                # %if.end.90
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_tool_preset_editor_constructed, .Lfunc_end5-gimp_tool_preset_editor_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_preset_editor_finalize,@function
gimp_tool_preset_editor_finalize:       # @gimp_tool_preset_editor_finalize
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_tool_preset_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	movq	$0, (%rax)
.LBB6_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_tool_preset_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_tool_preset_editor_finalize, .Lfunc_end6-gimp_tool_preset_editor_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_preset_editor_set_data,@function
gimp_tool_preset_editor_set_data:       # @gimp_tool_preset_editor_set_data
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_tool_preset_editor_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 160(%rax)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_tool_preset_editor_notify_data, %rdx
	movq	-8(%rbp), %rdi
	movq	160(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB7_2:                                # %if.end
	movq	gimp_tool_preset_editor_parent_class, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	824(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-8(%rbp), %rax
	cmpq	$0, 160(%rax)
	je	.LBB7_6
# BB#3:                                 # %if.then.9
	movabsq	$.L.str.14, %rsi
	movabsq	$gimp_tool_preset_editor_notify_data, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	160(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-24(%rbp), %rcx
	movq	208(%rcx), %rcx
	cmpq	$0, (%rcx)
	movq	%rax, -80(%rbp)         # 8-byte Spill
	je	.LBB7_5
# BB#4:                                 # %if.then.13
	movq	-24(%rbp), %rdi
	callq	gimp_tool_preset_editor_sync_data
.LBB7_5:                                # %if.end.14
	jmp	.LBB7_6
.LBB7_6:                                # %if.end.15
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movl	168(%rsi), %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_sensitive
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_tool_preset_editor_set_data, .Lfunc_end7-gimp_tool_preset_editor_set_data
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_preset_editor_notify_model,@function
gimp_tool_preset_editor_notify_model:   # @gimp_tool_preset_editor_notify_model
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 160(%rax)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_tool_preset_editor_notify_data, %rdx
	movq	-32(%rbp), %rdi
	movq	160(%rdi), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-48(%rbp), %r10         # 8-byte Reload
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-56(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-24(%rbp), %rdi
	movq	208(%rdi), %rdi
	movq	(%rdi), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	160(%rsi), %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$256, %edx              # imm = 0x100
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_copy
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_tool_preset_editor_notify_data, %rdi
	movq	-32(%rbp), %r9
	movq	160(%r9), %r9
	movq	-24(%rbp), %r10
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB8_2:                                # %if.end
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_tool_preset_editor_notify_model, .Lfunc_end8-gimp_tool_preset_editor_notify_model
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_preset_editor_sync_data,@function
gimp_tool_preset_editor_sync_data:      # @gimp_tool_preset_editor_sync_data
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_tool_preset_editor_notify_model, %rdi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %r9
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %edx
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-88(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-24(%rbp), %rdi
	movq	160(%rdi), %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$256, %edx              # imm = 0x100
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_copy
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_tool_preset_editor_notify_model, %rdi
	movq	-16(%rbp), %r9
	movq	(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-128(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_unblock_matched
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	40(%rdi), %rdi
	movq	344(%rdi), %rdi
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rdi
	movl	%eax, -136(%rbp)        # 4-byte Spill
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_stock_id
	movabsq	$.L.str.32, %rdi
	movq	%rax, -56(%rbp)
	callq	gettext
	movq	-40(%rbp), %rsi
	movq	64(%rsi), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_image_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_image_set_from_stock
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-64(%rbp), %rdi
	callq	g_free
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_tool_preset_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_context_get_serialize_properties
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rsi
	movq	24(%rsi), %rdi
	movl	-44(%rbp), %eax
	andl	$64, %eax
	cmpl	$0, %eax
	setne	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %esi
	callq	gtk_widget_set_sensitive
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	-44(%rbp), %eax
	andl	$1024, %eax             # imm = 0x400
	cmpl	$0, %eax
	setne	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %esi
	callq	gtk_widget_set_sensitive
	movq	-16(%rbp), %rdi
	movq	40(%rdi), %rdi
	movl	-44(%rbp), %eax
	andl	$2048, %eax             # imm = 0x800
	cmpl	$0, %eax
	setne	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %esi
	callq	gtk_widget_set_sensitive
	movq	-16(%rbp), %rdi
	movq	48(%rdi), %rdi
	movl	-44(%rbp), %eax
	andl	$8192, %eax             # imm = 0x2000
	cmpl	$0, %eax
	setne	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %esi
	callq	gtk_widget_set_sensitive
	movq	-16(%rbp), %rdi
	movq	56(%rdi), %rdi
	movl	-44(%rbp), %eax
	andl	$4096, %eax             # imm = 0x1000
	cmpl	$0, %eax
	setne	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %esi
	callq	gtk_widget_set_sensitive
	movq	-16(%rbp), %rdi
	movq	64(%rdi), %rdi
	movl	-44(%rbp), %eax
	andl	$16384, %eax            # imm = 0x4000
	cmpl	$0, %eax
	setne	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %esi
	callq	gtk_widget_set_sensitive
	movq	-16(%rbp), %rdi
	movq	72(%rdi), %rdi
	movl	-44(%rbp), %eax
	andl	$65536, %eax            # imm = 0x10000
	cmpl	$0, %eax
	setne	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %esi
	callq	gtk_widget_set_sensitive
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_tool_preset_editor_sync_data, .Lfunc_end9-gimp_tool_preset_editor_sync_data
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_preset_editor_notify_data,@function
gimp_tool_preset_editor_notify_data:    # @gimp_tool_preset_editor_notify_data
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movabsq	$gimp_tool_preset_editor_notify_model, %rdx
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%ecx, %edx
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-32(%rbp), %rdi
	movq	160(%rdi), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	208(%rsi), %rsi
	movq	(%rsi), %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$256, %edx              # imm = 0x100
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_copy
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_tool_preset_editor_notify_model, %rdi
	movq	-24(%rbp), %r9
	movq	208(%r9), %r9
	movq	(%r9), %r9
	movq	-24(%rbp), %r10
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -104(%rbp)        # 4-byte Spill
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_tool_preset_editor_notify_data, .Lfunc_end10-gimp_tool_preset_editor_notify_data
	.cfi_endproc

	.type	gimp_tool_preset_editor_get_type.g_define_type_id__volatile,@object # @gimp_tool_preset_editor_get_type.g_define_type_id__volatile
	.local	gimp_tool_preset_editor_get_type.g_define_type_id__volatile
	.comm	gimp_tool_preset_editor_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpToolPresetEditor"
	.size	.L.str, 21

	.type	gimp_tool_preset_editor_get_type.g_implement_interface_info,@object # @gimp_tool_preset_editor_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_tool_preset_editor_get_type.g_implement_interface_info:
	.zero	24
	.size	gimp_tool_preset_editor_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_tool_preset_editor_new,@object # @__func__.gimp_tool_preset_editor_new
.L__func__.gimp_tool_preset_editor_new:
	.asciz	"gimp_tool_preset_editor_new"
	.size	.L__func__.gimp_tool_preset_editor_new, 28

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_MENU_FACTORY (menu_factory)"
	.size	.L.str.2, 36

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.3, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"menu-factory"
	.size	.L.str.4, 13

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"menu-identifier"
	.size	.L.str.5, 16

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"<ToolPresetEditor>"
	.size	.L.str.6, 19

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"ui-path"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"/tool-preset-editor-popup"
	.size	.L.str.8, 26

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"data-factory"
	.size	.L.str.9, 13

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"context"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"data"
	.size	.L.str.11, 5

	.type	gimp_tool_preset_editor_parent_class,@object # @gimp_tool_preset_editor_parent_class
	.local	gimp_tool_preset_editor_parent_class
	.comm	gimp_tool_preset_editor_parent_class,8,8
	.type	GimpToolPresetEditor_private_offset,@object # @GimpToolPresetEditor_private_offset
	.local	GimpToolPresetEditor_private_offset
	.comm	GimpToolPresetEditor_private_offset,4,4
	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Tool Preset Editor"
	.size	.L.str.12, 19

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"notify"
	.size	.L.str.14, 7

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.zero	1
	.size	.L.str.15, 1

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Icon:"
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"stock-id"
	.size	.L.str.17, 9

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"use-fg-bg"
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Apply stored FG/BG"
	.size	.L.str.19, 19

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"use-brush"
	.size	.L.str.20, 10

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Apply stored brush"
	.size	.L.str.21, 19

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"use-dynamics"
	.size	.L.str.22, 13

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Apply stored dynamics"
	.size	.L.str.23, 22

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"use-gradient"
	.size	.L.str.24, 13

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Apply stored gradient"
	.size	.L.str.25, 22

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"use-pattern"
	.size	.L.str.26, 12

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Apply stored pattern"
	.size	.L.str.27, 21

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"use-palette"
	.size	.L.str.28, 12

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Apply stored palette"
	.size	.L.str.29, 21

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"use-font"
	.size	.L.str.30, 9

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Apply stored font"
	.size	.L.str.31, 18

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"%s Preset"
	.size	.L.str.32, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
