	.text
	.file	"image-new-dialog.bc"
	.globl	image_new_dialog_new
	.align	16, 0x90
	.type	image_new_dialog_new,@function
image_new_dialog_new:                   # @image_new_dialog_new
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$360, %rsp              # imm = 0x168
.Ltmp3:
	.cfi_offset %rbx, -56
.Ltmp4:
	.cfi_offset %r12, -48
.Ltmp5:
	.cfi_offset %r13, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
	movq	%rdi, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -116(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.4
	movl	$1, -116(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.5
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.7
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.9
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.image_new_dialog_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_13
.LBB0_11:                               # %if.end.11
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movl	$48, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movabsq	$.L.str.2, %rsi
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-56(%rbp), %rdx
	callq	gimp_context_new
	movq	-64(%rbp), %rdx
	movq	%rax, 32(%rdx)
	callq	gimp_template_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movabsq	$.L.str.3, %rdi
	movq	-64(%rbp), %rdx
	movq	%rax, 40(%rdx)
	callq	gettext
	movabsq	$.L.str.4, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.5, %r9
	movabsq	$.L.str.6, %rdi
	movl	$1, %r10d
	movabsq	$.L.str.7, %r11
	movl	$4294967290, %ebx       # imm = 0xFFFFFFFA
	movabsq	$.L.str.8, %r14
	movl	$4294967291, %r15d      # imm = 0xFFFFFFFB
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$1, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-6, 24(%rsp)
	movq	%r14, 32(%rsp)
	movl	$-5, 40(%rsp)
	movq	$0, 48(%rsp)
	movb	$0, %al
	movl	%r15d, -132(%rbp)       # 4-byte Spill
	movl	%ebx, -136(%rbp)        # 4-byte Spill
	movl	%r10d, -140(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	-64(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_resizable
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rsi
	movabsq	$image_new_dialog_free, %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-168(%rbp), %rcx        # 8-byte Reload
	callq	g_object_set_data_full
	movabsq	$.L.str.10, %rsi
	movabsq	$image_new_dialog_response, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-64(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-176(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-64(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$4294967291, %edx       # imm = 0xFFFFFFFB
	movl	$4294967290, %ecx       # imm = 0xFFFFFFFA
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	movl	-228(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.11, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	movl	-244(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_container_combo_box_get_type
	movabsq	$.L.str.12, %rsi
	movabsq	$.L.str.13, %rcx
	movabsq	$.L.str.14, %r9
	movl	$16, %edx
	movabsq	$.L.str.15, %rdi
	xorl	%r8d, %r8d
	movabsq	$.L.str.16, %r11
	movabsq	$.L.str.17, %r14
	xorl	%r10d, %r10d
	movl	%r10d, %r12d
	movq	-56(%rbp), %r13
	movq	32(%r13), %r13
	movq	552(%r13), %r13
	movq	-64(%rbp), %r10
	movq	32(%r10), %r10
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -260(%rbp)        # 4-byte Spill
	movq	%r13, %rdx
	movl	%r8d, -264(%rbp)        # 4-byte Spill
	movq	%r10, %r8
	movl	$16, (%rsp)
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$0, 16(%rsp)
	movq	%r11, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movl	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movb	$0, %al
	movq	%r12, -272(%rbp)        # 8-byte Spill
	callq	g_object_new
	movq	-64(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-80(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ebx
	xorl	%r8d, %r8d
	movq	-64(%rbp), %rcx
	movq	16(%rcx), %rsi
	movq	%rax, %rdi
	movl	%ebx, %edx
	movl	%ebx, %ecx
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_show
	movq	-88(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movabsq	$.L.str.18, %rsi
	movabsq	$image_new_template_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	-64(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	xorl	%edx, %edx
	movq	-64(%rbp), %rcx
	movq	40(%rcx), %rdi
	movq	-56(%rbp), %rcx
	movq	32(%rcx), %rsi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_template_editor_new
	movq	-64(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-72(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-64(%rbp), %rcx
	movq	24(%rcx), %rsi
	movq	%rax, %rdi
	movl	%edx, -308(%rbp)        # 4-byte Spill
	movl	-308(%rbp), %ecx        # 4-byte Reload
	movl	-308(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gtk_widget_show
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gimp_template_editor_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_template_editor_get_size_se
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	gimp_size_entry_set_activates_default
	movq	-96(%rbp), %rdi
	callq	gimp_size_entry_grab_focus
	movq	-64(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_context_get_template
	movq	-64(%rbp), %rdx
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	image_new_template_changed
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB0_13:                               # %return
	movq	-48(%rbp), %rax
	addq	$360, %rsp              # imm = 0x168
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	image_new_dialog_new, .Lfunc_end0-image_new_dialog_new
	.cfi_endproc

	.align	16, 0x90
	.type	image_new_dialog_free,@function
image_new_dialog_free:                  # @image_new_dialog_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	callq	g_object_unref
# BB#1:                                 # %do.body
	movl	$48, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#2:                                 # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	image_new_dialog_free, .Lfunc_end1-image_new_dialog_free
	.cfi_endproc

	.align	16, 0x90
	.type	image_new_dialog_response,@function
image_new_dialog_response:              # @image_new_dialog_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-12(%rbp), %esi
	movl	%esi, %eax
	subl	$-5, %eax
	movl	%esi, -28(%rbp)         # 4-byte Spill
	movl	%eax, -32(%rbp)         # 4-byte Spill
	je	.LBB2_2
	jmp	.LBB2_8
.LBB2_8:                                # %entry
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jne	.LBB2_6
	jmp	.LBB2_1
.LBB2_1:                                # %sw.bb
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	32(%rcx), %rcx
	movq	32(%rcx), %rcx
	movq	296(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$80, %edx
	movl	%edx, %esi
	movq	-24(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_sync
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	gimp_context_set_template
	jmp	.LBB2_7
.LBB2_2:                                # %sw.bb.4
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gimp_template_get_initial_size
	movq	-24(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	32(%rdi), %rdi
	movq	32(%rdi), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpq	624(%rax), %rsi
	jbe	.LBB2_4
# BB#3:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	image_new_confirm_dialog
	jmp	.LBB2_5
.LBB2_4:                                # %if.else
	movq	-24(%rbp), %rdi
	callq	image_new_create_image
.LBB2_5:                                # %if.end
	jmp	.LBB2_7
.LBB2_6:                                # %sw.default
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_destroy
.LBB2_7:                                # %sw.epilog
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	image_new_dialog_response, .Lfunc_end2-image_new_dialog_response
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4572414629676717179     # double 0.0050000000000000001
	.text
	.align	16, 0x90
	.type	image_new_template_changed,@function
image_new_template_changed:             # @image_new_template_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	jmp	.LBB3_11
.LBB3_2:                                # %if.end
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_template_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_template_editor_get_resolution_chain
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_template_get_resolution_x
	movsd	%xmm0, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_template_get_resolution_y
	movsd	%xmm0, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_chain_button_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-56(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jbe	.LBB3_4
# BB#3:                                 # %cond.true
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-56(%rbp), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB3_5
.LBB3_4:                                # %cond.false
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-56(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
.LBB3_5:                                # %cond.end
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	seta	%al
	andb	$1, %al
	movzbl	%al, %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	gimp_chain_button_set_active
	movq	-16(%rbp), %rdi
	callq	gimp_template_get_comment
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB3_7
# BB#6:                                 # %lor.lhs.false
	movq	-64(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	jne	.LBB3_8
.LBB3_7:                                # %if.then.16
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gimp_template_get_comment
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -64(%rbp)
	jmp	.LBB3_9
.LBB3_8:                                # %if.else
	movq	$0, -64(%rbp)
.LBB3_9:                                # %if.end.20
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$80, %edx
	movl	%edx, %esi
	movq	-24(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movl	$65536, %edx            # imm = 0x10000
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_sync
	movl	$80, %edx
	movl	%edx, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	g_type_check_instance_cast
	movl	$80, %edx
	movl	%edx, %esi
	movq	-24(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_sync
	cmpq	$0, -64(%rbp)
	movl	%eax, -124(%rbp)        # 4-byte Spill
	je	.LBB3_11
# BB#10:                                # %if.then.30
	movabsq	$.L.str.27, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movb	$0, %al
	callq	g_object_set
	movq	-64(%rbp), %rdi
	callq	g_free
.LBB3_11:                               # %if.end.32
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	image_new_template_changed, .Lfunc_end3-image_new_template_changed
	.cfi_endproc

	.globl	image_new_dialog_set
	.align	16, 0x90
	.type	image_new_dialog_set,@function
image_new_dialog_set:                   # @image_new_dialog_set
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.image_new_dialog_set, %rsi
	movabsq	$.L.str.19, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_45
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB4_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB4_16
# BB#15:                                # %if.then.21
	movl	$0, -76(%rbp)
	jmp	.LBB4_21
.LBB4_16:                               # %if.else.22
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_19
# BB#17:                                # %land.lhs.true.25
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB4_19
# BB#18:                                # %if.then.29
	movl	$1, -76(%rbp)
	jmp	.LBB4_20
.LBB4_19:                               # %if.else.30
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB4_20:                               # %if.end.32
	jmp	.LBB4_21
.LBB4_21:                               # %if.end.33
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB4_23
.LBB4_22:                               # %if.then.36
	jmp	.LBB4_24
.LBB4_23:                               # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.image_new_dialog_set, %rsi
	movabsq	$.L.str.20, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_45
.LBB4_24:                               # %if.end.38
	jmp	.LBB4_25
.LBB4_25:                               # %do.end.39
	jmp	.LBB4_26
.LBB4_26:                               # %do.body.40
	cmpq	$0, -24(%rbp)
	je	.LBB4_35
# BB#27:                                # %lor.lhs.false.42
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_template_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB4_29
# BB#28:                                # %if.then.51
	movl	$0, -100(%rbp)
	jmp	.LBB4_34
.LBB4_29:                               # %if.else.52
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_32
# BB#30:                                # %land.lhs.true.55
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB4_32
# BB#31:                                # %if.then.59
	movl	$1, -100(%rbp)
	jmp	.LBB4_33
.LBB4_32:                               # %if.else.60
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB4_33:                               # %if.end.62
	jmp	.LBB4_34
.LBB4_34:                               # %if.end.63
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB4_36
.LBB4_35:                               # %if.then.66
	jmp	.LBB4_37
.LBB4_36:                               # %if.else.67
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.image_new_dialog_set, %rsi
	movabsq	$.L.str.21, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_45
.LBB4_37:                               # %if.end.68
	jmp	.LBB4_38
.LBB4_38:                               # %do.end.69
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -32(%rbp)
# BB#39:                                # %do.body.72
	cmpq	$0, -32(%rbp)
	je	.LBB4_41
# BB#40:                                # %if.then.74
	jmp	.LBB4_42
.LBB4_41:                               # %if.else.75
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.image_new_dialog_set, %rsi
	movabsq	$.L.str.22, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_45
.LBB4_42:                               # %if.end.76
	jmp	.LBB4_43
.LBB4_43:                               # %do.end.77
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_context_set_template
	cmpq	$0, -24(%rbp)
	jne	.LBB4_45
# BB#44:                                # %if.then.79
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_image_new_get_last_template
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	image_new_template_changed
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB4_45:                               # %if.end.83
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	image_new_dialog_set, .Lfunc_end4-image_new_dialog_set
	.cfi_endproc

	.align	16, 0x90
	.type	image_new_confirm_dialog,@function
image_new_confirm_dialog:               # @image_new_confirm_dialog
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
	pushq	%rbx
	subq	$168, %rsp
.Ltmp23:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	cmpq	$0, 8(%rdi)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	jmp	.LBB5_3
.LBB5_2:                                # %if.end
	movabsq	$.L.str.23, %rdi
	callq	gettext
	movabsq	$.L.str.24, %rsi
	movl	$2, %ecx
	movabsq	$gimp_standard_help_func, %r8
	xorl	%edx, %edx
	movl	%edx, %r9d
	movabsq	$.L.str.7, %rdi
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movabsq	$.L.str.8, %r10
	movl	$4294967291, %r11d      # imm = 0xFFFFFFFB
	movq	-16(%rbp), %rbx
	movq	(%rbx), %rbx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movq	%rbx, %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r10, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%r11d, -64(%rbp)        # 4-byte Spill
	callq	gimp_message_dialog_new
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movabsq	$.L.str.10, %rsi
	movabsq	$image_new_confirm_response, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %r10
	movq	-16(%rbp), %rbx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	%rbx, %rcx
	callq	g_signal_connect_data
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_template_get_initial_size
	movq	%rax, %rdi
	callq	g_format_size
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_message_dialog_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.25, %rdi
	movq	264(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-40(%rbp), %rdx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_message_box_set_primary_text
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	32(%rcx), %rcx
	movq	32(%rcx), %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	624(%rax), %rdi
	callq	g_format_size
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_message_dialog_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.26, %rdi
	movq	264(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-40(%rbp), %rdx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_message_box_set_text
	movq	-40(%rbp), %rdi
	callq	g_free
	xorl	%esi, %esi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdi
	callq	gtk_widget_set_sensitive
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
.LBB5_3:                                # %return
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	image_new_confirm_dialog, .Lfunc_end5-image_new_confirm_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	image_new_create_image,@function
image_new_create_image:                 # @image_new_create_image
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
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	callq	g_object_ref
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_destroy
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_get_user_context
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_new_from_template
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_new_set_last_template
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	image_new_create_image, .Lfunc_end6-image_new_create_image
	.cfi_endproc

	.align	16, 0x90
	.type	image_new_confirm_response,@function
image_new_confirm_response:             # @image_new_confirm_response
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
	movq	-24(%rbp), %rdx
	movq	$0, 8(%rdx)
	cmpl	$-5, -12(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	image_new_create_image
	jmp	.LBB7_3
.LBB7_2:                                # %if.else
	movl	$1, %esi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_set_sensitive
.LBB7_3:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	image_new_confirm_response, .Lfunc_end7-image_new_confirm_response
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Dialogs"
	.size	.L.str, 13

	.type	.L__func__.image_new_dialog_new,@object # @__func__.image_new_dialog_new
.L__func__.image_new_dialog_new:
	.asciz	"image_new_dialog_new"
	.size	.L__func__.image_new_dialog_new, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.1, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"image-new-dialog"
	.size	.L.str.2, 17

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Create a New Image"
	.size	.L.str.3, 19

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-image-new"
	.size	.L.str.4, 15

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-file-new"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-reset"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gtk-cancel"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gtk-ok"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-image-new-dialog"
	.size	.L.str.9, 22

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"response"
	.size	.L.str.10, 9

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"_Template:"
	.size	.L.str.11, 11

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"container"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"context"
	.size	.L.str.13, 8

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"view-size"
	.size	.L.str.14, 10

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"view-border-width"
	.size	.L.str.15, 18

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"ellipsize"
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"focus-on-click"
	.size	.L.str.17, 15

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"template-changed"
	.size	.L.str.18, 17

	.type	.L__func__.image_new_dialog_set,@object # @__func__.image_new_dialog_set
.L__func__.image_new_dialog_set:
	.asciz	"image_new_dialog_set"
	.size	.L__func__.image_new_dialog_set, 21

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"GTK_IS_WIDGET (widget)"
	.size	.L.str.19, 23

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"image == NULL || GIMP_IS_IMAGE (image)"
	.size	.L.str.20, 39

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"template == NULL || GIMP_IS_TEMPLATE (template)"
	.size	.L.str.21, 48

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"dialog != NULL"
	.size	.L.str.22, 15

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Confirm Image Size"
	.size	.L.str.23, 19

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimp-warning"
	.size	.L.str.24, 13

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"You are trying to create an image with a size of %s."
	.size	.L.str.25, 53

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"An image of the chosen size will use more memory than what is configured as \"Maximum Image Size\" in the Preferences dialog (currently %s)."
	.size	.L.str.26, 139

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"comment"
	.size	.L.str.27, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
