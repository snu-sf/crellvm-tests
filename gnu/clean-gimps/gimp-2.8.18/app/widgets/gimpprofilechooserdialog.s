	.text
	.file	"gimpprofilechooserdialog.bc"
	.globl	gimp_profile_chooser_dialog_get_type
	.align	16, 0x90
	.type	gimp_profile_chooser_dialog_get_type,@function
gimp_profile_chooser_dialog_get_type:   # @gimp_profile_chooser_dialog_get_type
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
	movq	gimp_profile_chooser_dialog_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_profile_chooser_dialog_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_file_chooser_dialog_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$952, %edx              # imm = 0x3B8
	movabsq	$gimp_profile_chooser_dialog_class_intern_init, %rdi
	movl	$312, %r8d              # imm = 0x138
	movabsq	$gimp_profile_chooser_dialog_init, %rcx
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
	movabsq	$gimp_profile_chooser_dialog_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_profile_chooser_dialog_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_profile_chooser_dialog_get_type, .Lfunc_end0-gimp_profile_chooser_dialog_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_profile_chooser_dialog_class_intern_init,@function
gimp_profile_chooser_dialog_class_intern_init: # @gimp_profile_chooser_dialog_class_intern_init
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
	movq	%rax, gimp_profile_chooser_dialog_parent_class
	cmpl	$0, GimpProfileChooserDialog_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpProfileChooserDialog_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_profile_chooser_dialog_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_profile_chooser_dialog_class_intern_init, .Lfunc_end1-gimp_profile_chooser_dialog_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_profile_chooser_dialog_init,@function
