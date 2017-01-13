	.text
	.file	"gimpdynamicseditor.bc"
	.globl	gimp_dynamics_editor_get_type
	.align	16, 0x90
	.type	gimp_dynamics_editor_get_type,@function
gimp_dynamics_editor_get_type:          # @gimp_dynamics_editor_get_type
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
	movq	gimp_dynamics_editor_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_dynamics_editor_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_dynamics_editor_class_intern_init, %rdi
	movl	$240, %r8d
	movabsq	$gimp_dynamics_editor_init, %rcx
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
	movabsq	$gimp_dynamics_editor_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_dynamics_editor_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_dynamics_editor_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_dynamics_editor_get_type, .Lfunc_end0-gimp_dynamics_editor_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dynamics_editor_class_intern_init,@function
gimp_dynamics_editor_class_intern_init: # @gimp_dynamics_editor_class_intern_init
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
	movq	%rax, gimp_dynamics_editor_parent_class
	cmpl	$0, GimpDynamicsEditor_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpDynamicsEditor_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_dynamics_editor_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_dynamics_editor_class_intern_init, .Lfunc_end1-gimp_dynamics_editor_class_intern_init
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_0:
	.long	1056964608              # float 0.5
.LCPI2_1:
	.long	1065353216              # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_2:
	.quad	4636033603912859648     # double 90
	.text
	.align	16, 0x90
	.type	gimp_dynamics_editor_init,@function
