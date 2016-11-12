	.text
	.file	"gimpbufferview.bc"
	.globl	gimp_buffer_view_get_type
	.align	16, 0x90
	.type	gimp_buffer_view_get_type,@function
gimp_buffer_view_get_type:              # @gimp_buffer_view_get_type
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
	movq	gimp_buffer_view_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_buffer_view_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_container_editor_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$848, %edx              # imm = 0x350
	movabsq	$gimp_buffer_view_class_intern_init, %rdi
	movl	$192, %r8d
	movabsq	$gimp_buffer_view_init, %rcx
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
	movabsq	$gimp_buffer_view_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_buffer_view_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_buffer_view_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_buffer_view_get_type, .Lfunc_end0-gimp_buffer_view_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_buffer_view_class_intern_init,@function
gimp_buffer_view_class_intern_init:     # @gimp_buffer_view_class_intern_init
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
	movq	%rax, gimp_buffer_view_parent_class
	cmpl	$0, GimpBufferView_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpBufferView_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_buffer_view_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_buffer_view_class_intern_init, .Lfunc_end1-gimp_buffer_view_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_buffer_view_init,@function
gimp_buffer_view_init:                  # @gimp_buffer_view_init
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	$0, 160(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 168(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 176(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 184(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_buffer_view_init, .Lfunc_end2-gimp_buffer_view_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_buffer_view_docked_iface_init,@function
gimp_buffer_view_docked_iface_init:     # @gimp_buffer_view_docked_iface_init
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
	movabsq	$gimp_buffer_view_set_context, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 72(%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_buffer_view_docked_iface_init, .Lfunc_end3-gimp_buffer_view_docked_iface_init
	.cfi_endproc

	.globl	gimp_buffer_view_new
	.align	16, 0x90
	.type	gimp_buffer_view_new,@function
gimp_buffer_view_new:                   # @gimp_buffer_view_new
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
	subq	$600, %rsp              # imm = 0x258
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
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	%ecx, -76(%rbp)
	movl	%r8d, -80(%rbp)
	movq	%r9, -88(%rbp)
# BB#1:                                 # %do.body
	movq	-64(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -140(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -140(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_buffer_view_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB4_37
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	movq	-72(%rbp), %rax
	movq	%rax, -152(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB4_15
# BB#14:                                # %if.then.20
	movl	$0, -164(%rbp)
	jmp	.LBB4_20
.LBB4_15:                               # %if.else.21
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_18
# BB#16:                                # %land.lhs.true.24
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB4_18
# BB#17:                                # %if.then.28
	movl	$1, -164(%rbp)
	jmp	.LBB4_19
.LBB4_18:                               # %if.else.29
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB4_19:                               # %if.end.31
	jmp	.LBB4_20
.LBB4_20:                               # %if.end.32
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB4_22
# BB#21:                                # %if.then.35
	jmp	.LBB4_23
.LBB4_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_buffer_view_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB4_37
.LBB4_23:                               # %if.end.37
	jmp	.LBB4_24
.LBB4_24:                               # %do.end.38
	jmp	.LBB4_25
.LBB4_25:                               # %do.body.39
	cmpl	$0, -76(%rbp)
	jle	.LBB4_28
# BB#26:                                # %land.lhs.true.41
	cmpl	$2048, -76(%rbp)        # imm = 0x800
	jg	.LBB4_28
# BB#27:                                # %if.then.43
	jmp	.LBB4_29
.LBB4_28:                               # %if.else.44
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_buffer_view_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB4_37
.LBB4_29:                               # %if.end.45
	jmp	.LBB4_30
.LBB4_30:                               # %do.end.46
	jmp	.LBB4_31
.LBB4_31:                               # %do.body.47
	cmpl	$0, -80(%rbp)
	jl	.LBB4_34
# BB#32:                                # %land.lhs.true.49
	cmpl	$16, -80(%rbp)
	jg	.LBB4_34
# BB#33:                                # %if.then.51
	jmp	.LBB4_35
.LBB4_34:                               # %if.else.52
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_buffer_view_new, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB4_37
.LBB4_35:                               # %if.end.53
	jmp	.LBB4_36
.LBB4_36:                               # %do.end.54
	callq	gimp_buffer_view_get_type
	movabsq	$.L.str.6, %rsi
	movabsq	$.L.str.7, %rcx
	movabsq	$.L.str.8, %r9
	movabsq	$.L.str.9, %rdx
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.11, %r8
	movabsq	$.L.str.12, %r10
	movabsq	$.L.str.13, %r11
	movabsq	$.L.str.14, %rbx
	movabsq	$.L.str.15, %r14
	xorl	%r15d, %r15d
	movl	%r15d, %r12d
	movl	-52(%rbp), %r15d
	movq	-64(%rbp), %r13
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	-72(%rbp), %rax
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movl	-76(%rbp), %esi
	movl	%esi, -188(%rbp)        # 4-byte Spill
	movl	-80(%rbp), %esi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	-88(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-184(%rbp), %rax        # 8-byte Reload
	movl	%esi, -220(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	movl	%r15d, %edx
	movq	%r8, -240(%rbp)         # 8-byte Spill
	movq	%r13, %r8
	movq	-200(%rbp), %r13        # 8-byte Reload
	movq	%r13, (%rsp)
	movq	-232(%rbp), %r13        # 8-byte Reload
	movq	%r13, 8(%rsp)
	movl	-188(%rbp), %r15d       # 4-byte Reload
	movl	%r15d, 16(%rsp)
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	movl	-220(%rbp), %r15d       # 4-byte Reload
	movl	%r15d, 32(%rsp)
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	%rax, 40(%rsp)
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rax, 48(%rsp)
	movq	%r10, 56(%rsp)
	movq	%r11, 64(%rsp)
	movq	%rbx, 72(%rsp)
	movq	%r14, 80(%rsp)
	movq	$0, 88(%rsp)
	movb	$0, %al
	movq	%r12, -248(%rbp)        # 8-byte Spill
	callq	g_object_new
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	%rax, -104(%rbp)
	callq	gtk_frame_new
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-104(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -276(%rbp)        # 4-byte Spill
	movl	-276(%rbp), %ecx        # 4-byte Reload
	movl	-276(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_box_reorder_child
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$2, %esi
	callq	gtk_box_new
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-112(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_view_get_type
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_buffer_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	-76(%rbp), %r8d
	movl	-76(%rbp), %r15d
	movl	-80(%rbp), %r9d
	movq	-312(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -316(%rbp)        # 4-byte Spill
	movq	%rax, %rdx
	movl	%ecx, -320(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r15d, %r8d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	$1, 16(%rsp)
	callq	gimp_view_new_full_by_types
	movq	-96(%rbp), %rdx
	movq	%rax, 144(%rdx)
	movq	-120(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-96(%rbp), %rdx
	movq	144(%rdx), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -332(%rbp)        # 4-byte Spill
	movl	-332(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.16, %rsi
	movabsq	$gimp_buffer_view_view_notify, %rax
	xorl	%r8d, %r8d
	movq	-104(%rbp), %rdi
	movq	128(%rdi), %rdi
	movq	-96(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_object
	movabsq	$.L.str.17, %rsi
	movabsq	$gimp_buffer_view_view_notify, %rcx
	xorl	%r8d, %r8d
	movq	-104(%rbp), %rdx
	movq	128(%rdx), %rdx
	movq	-96(%rbp), %rdi
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-344(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movabsq	$.L.str.18, %rdi
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	-96(%rbp), %rcx
	movq	%rax, 152(%rcx)
	movq	-120(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-96(%rbp), %rcx
	movq	152(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rax
	movq	152(%rax), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	-96(%rbp), %rdi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.19, %rsi
	movabsq	$gimp_buffer_view_buffer_changed, %rdi
	xorl	%r8d, %r8d
	movq	-376(%rbp), %r10        # 8-byte Reload
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	-384(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	g_signal_connect_object
	movq	-72(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-96(%rbp), %rsi
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gimp_buffer_view_buffer_changed
	movq	-104(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.20, %rsi
	movabsq	$.L.str.21, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-96(%rbp), %rcx
	movq	%rax, 160(%rcx)
	movq	-104(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.20, %rsi
	movabsq	$.L.str.22, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-96(%rbp), %rcx
	movq	%rax, 168(%rcx)
	movq	-104(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.20, %rsi
	movabsq	$.L.str.23, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-96(%rbp), %rcx
	movq	%rax, 176(%rcx)
	movq	-104(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.20, %rsi
	movabsq	$.L.str.24, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-96(%rbp), %rcx
	movq	%rax, 184(%rcx)
	movq	-104(%rbp), %rax
	movq	128(%rax), %rdi
	movq	-96(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rdi, -432(%rbp)        # 8-byte Spill
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gimp_buffer_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	-448(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_container_view_enable_dnd
	movq	-104(%rbp), %rax
	movq	128(%rax), %rdi
	movq	-96(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gimp_buffer_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	-472(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_container_view_enable_dnd
	movq	-104(%rbp), %rax
	movq	128(%rax), %rdi
	movq	-96(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rdi, -480(%rbp)        # 8-byte Spill
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gimp_buffer_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	-496(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_container_view_enable_dnd
	movq	-104(%rbp), %rax
	movq	128(%rax), %rdi
	movq	-96(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rdi, -504(%rbp)        # 8-byte Spill
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gimp_buffer_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	-520(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_container_view_enable_dnd
	movq	-104(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_ui_manager
	movq	-104(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_ui_manager_update
	movq	-96(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
.LBB4_37:                               # %return
	movq	-48(%rbp), %rax
	addq	$600, %rsp              # imm = 0x258
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_buffer_view_new, .Lfunc_end4-gimp_buffer_view_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_buffer_view_view_notify,@function
gimp_buffer_view_view_notify:           # @gimp_buffer_view_view_notify
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	144(%rdx), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-40(%rbp), %rsi
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_container_view_get_view_size
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rdx
	movq	112(%rdx), %rdi
	movl	-36(%rbp), %esi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	callq	gimp_view_renderer_set_size_full
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_buffer_view_view_notify, .Lfunc_end5-gimp_buffer_view_view_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_buffer_view_buffer_changed,@function
gimp_buffer_view_buffer_changed:        # @gimp_buffer_view_buffer_changed
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	144(%rsi), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	440(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_view_set_viewable
	movq	-8(%rbp), %rax
	cmpq	$0, 440(%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	440(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gimp_viewable_get_description
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-24(%rbp), %rdi
	callq	g_free
	jmp	.LBB6_3
.LBB6_2:                                # %if.else
	movq	-16(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.18, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_text
.LBB6_3:                                # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_buffer_view_buffer_changed, .Lfunc_end6-gimp_buffer_view_buffer_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_buffer_view_class_init,@function
gimp_buffer_view_class_init:            # @gimp_buffer_view_class_init
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_buffer_view_activate_item, %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rsi, 832(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_buffer_view_class_init, .Lfunc_end7-gimp_buffer_view_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_buffer_view_activate_item,@function
gimp_buffer_view_activate_item:         # @gimp_buffer_view_activate_item
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_buffer_view_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	gimp_buffer_view_parent_class, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	cmpq	$0, 832(%rax)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	gimp_buffer_view_parent_class, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	832(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
.LBB8_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_container_view_get_container
	movq	%rax, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB8_5
# BB#3:                                 # %land.lhs.true
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_have
	cmpl	$0, %eax
	je	.LBB8_5
# BB#4:                                 # %if.then.14
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_button_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_button_clicked
.LBB8_5:                                # %if.end.17
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_buffer_view_activate_item, .Lfunc_end8-gimp_buffer_view_activate_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_buffer_view_set_context,@function
gimp_buffer_view_set_context:           # @gimp_buffer_view_set_context
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_buffer_view_get_type
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
	movq	144(%rax), %rax
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
.Lfunc_end9:
	.size	gimp_buffer_view_set_context, .Lfunc_end9-gimp_buffer_view_set_context
	.cfi_endproc

	.type	gimp_buffer_view_get_type.g_define_type_id__volatile,@object # @gimp_buffer_view_get_type.g_define_type_id__volatile
	.local	gimp_buffer_view_get_type.g_define_type_id__volatile
	.comm	gimp_buffer_view_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpBufferView"
	.size	.L.str, 15

	.type	gimp_buffer_view_get_type.g_implement_interface_info,@object # @gimp_buffer_view_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_buffer_view_get_type.g_implement_interface_info:
	.quad	gimp_buffer_view_docked_iface_init
	.quad	0
	.quad	0
	.size	gimp_buffer_view_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_buffer_view_new,@object # @__func__.gimp_buffer_view_new
.L__func__.gimp_buffer_view_new:
	.asciz	"gimp_buffer_view_new"
	.size	.L__func__.gimp_buffer_view_new, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_CONTAINER (container)"
	.size	.L.str.2, 30

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.3, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"view_size > 0 && view_size <= GIMP_VIEWABLE_MAX_PREVIEW_SIZE"
	.size	.L.str.4, 61

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"view_border_width >= 0 && view_border_width <= GIMP_VIEW_MAX_BORDER_WIDTH"
	.size	.L.str.5, 74

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"view-type"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"container"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"context"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"view-size"
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"view-border-width"
	.size	.L.str.10, 18

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"menu-factory"
	.size	.L.str.11, 13

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"menu-identifier"
	.size	.L.str.12, 16

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"<Buffers>"
	.size	.L.str.13, 10

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"ui-path"
	.size	.L.str.14, 8

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"/buffers-popup"
	.size	.L.str.15, 15

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"notify::view-size"
	.size	.L.str.16, 18

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"notify::view-border-width"
	.size	.L.str.17, 26

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"(None)"
	.size	.L.str.18, 7

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"buffer-changed"
	.size	.L.str.19, 15

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"buffers"
	.size	.L.str.20, 8

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"buffers-paste"
	.size	.L.str.21, 14

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"buffers-paste-into"
	.size	.L.str.22, 19

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"buffers-paste-as-new"
	.size	.L.str.23, 21

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"buffers-delete"
	.size	.L.str.24, 15

	.type	gimp_buffer_view_parent_class,@object # @gimp_buffer_view_parent_class
	.local	gimp_buffer_view_parent_class
	.comm	gimp_buffer_view_parent_class,8,8
	.type	GimpBufferView_private_offset,@object # @GimpBufferView_private_offset
	.local	GimpBufferView_private_offset
	.comm	GimpBufferView_private_offset,4,4
	.type	parent_docked_iface,@object # @parent_docked_iface
	.local	parent_docked_iface
	.comm	parent_docked_iface,8,8

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
