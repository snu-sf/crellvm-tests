	.text
	.file	"gimpdynamicsoutputeditor.bc"
	.globl	gimp_dynamics_output_editor_get_type
	.align	16, 0x90
	.type	gimp_dynamics_output_editor_get_type,@function
gimp_dynamics_output_editor_get_type:   # @gimp_dynamics_output_editor_get_type
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
	movq	gimp_dynamics_output_editor_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_dynamics_output_editor_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$.L.str.21, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$824, %edx              # imm = 0x338
	movabsq	$gimp_dynamics_output_editor_class_intern_init, %rdi
	movl	$128, %r8d
	movabsq	$gimp_dynamics_output_editor_init, %rcx
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
	movabsq	$gimp_dynamics_output_editor_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_dynamics_output_editor_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_dynamics_output_editor_get_type, .Lfunc_end0-gimp_dynamics_output_editor_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dynamics_output_editor_class_intern_init,@function
gimp_dynamics_output_editor_class_intern_init: # @gimp_dynamics_output_editor_class_intern_init
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
	movq	%rax, gimp_dynamics_output_editor_parent_class
	cmpl	$0, GimpDynamicsOutputEditor_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpDynamicsOutputEditor_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_dynamics_output_editor_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_dynamics_output_editor_class_intern_init, .Lfunc_end1-gimp_dynamics_output_editor_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dynamics_output_editor_init,@function
gimp_dynamics_output_editor_init:       # @gimp_dynamics_output_editor_init
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
	subq	$32, %rsp
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
	callq	gtk_box_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_spacing
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_dynamics_output_editor_init, .Lfunc_end2-gimp_dynamics_output_editor_init
	.cfi_endproc

	.globl	gimp_dynamics_output_editor_new
	.align	16, 0x90
	.type	gimp_dynamics_output_editor_new,@function
gimp_dynamics_output_editor_new:        # @gimp_dynamics_output_editor_new
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_dynamics_output_get_type
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
	callq	g_type_check_instance_is_a
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
	movabsq	$.L.str.22, %rdi
	movabsq	$.L__func__.gimp_dynamics_output_editor_new, %rsi
	movabsq	$.L.str.23, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	callq	gimp_dynamics_output_editor_get_type
	movabsq	$.L.str.24, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -8(%rbp)