gimp_dynamics_editor_init:              # @gimp_dynamics_editor_init
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
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movl	$7, -84(%rbp)
	callq	gimp_dynamics_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movabsq	$.L.str.13, %rsi
	movabsq	$gimp_dynamics_editor_notify_model, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	%rax, 208(%rdx)
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_dynamics_output_type_get_type
	movq	%rax, %rdi
	callq	gimp_enum_combo_box_new
	movq	-8(%rbp), %rcx
	movq	%rax, 224(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rcx
	movq	224(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	224(%rax), %rdi
	callq	gtk_widget_show
	callq	gtk_notebook_new
	movq	-8(%rbp), %rsi
	movq	%rax, 232(%rsi)
	movq	-8(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_notebook_set_show_border
	movq	-8(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_notebook_set_show_tabs
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rsi
	movq	232(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	232(%rax), %rdi
	callq	gtk_widget_show
	movl	$10, %edi
	xorl	%edx, %edx
	movl	-84(%rbp), %ecx
	addl	$2, %ecx
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	-8(%rbp), %r10
	movq	%rax, 216(%r10)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	224(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	232(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	216(%rax), %rcx
	callq	gimp_dynamics_editor_init_output_editors
	movq	-8(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	-8(%rbp), %rcx
	movq	216(%rcx), %rsi
	movq	%rax, %rdi
	callq	gtk_notebook_append_page
	movq	-8(%rbp), %rcx
	movq	216(%rcx), %rdi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	gtk_widget_show
	movq	-8(%rbp), %rcx
	movq	224(%rcx), %rcx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.14, %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	movl	$4, %r9d
	movq	-8(%rbp), %rdi
	movq	216(%rdi), %rdi
	movq	-184(%rbp), %r10        # 8-byte Reload
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %r8
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-1, 8(%rsp)
	movb	$0, %al
	callq	gimp_int_combo_box_prepend
	movq	-8(%rbp), %rdi
	movq	224(%rdi), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movabsq	$.L.str.15, %rdi
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movabsq	$.L.str.16, %rdi
	movq	%rax, -80(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movabsq	$.L.str.17, %rdi
	movq	%rax, -72(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movabsq	$.L.str.18, %rdi
	movq	%rax, -64(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movabsq	$.L.str.19, %rdi
	movq	%rax, -56(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movabsq	$.L.str.20, %rdi
	movq	%rax, -48(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movabsq	$.L.str.21, %rdi
	movq	%rax, -40(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -32(%rbp)
	movl	$0, -88(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-88(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB2_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movslq	-88(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	.LCPI2_2, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_label_set_angle
	movslq	-88(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI2_1, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movl	$6, %ecx
	movslq	-88(%rbp), %rsi
	movq	-80(%rbp,%rsi,8), %rsi
	movl	-88(%rbp), %edx
	addl	$1, %edx
	movl	-88(%rbp), %r10d
	addl	$2, %r10d
	movq	%rax, %rdi
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movslq	-88(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rdi
	callq	gtk_widget_show
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB2_1
.LBB2_4:                                # %for.end
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_dynamics_editor_init, .Lfunc_end2-gimp_dynamics_editor_init
	.cfi_endproc

	.globl	gimp_dynamics_editor_new
	.align	16, 0x90
	.type	gimp_dynamics_editor_new,@function
gimp_dynamics_editor_new:               # @gimp_dynamics_editor_new
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
	movabsq	$.L__func__.gimp_dynamics_editor_new, %rsi
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
	movabsq	$.L__func__.gimp_dynamics_editor_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_25
.LBB3_23:                               # %if.end.37
	jmp	.LBB3_24
.LBB3_24:                               # %do.end.38
	callq	gimp_dynamics_editor_get_type
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	472(%rcx), %rcx
	movq	-56(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	gimp_context_get_dynamics
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
	.size	gimp_dynamics_editor_new, .Lfunc_end3-gimp_dynamics_editor_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dynamics_editor_class_init,@function
gimp_dynamics_editor_class_init:        # @gimp_dynamics_editor_class_init
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
	movabsq	$gimp_dynamics_editor_set_data, %rsi
	movabsq	$gimp_dynamics_editor_finalize, %rcx
	movabsq	$gimp_dynamics_editor_constructed, %rdx
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 824(%rax)
	callq	gettext
	movq	-24(%rbp), %rcx
	movq	%rax, 832(%rcx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_dynamics_editor_class_init, .Lfunc_end4-gimp_dynamics_editor_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dynamics_editor_constructed,@function
gimp_dynamics_editor_constructed:       # @gimp_dynamics_editor_constructed
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
	subq	$16, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	gimp_dynamics_editor_parent_class, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_dynamics_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB5_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gimp_docked_interface_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_docked_set_show_button_bar
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_dynamics_editor_constructed, .Lfunc_end5-gimp_dynamics_editor_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dynamics_editor_finalize,@function
gimp_dynamics_editor_finalize:          # @gimp_dynamics_editor_finalize
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
	callq	gimp_dynamics_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 208(%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 208(%rax)
.LBB6_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_dynamics_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_dynamics_editor_finalize, .Lfunc_end6-gimp_dynamics_editor_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dynamics_editor_set_data,@function
gimp_dynamics_editor_set_data:          # @gimp_dynamics_editor_set_data
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
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_dynamics_editor_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
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
	movabsq	$gimp_dynamics_editor_notify_data, %rdx
	movq	-8(%rbp), %rdi
	movq	160(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r9, -104(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB7_2:                                # %if.end
	movq	gimp_dynamics_editor_parent_class, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	824(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-8(%rbp), %rax
	cmpq	$0, 160(%rax)
	je	.LBB7_4
# BB#3:                                 # %if.then.9
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_dynamics_editor_notify_model, %rdx
	movq	-24(%rbp), %rdi
	movq	208(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%r9, -136(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-136(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-8(%rbp), %rdi
	movq	160(%rdi), %rdi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	208(%rsi), %rsi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$256, %edx              # imm = 0x100
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_copy
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_dynamics_editor_notify_model, %rdi
	movq	-24(%rbp), %r9
	movq	208(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-176(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_unblock_matched
	movabsq	$.L.str.13, %rsi
	movabsq	$gimp_dynamics_editor_notify_data, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %r10
	movq	160(%r10), %r10
	movq	-8(%rbp), %r11
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	-192(%rbp), %rdx        # 8-byte Reload
	movq	%r11, %rcx
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB7_4:                                # %if.end.22
	movq	-24(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_combo_box_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_combo_box_get_model
	leaq	-64(%rbp), %rsi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_tree_model_get_iter_first
	movl	%eax, -68(%rbp)
.LBB7_5:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -68(%rbp)
	je	.LBB7_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB7_5 Depth=1
	leaq	-64(%rbp), %rsi
	movl	$4, %edx
	leaq	-80(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-80(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movl	168(%rsi), %esi
	movq	%rcx, %rdi
	callq	gtk_widget_set_sensitive
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB7_5 Depth=1
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gtk_tree_model_iter_next
	movl	%eax, -68(%rbp)
	jmp	.LBB7_5
.LBB7_8:                                # %for.end
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_dynamics_editor_set_data, .Lfunc_end7-gimp_dynamics_editor_set_data
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dynamics_editor_notify_data,@function
gimp_dynamics_editor_notify_data:       # @gimp_dynamics_editor_notify_data
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
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movabsq	$gimp_dynamics_editor_notify_model, %rdx
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
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
	movabsq	$gimp_dynamics_editor_notify_model, %rdi
	movq	-24(%rbp), %r9
	movq	208(%r9), %r9
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
.Lfunc_end8:
	.size	gimp_dynamics_editor_notify_data, .Lfunc_end8-gimp_dynamics_editor_notify_data
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dynamics_editor_notify_model,@function
gimp_dynamics_editor_notify_model:      # @gimp_dynamics_editor_notify_model
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
	je	.LBB9_2
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_dynamics_editor_notify_data, %rdx
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
	movabsq	$gimp_dynamics_editor_notify_data, %rdi
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
.LBB9_2:                                # %if.end
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_dynamics_editor_notify_model, .Lfunc_end9-gimp_dynamics_editor_notify_model
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dynamics_editor_init_output_editors,@function
gimp_dynamics_editor_init_output_editors: # @gimp_dynamics_editor_init_output_editors
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
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	gtk_combo_box_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_combo_box_get_model
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_int_store_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-80(%rbp), %rsi
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_tree_model_get_iter_first
	movl	%eax, -84(%rbp)
	movl	$1, -88(%rbp)
.LBB10_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -84(%rbp)
	je	.LBB10_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-80(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-92(%rbp), %rcx
	movl	$1, %r8d
	leaq	-104(%rbp), %r9
	movl	$4294967295, %r10d      # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movl	$-1, (%rsp)
	movb	$0, %al
	movl	%r10d, -148(%rbp)       # 4-byte Spill
	callq	gtk_tree_model_get
	movq	-8(%rbp), %rdi
	movl	-92(%rbp), %esi
	callq	gimp_dynamics_get_output
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	callq	gimp_dynamics_output_editor_new
	movq	%rax, -120(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_notebook_append_page
	movq	-120(%rbp), %rdi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	gtk_widget_show
	movq	-48(%rbp), %rcx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-80(%rbp), %rsi
	movl	$4, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-120(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_list_store_set
	movl	$80, %edx
	movl	%edx, %esi
	movq	-112(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-88(%rbp), %ecx
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	-192(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_dynamics_editor_add_output_row
	movq	-104(%rbp), %rdi
	callq	g_free
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB10_1 Depth=1
	leaq	-80(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	gtk_tree_model_iter_next
	movl	%eax, -84(%rbp)
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB10_1
.LBB10_4:                               # %for.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.22, %rsi
	movabsq	$gimp_dynamics_editor_view_changed, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-208(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -216(%rbp)        # 8-byte Spill
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_dynamics_editor_init_output_editors, .Lfunc_end10-gimp_dynamics_editor_init_output_editors
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI11_0:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	gimp_dynamics_editor_add_output_row,@function
gimp_dynamics_editor_add_output_row:    # @gimp_dynamics_editor_add_output_row
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	$1, -44(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_label_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI11_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$6, %r8d
	movq	-40(%rbp), %rsi
	movl	-28(%rbp), %r9d
	movl	-28(%rbp), %r10d
	addl	$1, %r10d
	movq	%rax, %rdi
	movl	%r8d, -68(%rbp)         # 4-byte Spill
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.23, %rsi
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movl	-28(%rbp), %r8d
	callq	dynamics_check_button_new
	movabsq	$.L.str.24, %rsi
	movl	-44(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -44(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	dynamics_check_button_new
	movabsq	$.L.str.25, %rsi
	movl	-44(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -44(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	dynamics_check_button_new
	movabsq	$.L.str.26, %rsi
	movl	-44(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -44(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	dynamics_check_button_new
	movabsq	$.L.str.27, %rsi
	movl	-44(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -44(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	dynamics_check_button_new
	movabsq	$.L.str.28, %rsi
	movl	-44(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -44(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	dynamics_check_button_new
	movabsq	$.L.str.29, %rsi
	movl	-44(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -44(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	dynamics_check_button_new
	movl	-44(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -44(%rbp)
	movq	%rax, -128(%rbp)        # 8-byte Spill
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_dynamics_editor_add_output_row, .Lfunc_end11-gimp_dynamics_editor_add_output_row
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dynamics_editor_view_changed,@function
gimp_dynamics_editor_view_changed:      # @gimp_dynamics_editor_view_changed
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_combo_box_get_model
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_combo_box_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_combo_box_get_active_iter
	leaq	-56(%rbp), %rsi
	movl	$4, %edx
	leaq	-64(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-16(%rbp), %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gtk_notebook_page_num
	movl	%eax, -68(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-68(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_notebook_set_current_page
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_dynamics_editor_view_changed, .Lfunc_end12-gimp_dynamics_editor_view_changed
	.cfi_endproc

	.align	16, 0x90
	.type	dynamics_check_button_new,@function
dynamics_check_button_new:              # @dynamics_check_button_new
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
	pushq	%rbx
	subq	$88, %rsp
.Ltmp47:
	.cfi_offset %rbx, -24
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%r9, %rdx
	callq	gimp_prop_check_button_new
	movl	$2, %ecx
	xorl	%r8d, %r8d
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-36(%rbp), %edx
	movl	-36(%rbp), %r10d
	addl	$1, %r10d
	movl	-40(%rbp), %r11d
	movl	-40(%rbp), %ebx
	addl	$1, %ebx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movl	%r10d, %ecx
	movl	%r8d, -56(%rbp)         # 4-byte Spill
	movl	%r11d, %r8d
	movl	%ebx, %r9d
	movl	$2, (%rsp)
	movl	$2, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-48(%rbp), %rax
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end13:
	.size	dynamics_check_button_new, .Lfunc_end13-dynamics_check_button_new
	.cfi_endproc

	.type	gimp_dynamics_editor_get_type.g_define_type_id__volatile,@object # @gimp_dynamics_editor_get_type.g_define_type_id__volatile
	.local	gimp_dynamics_editor_get_type.g_define_type_id__volatile
	.comm	gimp_dynamics_editor_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpDynamicsEditor"
	.size	.L.str, 19

	.type	gimp_dynamics_editor_get_type.g_implement_interface_info,@object # @gimp_dynamics_editor_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_dynamics_editor_get_type.g_implement_interface_info:
	.zero	24
	.size	gimp_dynamics_editor_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_dynamics_editor_new,@object # @__func__.gimp_dynamics_editor_new
.L__func__.gimp_dynamics_editor_new:
	.asciz	"gimp_dynamics_editor_new"
	.size	.L__func__.gimp_dynamics_editor_new, 25

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
	.asciz	"<DynamicsEditor>"
	.size	.L.str.6, 17

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"ui-path"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"/dynamics-editor-popup"
	.size	.L.str.8, 23

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

	.type	gimp_dynamics_editor_parent_class,@object # @gimp_dynamics_editor_parent_class
	.local	gimp_dynamics_editor_parent_class
	.comm	gimp_dynamics_editor_parent_class,8,8
	.type	GimpDynamicsEditor_private_offset,@object # @GimpDynamicsEditor_private_offset
	.local	GimpDynamicsEditor_private_offset
	.comm	GimpDynamicsEditor_private_offset,4,4
	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Paint Dynamics Editor"
	.size	.L.str.12, 22

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"notify"
	.size	.L.str.13, 7

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Mapping matrix"
	.size	.L.str.14, 15

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Pressure"
	.size	.L.str.15, 9

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Velocity"
	.size	.L.str.16, 9

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Direction"
	.size	.L.str.17, 10

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Tilt"
	.size	.L.str.18, 5

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Wheel"
	.size	.L.str.19, 6

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Random"
	.size	.L.str.20, 7

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Fade"
	.size	.L.str.21, 5

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"changed"
	.size	.L.str.22, 8

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"use-pressure"
	.size	.L.str.23, 13

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"use-velocity"
	.size	.L.str.24, 13

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"use-direction"
	.size	.L.str.25, 14

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"use-tilt"
	.size	.L.str.26, 9

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"use-wheel"
	.size	.L.str.27, 10

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"use-random"
	.size	.L.str.28, 11

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"use-fade"
	.size	.L.str.29, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