gimp_profile_chooser_dialog_init:       # @gimp_profile_chooser_dialog_init
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
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$0, 304(%rdi)
	movq	%rcx, %rdi
	callq	gtk_text_buffer_new
	movq	-8(%rbp), %rcx
	movq	%rax, 280(%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_profile_chooser_dialog_init, .Lfunc_end2-gimp_profile_chooser_dialog_init
	.cfi_endproc

	.globl	gimp_profile_chooser_dialog_new
	.align	16, 0x90
	.type	gimp_profile_chooser_dialog_new,@function
gimp_profile_chooser_dialog_new:        # @gimp_profile_chooser_dialog_new
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
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_profile_chooser_dialog_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	callq	gimp_profile_chooser_dialog_get_type
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.4, %rcx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %r8
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
	.size	gimp_profile_chooser_dialog_new, .Lfunc_end3-gimp_profile_chooser_dialog_new
	.cfi_endproc

	.globl	gimp_profile_chooser_dialog_get_desc
	.align	16, 0x90
	.type	gimp_profile_chooser_dialog_get_desc,@function
gimp_profile_chooser_dialog_get_desc:   # @gimp_profile_chooser_dialog_get_desc
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_profile_chooser_dialog_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_profile_chooser_dialog_get_desc, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_17
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	cmpq	$0, -24(%rbp)
	je	.LBB4_16
# BB#13:                                # %land.lhs.true.12
	movq	-16(%rbp), %rax
	cmpq	$0, 288(%rax)
	je	.LBB4_16
# BB#14:                                # %land.lhs.true.15
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	288(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB4_16
# BB#15:                                # %if.then.19
	movq	-16(%rbp), %rax
	movq	296(%rax), %rdi
	callq	g_strdup
	movq	%rax, -8(%rbp)
	jmp	.LBB4_17
.LBB4_16:                               # %if.end.21
	movq	$0, -8(%rbp)
.LBB4_17:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_profile_chooser_dialog_get_desc, .Lfunc_end4-gimp_profile_chooser_dialog_get_desc
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_profile_chooser_dialog_class_init,@function
gimp_profile_chooser_dialog_class_init: # @gimp_profile_chooser_dialog_class_init
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$gimp_profile_chooser_dialog_set_property, %rsi
	movabsq	$gimp_profile_chooser_dialog_get_property, %rdi
	movabsq	$gimp_profile_chooser_dialog_finalize, %rcx
	movabsq	$gimp_profile_chooser_dialog_dispose, %rdx
	movabsq	$gimp_profile_chooser_dialog_constructed, %r8
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%r8, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 48(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 32(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 24(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_get_type
	movabsq	$.L.str.3, %rdi
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_profile_chooser_dialog_class_init, .Lfunc_end5-gimp_profile_chooser_dialog_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_profile_chooser_dialog_constructed,@function
gimp_profile_chooser_dialog_constructed: # @gimp_profile_chooser_dialog_constructed
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_profile_chooser_dialog_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_profile_chooser_dialog_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_profile_chooser_dialog_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB6_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rsi
	movq	%rax, %rdi
	callq	gtk_window_set_role
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movabsq	$.L.str.8, %rcx
	movl	$4294967293, %r8d       # imm = 0xFFFFFFFD
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_add_buttons
	movq	-16(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967293, %esi       # imm = 0xFFFFFFFD
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-16(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967293, %esi       # imm = 0xFFFFFFFD
	movq	%rax, %rdi
	callq	gtk_dialog_set_default_response
	movq	-16(%rbp), %rdi
	callq	gimp_profile_chooser_dialog_add_shortcut
	callq	gtk_file_filter_new
	movabsq	$.L.str.9, %rdi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_file_filter_set_name
	movabsq	$.L.str.10, %rsi
	movq	-24(%rbp), %rdi
	callq	gtk_file_filter_add_pattern
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_add_filter
	callq	gtk_file_filter_new
	movabsq	$.L.str.11, %rdi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_file_filter_set_name
	movabsq	$.L.str.12, %rsi
	movq	-24(%rbp), %rdi
	callq	gtk_file_filter_add_pattern
	movabsq	$.L.str.13, %rsi
	movq	-24(%rbp), %rdi
	callq	gtk_file_filter_add_pattern
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_add_filter
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_filter
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	280(%rsi), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_profile_view_new
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_file_chooser_set_preview_widget
	movabsq	$.L.str.14, %rsi
	movabsq	$gimp_profile_chooser_dialog_update_preview, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-16(%rbp), %r10
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	-128(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -136(%rbp)        # 8-byte Spill
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_profile_chooser_dialog_constructed, .Lfunc_end6-gimp_profile_chooser_dialog_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_profile_chooser_dialog_dispose,@function
gimp_profile_chooser_dialog_dispose:    # @gimp_profile_chooser_dialog_dispose
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
	callq	gimp_profile_chooser_dialog_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 304(%rax)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	304(%rax), %edi
	callq	g_source_remove
	movq	-16(%rbp), %rcx
	movl	$0, 304(%rcx)
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB7_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_profile_chooser_dialog_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_profile_chooser_dialog_dispose, .Lfunc_end7-gimp_profile_chooser_dialog_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_profile_chooser_dialog_finalize,@function
gimp_profile_chooser_dialog_finalize:   # @gimp_profile_chooser_dialog_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_profile_chooser_dialog_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 280(%rax)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 280(%rax)
.LBB8_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_profile_chooser_dialog_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_profile_chooser_dialog_finalize, .Lfunc_end8-gimp_profile_chooser_dialog_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_profile_chooser_dialog_get_property,@function
gimp_profile_chooser_dialog_get_property: # @gimp_profile_chooser_dialog_get_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_profile_chooser_dialog_get_type
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
	movq	-40(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
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
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.17, %rsi
	movl	$203, %edx
	movabsq	$.L.str.18, %rcx
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
	.size	gimp_profile_chooser_dialog_get_property, .Lfunc_end9-gimp_profile_chooser_dialog_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_profile_chooser_dialog_set_property,@function
gimp_profile_chooser_dialog_set_property: # @gimp_profile_chooser_dialog_set_property
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
	callq	gimp_profile_chooser_dialog_get_type
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
	callq	g_value_get_object
	movq	-40(%rbp), %rdi
	movq	%rax, 272(%rdi)
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
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.17, %rsi
	movl	$184, %edx
	movabsq	$.L.str.18, %rcx
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
	.size	gimp_profile_chooser_dialog_set_property, .Lfunc_end10-gimp_profile_chooser_dialog_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_profile_chooser_dialog_add_shortcut,@function
gimp_profile_chooser_dialog_add_shortcut: # @gimp_profile_chooser_dialog_add_shortcut
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
	subq	$32, %rsp
	movabsq	$gimp_profile_chooser_dialog_add_shortcut.folder, %rax
	movl	$4, %esi
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	g_file_test
	cmpl	$0, %eax
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_profile_chooser_dialog_add_shortcut.folder, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	gtk_file_chooser_add_shortcut_folder
	movl	%eax, -20(%rbp)         # 4-byte Spill
.LBB11_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_profile_chooser_dialog_add_shortcut, .Lfunc_end11-gimp_profile_chooser_dialog_add_shortcut
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_profile_view_new,@function
gimp_profile_view_new:                  # @gimp_profile_view_new
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
	subq	$112, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	gtk_frame_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	xorl	%esi, %esi
	movl	%esi, %eax
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gtk_scrolled_window_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	%rax, %rdi
	movl	%edx, %esi
	callq	gtk_scrolled_window_set_policy
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rdi
	callq	gtk_text_view_new_with_buffer
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_text_view_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_text_view_set_editable
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_text_view_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_text_view_set_wrap_mode
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_text_view_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_text_view_set_pixels_above_lines
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_text_view_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_text_view_set_left_margin
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_text_view_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_text_view_set_right_margin
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movl	$200, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movq	-16(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_profile_view_new, .Lfunc_end12-gimp_profile_view_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_profile_chooser_dialog_update_preview,@function
gimp_profile_chooser_dialog_update_preview: # @gimp_profile_chooser_dialog_update_preview
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
	movabsq	$.L.str.15, %rsi
	xorl	%edx, %edx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	280(%rdi), %rdi
	callq	gtk_text_buffer_set_text
	movq	-8(%rbp), %rsi
	movq	288(%rsi), %rdi
	callq	g_free
	movq	-8(%rbp), %rsi
	movq	$0, 288(%rsi)
	movq	-8(%rbp), %rsi
	movq	296(%rsi), %rdi
	callq	g_free
	movq	-8(%rbp), %rsi
	movq	$0, 296(%rsi)
	movq	-8(%rbp), %rsi
	cmpl	$0, 304(%rsi)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	304(%rax), %edi
	callq	g_source_remove
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB13_2:                               # %if.end
	movabsq	$gimp_profile_view_query, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_idle_add
	movq	-8(%rbp), %rcx
	movl	%eax, 304(%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_profile_chooser_dialog_update_preview, .Lfunc_end13-gimp_profile_chooser_dialog_update_preview
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_profile_view_query,@function
gimp_profile_view_query:                # @gimp_profile_view_query
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_file_chooser_get_preview_filename
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB14_18
# BB#1:                                 # %if.then
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	272(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_get_user_context
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-24(%rbp), %r8
	leaq	-32(%rbp), %r9
	leaq	-40(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	%rax, %rsi
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	plug_in_icc_profile_file_info
	cmpl	$0, %eax
	je	.LBB14_17
# BB#2:                                 # %if.then.7
	cmpq	$0, -40(%rbp)
	je	.LBB14_4
# BB#3:                                 # %cond.true
	movq	-40(%rbp), %rdi
	callq	strlen
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB14_5
.LBB14_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB14_5
.LBB14_5:                               # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jbe	.LBB14_8
# BB#6:                                 # %land.lhs.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	addq	-48(%rbp), %rdx
	subq	-56(%rbp), %rcx
	addq	%rcx, %rdx
	movq	-16(%rbp), %rsi
	movq	%rdx, %rdi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB14_8
# BB#7:                                 # %if.then.14
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -48(%rbp)
.LBB14_8:                               # %if.end
	movq	-8(%rbp), %rax
	movq	280(%rax), %rdi
	cmpq	$0, -40(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	je	.LBB14_10
# BB#9:                                 # %cond.true.16
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB14_11
.LBB14_10:                              # %cond.false.17
	movabsq	$.L.str.15, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB14_11
.LBB14_11:                              # %cond.end.18
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_text_buffer_set_text
	cmpq	$0, -32(%rbp)
	je	.LBB14_13
# BB#12:                                # %if.then.21
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 296(%rcx)
	movq	$0, -32(%rbp)
	jmp	.LBB14_16
.LBB14_13:                              # %if.else
	cmpq	$0, -24(%rbp)
	je	.LBB14_15
# BB#14:                                # %if.then.24
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 296(%rcx)
	movq	$0, -24(%rbp)
.LBB14_15:                              # %if.end.26
	jmp	.LBB14_16
.LBB14_16:                              # %if.end.27
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 288(%rcx)
	movq	$0, -16(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rdi
	callq	g_free
.LBB14_17:                              # %if.end.29
	movq	-16(%rbp), %rdi
	callq	g_free
.LBB14_18:                              # %if.end.30
	xorl	%eax, %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_profile_view_query, .Lfunc_end14-gimp_profile_view_query
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB15_2
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
.LBB15_2:                               # %entry
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
.Lfunc_end15:
	.size	g_warning, .Lfunc_end15-g_warning
	.cfi_endproc

	.type	gimp_profile_chooser_dialog_get_type.g_define_type_id__volatile,@object # @gimp_profile_chooser_dialog_get_type.g_define_type_id__volatile
	.local	gimp_profile_chooser_dialog_get_type.g_define_type_id__volatile
	.comm	gimp_profile_chooser_dialog_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpProfileChooserDialog"
	.size	.L.str, 25

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_profile_chooser_dialog_new,@object # @__func__.gimp_profile_chooser_dialog_new
.L__func__.gimp_profile_chooser_dialog_new:
	.asciz	"gimp_profile_chooser_dialog_new"
	.size	.L__func__.gimp_profile_chooser_dialog_new, 32

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"title"
	.size	.L.str.4, 6

	.type	.L__func__.gimp_profile_chooser_dialog_get_desc,@object # @__func__.gimp_profile_chooser_dialog_get_desc
.L__func__.gimp_profile_chooser_dialog_get_desc:
	.asciz	"gimp_profile_chooser_dialog_get_desc"
	.size	.L__func__.gimp_profile_chooser_dialog_get_desc, 37

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_IS_PROFILE_CHOOSER_DIALOG (dialog)"
	.size	.L.str.5, 40

	.type	gimp_profile_chooser_dialog_parent_class,@object # @gimp_profile_chooser_dialog_parent_class
	.local	gimp_profile_chooser_dialog_parent_class
	.comm	gimp_profile_chooser_dialog_parent_class,8,8
	.type	GimpProfileChooserDialog_private_offset,@object # @GimpProfileChooserDialog_private_offset
	.local	GimpProfileChooserDialog_private_offset
	.comm	GimpProfileChooserDialog_private_offset,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-profile-chooser-dialog"
	.size	.L.str.6, 28

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gtk-cancel"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gtk-open"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"All files (*.*)"
	.size	.L.str.9, 16

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"*"
	.size	.L.str.10, 2

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"ICC color profile (*.icc, *.icm)"
	.size	.L.str.11, 33

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"*.[Ii][Cc][Cc]"
	.size	.L.str.12, 15

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"*.[Ii][Cc][Mm]"
	.size	.L.str.13, 15

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"update-preview"
	.size	.L.str.14, 15

	.type	gimp_profile_chooser_dialog_add_shortcut.folder,@object # @gimp_profile_chooser_dialog_add_shortcut.folder
	.section	.rodata,"a",@progbits
	.align	16
gimp_profile_chooser_dialog_add_shortcut.folder:
	.asciz	"/usr/share/color/icc"
	.size	gimp_profile_chooser_dialog_add_shortcut.folder, 21

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.zero	1
	.size	.L.str.15, 1

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.16, 54

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gimpprofilechooserdialog.c"
	.size	.L.str.17, 27

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"property"
	.size	.L.str.18, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