.LBB3_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_dynamics_output_editor_new, .Lfunc_end3-gimp_dynamics_output_editor_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dynamics_output_editor_class_init,@function
gimp_dynamics_output_editor_class_init: # @gimp_dynamics_output_editor_class_init
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$gimp_dynamics_output_editor_get_property, %rsi
	movabsq	$gimp_dynamics_output_editor_set_property, %rdi
	movabsq	$gimp_dynamics_output_editor_finalize, %rcx
	movabsq	$gimp_dynamics_output_editor_constructed, %rdx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 48(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 32(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_dynamics_output_get_type
	movabsq	$.L.str.24, %rdi
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
	movl	$264, %esi              # imm = 0x108
                                        # kill: RSI<def> ESI<kill>
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_dynamics_output_editor_class_init, .Lfunc_end4-gimp_dynamics_output_editor_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dynamics_output_editor_constructed,@function
gimp_dynamics_output_editor_constructed: # @gimp_dynamics_output_editor_constructed
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
	pushq	%r14
	pushq	%rbx
	subq	$432, %rsp              # imm = 0x1B0
.Ltmp18:
	.cfi_offset %rbx, -32
.Ltmp19:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gimp_dynamics_output_editor_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_dynamics_output_editor_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -40(%rbp)
	movq	gimp_dynamics_output_editor_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_dynamics_output_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
.LBB5_2:                                # %if.end
	jmp	.LBB5_3
.LBB5_3:                                # %do.body
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_dynamics_output_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB5_5
# BB#4:                                 # %if.then.9
	movl	$0, -108(%rbp)
	jmp	.LBB5_10
.LBB5_5:                                # %if.else
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_8
# BB#6:                                 # %land.lhs.true
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB5_8
# BB#7:                                 # %if.then.12
	movl	$1, -108(%rbp)
	jmp	.LBB5_9
.LBB5_8:                                # %if.else.13
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB5_9:                                # %if.end.15
	jmp	.LBB5_10
.LBB5_10:                               # %if.end.16
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB5_12
# BB#11:                                # %if.then.18
	jmp	.LBB5_13
.LBB5_12:                               # %if.else.19
	movabsq	$.L.str.22, %rdi
	movabsq	$.L.str.25, %rsi
	movl	$184, %edx
	movabsq	$.L__func__.gimp_dynamics_output_editor_constructed, %rcx
	movabsq	$.L.str.26, %r8
	callq	g_assertion_message_expr
.LBB5_13:                               # %if.end.20
	jmp	.LBB5_14
.LBB5_14:                               # %do.end
	callq	gimp_curve_view_new
	movabsq	$.L.str.27, %rsi
	movl	$4, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-40(%rbp), %rdi
	movq	%rax, 240(%rdi)
	movq	-40(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	movabsq	$.L.str.28, %rsi
	leaq	-80(%rbp), %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-40(%rbp), %rdi
	movq	(%rdi), %rdi
	movb	$0, %al
	callq	g_object_get
	callq	gimp_dynamics_output_type_get_type
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	leaq	-88(%rbp), %r8
	movl	-80(%rbp), %esi
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movq	-144(%rbp), %r9         # 8-byte Reload
	callq	gimp_enum_get_value
	cmpl	$0, %eax
	je	.LBB5_16
# BB#15:                                # %if.then.27
	movabsq	$.L.str.29, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movq	240(%rdx), %rdx
	movq	-88(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movb	$0, %al
	callq	g_object_set
.LBB5_16:                               # %if.end.29
	movl	$193, %eax
	movq	-40(%rbp), %rcx
	movq	240(%rcx), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	gtk_widget_set_size_request
	movq	-32(%rbp), %rcx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-40(%rbp), %rcx
	movq	240(%rcx), %rsi
	movq	%rax, %rdi
	movl	%edx, -164(%rbp)        # 4-byte Spill
	movl	-164(%rbp), %ecx        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rax
	movq	240(%rax), %rdi
	callq	gtk_widget_show
	xorl	%esi, %esi
	movq	-32(%rbp), %rdi
	callq	gimp_dynamics_output_editor_activate_input
	movabsq	$.L.str.30, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_button_new_with_mnemonic
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
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
	movabsq	$.L.str.31, %rsi
	movabsq	$gimp_dynamics_output_editor_curve_reset, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_rgb_get_type
	movl	$4, %edi
	movl	$24, %r9d
	movl	%r9d, %esi
	movl	$20, %r9d
	movl	%r9d, %edx
	movl	$64, %r9d
	movl	%r9d, %ecx
	movq	%rax, %r8
	movb	$0, %al
	callq	gtk_list_store_new
	movq	-40(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movl	$0, -76(%rbp)
.LBB5_17:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-76(%rbp), %rax
	cmpq	$7, %rax
	jae	.LBB5_20
# BB#18:                                # %for.body
                                        #   in Loop: Header=BB5_17 Depth=1
	leaq	-116(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$inputs, %rsi
	movq	-40(%rbp), %rdi
	movq	(%rdi), %rdi
	movslq	-76(%rbp), %r8
	imulq	$56, %r8, %r8
	addq	%r8, %rsi
	movq	(%rsi), %rsi
	movb	$0, %al
	callq	g_object_get
	movabsq	$inputs, %rcx
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rdi
	movslq	-76(%rbp), %rdx
	movq	-40(%rbp), %rsi
	addq	$16, %rsi
	shlq	$5, %rdx
	addq	%rdx, %rsi
	movl	-76(%rbp), %r8d
	movl	-116(%rbp), %r9d
	movslq	-76(%rbp), %rdx
	imulq	$56, %rdx, %rdx
	addq	%rdx, %rcx
	movq	16(%rcx), %rcx
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movl	%r9d, -204(%rbp)        # 4-byte Spill
	movl	%r8d, -208(%rbp)        # 4-byte Spill
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movl	$1, %r9d
	movl	$2, %r8d
	movl	$3, %r10d
	movabsq	$inputs, %rsi
	movslq	-76(%rbp), %rdi
	imulq	$56, %rdi, %rdi
	addq	%rdi, %rsi
	addq	$24, %rsi
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	-216(%rbp), %r11        # 8-byte Reload
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movl	-208(%rbp), %ebx        # 4-byte Reload
	movl	%r8d, -228(%rbp)        # 4-byte Spill
	movl	%ebx, %r8d
	movl	-204(%rbp), %r14d       # 4-byte Reload
	movl	%r14d, (%rsp)
	movl	$2, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$3, 24(%rsp)
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rax, 32(%rsp)
	movl	$-1, 40(%rsp)
	movb	$0, %al
	movl	%r10d, -232(%rbp)       # 4-byte Spill
	callq	gtk_list_store_insert_with_values
# BB#19:                                # %for.inc
                                        #   in Loop: Header=BB5_17 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB5_17
.LBB5_20:                               # %for.end
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_new_with_model
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-48(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_tree_view_set_headers_visible
	callq	gtk_cell_renderer_toggle_new
	movabsq	$.L.str.32, %rsi
	movl	$1, %ecx
	movabsq	$.L.str.33, %rdi
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %edx
	movq	-256(%rbp), %rax        # 8-byte Reload
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-260(%rbp), %r8d        # 4-byte Reload
	movb	$0, %al
	callq	g_object_set
	movl	$80, %edx
	movl	%edx, %esi
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.34, %rsi
	movabsq	$gimp_dynamics_output_editor_input_toggled, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-272(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-48(%rbp), %rcx
	movq	%rax, -280(%rbp)        # 8-byte Spill
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_cell_renderer_color_new
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movabsq	$.L.str.35, %r8
	movl	$3, %r9d
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movq	$0, (%rsp)
	movb	$0, %al
	callq	gtk_tree_view_insert_column_with_attributes
	movq	-48(%rbp), %rcx
	movl	%eax, -300(%rbp)        # 4-byte Spill
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movabsq	$.L.str.36, %r8
	movl	$1, %r9d
	movq	-64(%rbp), %rcx
	movq	%rax, %rdi
	movq	$0, (%rsp)
	movb	$0, %al
	callq	gtk_tree_view_insert_column_with_attributes
	movq	-48(%rbp), %rcx
	movl	%eax, -316(%rbp)        # 4-byte Spill
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_cell_renderer_text_new
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movabsq	$.L.str.37, %r8
	movl	$2, %r9d
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movq	$0, (%rsp)
	movb	$0, %al
	callq	gtk_tree_view_insert_column_with_attributes
	movq	-32(%rbp), %rcx
	movl	%eax, -340(%rbp)        # 4-byte Spill
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	%rax, 248(%rsi)
	movq	-48(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection
	movl	$2, %esi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	gtk_tree_selection_set_mode
	movq	-72(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rsi
	callq	gtk_tree_selection_select_iter
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.38, %rsi
	movabsq	$gimp_dynamics_output_editor_input_selected, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %r10
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_dynamics_output_editor_notify_output, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-32(%rbp), %rdi
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-376(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -392(%rbp)        # 8-byte Spill
	addq	$432, %rsp              # imm = 0x1B0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_dynamics_output_editor_constructed, .Lfunc_end5-gimp_dynamics_output_editor_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dynamics_output_editor_finalize,@function
gimp_dynamics_output_editor_finalize:   # @gimp_dynamics_output_editor_finalize
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_dynamics_output_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
.LBB6_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_dynamics_output_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_dynamics_output_editor_finalize, .Lfunc_end6-gimp_dynamics_output_editor_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dynamics_output_editor_set_property,@function
gimp_dynamics_output_editor_set_property: # @gimp_dynamics_output_editor_set_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_dynamics_output_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB7_2
	jmp	.LBB7_1
.LBB7_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
	jmp	.LBB7_5
.LBB7_2:                                # %sw.default
	jmp	.LBB7_3
.LBB7_3:                                # %do.body
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
	movabsq	$.L.str.40, %rdi
	movabsq	$.L.str.25, %rsi
	movl	$322, %edx              # imm = 0x142
	movabsq	$.L.str.41, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB7_5
.LBB7_5:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_dynamics_output_editor_set_property, .Lfunc_end7-gimp_dynamics_output_editor_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dynamics_output_editor_get_property,@function
gimp_dynamics_output_editor_get_property: # @gimp_dynamics_output_editor_get_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_dynamics_output_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB8_2
	jmp	.LBB8_1
.LBB8_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB8_5
.LBB8_2:                                # %sw.default
	jmp	.LBB8_3
.LBB8_3:                                # %do.body
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
	movabsq	$.L.str.40, %rdi
	movabsq	$.L.str.25, %rsi
	movl	$342, %edx              # imm = 0x156
	movabsq	$.L.str.41, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB8_5
.LBB8_5:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_dynamics_output_editor_get_property, .Lfunc_end8-gimp_dynamics_output_editor_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dynamics_output_editor_activate_input,@function
gimp_dynamics_output_editor_activate_input: # @gimp_dynamics_output_editor_activate_input
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_dynamics_output_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_curve_view_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	gimp_curve_view_set_curve
	movq	-24(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_curve_view_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_curve_view_remove_all_backgrounds
	movl	$0, -28(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-28(%rbp), %rax
	cmpq	$7, %rax
	jae	.LBB9_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	-32(%rbp), %rdx
	leaq	-40(%rbp), %r8
	xorl	%eax, %eax
	movl	%eax, %r9d
	movabsq	$inputs, %rcx
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movslq	-28(%rbp), %rdi
	imulq	$56, %rdi, %rdi
	movq	%rcx, %r10
	addq	%rdi, %r10
	movq	(%r10), %rdi
	movslq	-28(%rbp), %r10
	imulq	$56, %r10, %r10
	addq	%r10, %rcx
	movq	8(%rcx), %rcx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movb	$0, %al
	callq	g_object_get
	movl	-12(%rbp), %r11d
	cmpl	-28(%rbp), %r11d
	jne	.LBB9_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-24(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_curve_view_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$inputs, %rsi
	movq	-40(%rbp), %rdi
	movslq	-28(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rsi
	addq	$24, %rsi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-104(%rbp), %rdx        # 8-byte Reload
	callq	gimp_curve_view_set_curve
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 256(%rcx)
	movq	-24(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_curve_view_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$inputs, %rcx
	movslq	-28(%rbp), %rdx
	imulq	$56, %rdx, %rdx
	addq	%rdx, %rcx
	movq	16(%rcx), %rsi
	movq	%rax, %rdi
	callq	gimp_curve_view_set_x_axis_label
	jmp	.LBB9_7
.LBB9_4:                                # %if.else
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpl	$0, -32(%rbp)
	je	.LBB9_6
# BB#5:                                 # %if.then.22
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-24(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_curve_view_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$inputs, %rsi
	movq	-40(%rbp), %rdi
	movslq	-28(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rsi
	addq	$24, %rsi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-136(%rbp), %rdx        # 8-byte Reload
	callq	gimp_curve_view_add_background
.LBB9_6:                                # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_7
.LBB9_7:                                # %if.end.29
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB9_1
.LBB9_9:                                # %for.end
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_dynamics_output_editor_activate_input, .Lfunc_end9-gimp_dynamics_output_editor_activate_input
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dynamics_output_editor_curve_reset,@function
gimp_dynamics_output_editor_curve_reset: # @gimp_dynamics_output_editor_curve_reset
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_dynamics_output_editor_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 256(%rax)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movl	$1, %esi
	movq	-24(%rbp), %rax
	movq	256(%rax), %rdi
	callq	gimp_curve_reset
.LBB10_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_dynamics_output_editor_curve_reset, .Lfunc_end10-gimp_dynamics_output_editor_curve_reset
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dynamics_output_editor_input_toggled,@function
gimp_dynamics_output_editor_input_toggled: # @gimp_dynamics_output_editor_input_toggled
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
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	callq	gimp_dynamics_output_editor_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-72(%rbp), %rsi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rdx
	callq	gtk_tree_model_get_iter_from_string
	cmpl	$0, %eax
	je	.LBB11_2
# BB#1:                                 # %if.then
	leaq	-72(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-76(%rbp), %rcx
	movl	$1, %r8d
	leaq	-80(%rbp), %r9
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	-40(%rbp), %rdi
	movl	$-1, (%rsp)
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_tree_model_get
	xorl	%edx, %edx
	movl	%edx, %ecx
	movabsq	$inputs, %rsi
	movq	-32(%rbp), %rdi
	movq	(%rdi), %rdi
	movslq	-76(%rbp), %r9
	imulq	$56, %r9, %r9
	addq	%r9, %rsi
	movq	(%rsi), %rsi
	cmpl	$0, -80(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %edx
	movb	$0, %al
	callq	g_object_set
.LBB11_2:                               # %if.end
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_dynamics_output_editor_input_toggled, .Lfunc_end11-gimp_dynamics_output_editor_input_toggled
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dynamics_output_editor_input_selected,@function
gimp_dynamics_output_editor_input_selected: # @gimp_dynamics_output_editor_input_selected
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
	subq	$64, %rsp
	leaq	-24(%rbp), %rax
	leaq	-56(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	gtk_tree_selection_get_selected
	cmpl	$0, %eax
	je	.LBB12_2
# BB#1:                                 # %if.then
	leaq	-56(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-60(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-16(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	gimp_dynamics_output_editor_activate_input
.LBB12_2:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_dynamics_output_editor_input_selected, .Lfunc_end12-gimp_dynamics_output_editor_input_selected
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dynamics_output_editor_notify_output,@function
gimp_dynamics_output_editor_notify_output: # @gimp_dynamics_output_editor_notify_output
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB13_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-28(%rbp), %rax
	cmpq	$7, %rax
	jae	.LBB13_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movabsq	$inputs, %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rdi
	movslq	-28(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_9
# BB#3:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_dynamics_output_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection
	leaq	-52(%rbp), %rdx
	leaq	-64(%rbp), %r8
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	movabsq	$inputs, %rsi
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	movslq	-28(%rbp), %r10
	imulq	$56, %r10, %r10
	addq	%r10, %rsi
	movq	8(%rsi), %rcx
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movb	$0, %al
	callq	g_object_get
	movl	$1, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movslq	-28(%rbp), %rcx
	movq	-40(%rbp), %rsi
	addq	$16, %rsi
	shlq	$5, %rcx
	addq	%rcx, %rsi
	movl	-52(%rbp), %ecx
	movb	$0, %al
	callq	gtk_list_store_set
	movq	-48(%rbp), %rdi
	movslq	-28(%rbp), %rsi
	movq	-40(%rbp), %r9
	addq	$16, %r9
	shlq	$5, %rsi
	addq	%rsi, %r9
	movq	%r9, %rsi
	callq	gtk_tree_selection_iter_is_selected
	cmpl	$0, %eax
	jne	.LBB13_8
# BB#4:                                 # %if.then.17
	cmpl	$0, -52(%rbp)
	je	.LBB13_6
# BB#5:                                 # %if.then.19
	movq	-40(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_curve_view_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$inputs, %rsi
	movq	-64(%rbp), %rdi
	movslq	-28(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rsi
	addq	$24, %rsi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	gimp_curve_view_add_background
	jmp	.LBB13_7
.LBB13_6:                               # %if.else
	movq	-40(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_curve_view_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_curve_view_remove_background
.LBB13_7:                               # %if.end
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB13_8:                               # %if.end.27
	jmp	.LBB13_11
.LBB13_9:                               # %if.end.28
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_10
.LBB13_10:                              # %for.inc
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB13_1
.LBB13_11:                              # %for.end
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_dynamics_output_editor_notify_output, .Lfunc_end13-gimp_dynamics_output_editor_notify_output
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB14_2
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
.LBB14_2:                               # %entry
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
	movl	$.L.str.22, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end14:
	.size	g_warning, .Lfunc_end14-g_warning
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"use-pressure"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"pressure-curve"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Pressure"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"use-velocity"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"velocity-curve"
	.size	.L.str.4, 15

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Velocity"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"use-direction"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"direction-curve"
	.size	.L.str.7, 16

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Direction"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"use-tilt"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"tilt-curve"
	.size	.L.str.10, 11

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Tilt"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"use-wheel"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"wheel-curve"
	.size	.L.str.13, 12

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Wheel"
	.size	.L.str.14, 6

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"use-random"
	.size	.L.str.15, 11

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"random-curve"
	.size	.L.str.16, 13

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Random"
	.size	.L.str.17, 7

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"use-fade"
	.size	.L.str.18, 9

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"fade-curve"
	.size	.L.str.19, 11

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Fade"
	.size	.L.str.20, 5

	.type	inputs,@object          # @inputs
	.data
	.globl	inputs
	.align	16
inputs:
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	4607182418800017408     # double 1
	.quad	4602678819172646912     # double 0.5
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	.L.str.12
	.quad	.L.str.13
	.quad	.L.str.14
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	.L.str.18
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	4596373779694328218     # double 0.20000000000000001
	.quad	4596373779694328218     # double 0.20000000000000001
	.quad	4596373779694328218     # double 0.20000000000000001
	.quad	4607182418800017408     # double 1
	.size	inputs, 392

	.type	gimp_dynamics_output_editor_get_type.g_define_type_id__volatile,@object # @gimp_dynamics_output_editor_get_type.g_define_type_id__volatile
	.local	gimp_dynamics_output_editor_get_type.g_define_type_id__volatile
	.comm	gimp_dynamics_output_editor_get_type.g_define_type_id__volatile,8,8
	.type	.L.str.21,@object       # @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"GimpDynamicsOutputEditor"
	.size	.L.str.21, 25

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Gimp-Widgets"
	.size	.L.str.22, 13

	.type	.L__func__.gimp_dynamics_output_editor_new,@object # @__func__.gimp_dynamics_output_editor_new
.L__func__.gimp_dynamics_output_editor_new:
	.asciz	"gimp_dynamics_output_editor_new"
	.size	.L__func__.gimp_dynamics_output_editor_new, 32

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"GIMP_IS_DYNAMICS_OUTPUT (output)"
	.size	.L.str.23, 33

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"output"
	.size	.L.str.24, 7

	.type	gimp_dynamics_output_editor_parent_class,@object # @gimp_dynamics_output_editor_parent_class
	.local	gimp_dynamics_output_editor_parent_class
	.comm	gimp_dynamics_output_editor_parent_class,8,8
	.type	GimpDynamicsOutputEditor_private_offset,@object # @GimpDynamicsOutputEditor_private_offset
	.local	GimpDynamicsOutputEditor_private_offset
	.comm	GimpDynamicsOutputEditor_private_offset,4,4
	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gimpdynamicsoutputeditor.c"
	.size	.L.str.25, 27

	.type	.L__func__.gimp_dynamics_output_editor_constructed,@object # @__func__.gimp_dynamics_output_editor_constructed
.L__func__.gimp_dynamics_output_editor_constructed:
	.asciz	"gimp_dynamics_output_editor_constructed"
	.size	.L__func__.gimp_dynamics_output_editor_constructed, 40

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"GIMP_IS_DYNAMICS_OUTPUT (private->output)"
	.size	.L.str.26, 42

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"border-width"
	.size	.L.str.27, 13

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"type"
	.size	.L.str.28, 5

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"y-axis-label"
	.size	.L.str.29, 13

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"_Reset Curve"
	.size	.L.str.30, 13

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"clicked"
	.size	.L.str.31, 8

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"mode"
	.size	.L.str.32, 5

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"activatable"
	.size	.L.str.33, 12

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"toggled"
	.size	.L.str.34, 8

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"color"
	.size	.L.str.35, 6

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"active"
	.size	.L.str.36, 7

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"text"
	.size	.L.str.37, 5

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"changed"
	.size	.L.str.38, 8

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"notify"
	.size	.L.str.39, 7

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.40, 54

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"property"
	.size	.L.str.41, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
