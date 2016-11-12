	.text
	.file	"gimpprogressdialog.bc"
	.globl	gimp_progress_dialog_get_type
	.align	16, 0x90
	.type	gimp_progress_dialog_get_type,@function
gimp_progress_dialog_get_type:          # @gimp_progress_dialog_get_type
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
	movq	gimp_progress_dialog_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_progress_dialog_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_dialog_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$984, %edx              # imm = 0x3D8
	movabsq	$gimp_progress_dialog_class_intern_init, %rdi
	movl	$272, %r8d              # imm = 0x110
	movabsq	$gimp_progress_dialog_init, %rcx
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
	callq	gimp_progress_interface_get_type
	movabsq	$gimp_progress_dialog_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_progress_dialog_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_progress_dialog_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_progress_dialog_get_type, .Lfunc_end0-gimp_progress_dialog_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_progress_dialog_class_intern_init,@function
gimp_progress_dialog_class_intern_init: # @gimp_progress_dialog_class_intern_init
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
	movq	%rax, gimp_progress_dialog_parent_class
	cmpl	$0, GimpProgressDialog_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpProgressDialog_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_progress_dialog_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_progress_dialog_class_intern_init, .Lfunc_end1-gimp_progress_dialog_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_progress_dialog_init,@function
gimp_progress_dialog_init:              # @gimp_progress_dialog_init
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -16(%rbp)
	callq	gimp_progress_box_new
	movq	-8(%rbp), %rsi
	movq	%rax, 264(%rsi)
	movq	-8(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rsi
	movq	264(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	264(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.10, %rsi
	movabsq	$gtk_widget_destroyed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	264(%rdi), %rdi
	movq	-8(%rbp), %r10
	addq	$264, %r10              # imm = 0x108
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-8(%rbp), %rcx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rsi
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movq	%rax, %rdi
	callq	gtk_dialog_add_button
	movq	-8(%rbp), %rcx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967290, %esi       # imm = 0xFFFFFFFA
	movq	%rax, %rdi
	callq	gtk_dialog_set_default_response
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$400, %esi              # imm = 0x190
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	callq	gtk_widget_set_size_request
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_progress_dialog_init, .Lfunc_end2-gimp_progress_dialog_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_progress_dialog_progress_iface_init,@function
gimp_progress_dialog_progress_iface_init: # @gimp_progress_dialog_progress_iface_init
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
	movabsq	$gimp_progress_dialog_progress_pulse, %rax
	movabsq	$gimp_progress_dialog_progress_get_value, %rcx
	movabsq	$gimp_progress_dialog_progress_set_value, %rdx
	movabsq	$gimp_progress_dialog_progress_set_text, %rsi
	movabsq	$gimp_progress_dialog_progress_is_active, %r8
	movabsq	$gimp_progress_dialog_progress_end, %r9
	movabsq	$gimp_progress_dialog_progress_start, %r10
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%r10, 16(%rdi)
	movq	-8(%rbp), %rdi
	movq	%r9, 24(%rdi)
	movq	-8(%rbp), %rdi
	movq	%r8, 32(%rdi)
	movq	-8(%rbp), %rdi
	movq	%rsi, 40(%rdi)
	movq	-8(%rbp), %rsi
	movq	%rdx, 48(%rsi)
	movq	-8(%rbp), %rdx
	movq	%rcx, 56(%rdx)
	movq	-8(%rbp), %rcx
	movq	%rax, 64(%rcx)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_progress_dialog_progress_iface_init, .Lfunc_end3-gimp_progress_dialog_progress_iface_init
	.cfi_endproc

	.globl	gimp_progress_dialog_new
	.align	16, 0x90
	.type	gimp_progress_dialog_new,@function
gimp_progress_dialog_new:               # @gimp_progress_dialog_new
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
	subq	$120, %rsp
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
	callq	gimp_progress_dialog_get_type
	movabsq	$.L.str.2, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.1, %rsi
	movabsq	$.L.str.3, %rcx
	movabsq	$.L.str.4, %r8
	movabsq	$.L.str.5, %r9
	movl	$1, %edx
	movabsq	$.L.str.6, %rdi
	movabsq	$.L.str.7, %r10
	xorl	%r11d, %r11d
	movabsq	$.L.str.8, %rbx
	movabsq	$.L.str.9, %r14
	xorl	%r15d, %r15d
	movl	%r15d, %r12d
	movq	-48(%rbp), %r13         # 8-byte Reload
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r13, %rdi
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movq	%rax, %rdx
	movl	$1, (%rsp)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%r10, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movl	$0, 48(%rsp)
	movq	%r14, 56(%rsp)
	movl	$1, 64(%rsp)
	movq	$0, 72(%rsp)
	movb	$0, %al
	movq	%r12, -72(%rbp)         # 8-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	callq	g_object_new
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_progress_dialog_new, .Lfunc_end4-gimp_progress_dialog_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_progress_dialog_class_init,@function
gimp_progress_dialog_class_init:        # @gimp_progress_dialog_class_init
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
	callq	gtk_dialog_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_progress_dialog_response, %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rsi, 904(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_progress_dialog_class_init, .Lfunc_end5-gimp_progress_dialog_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_progress_dialog_response,@function
gimp_progress_dialog_response:          # @gimp_progress_dialog_response
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_progress_dialog_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_progress_box_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$0, 132(%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_progress_cancel
.LBB6_2:                                # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_progress_dialog_response, .Lfunc_end6-gimp_progress_dialog_response
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_progress_dialog_progress_start,@function
gimp_progress_dialog_progress_start:    # @gimp_progress_dialog_progress_start
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_progress_dialog_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 264(%rax)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB7_5
.LBB7_2:                                # %if.end
	movq	-40(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_progress_start
	cmpq	$0, %rax
	je	.LBB7_4
# BB#3:                                 # %if.then.7
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967290, %esi       # imm = 0xFFFFFFFA
	movl	-28(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_dialog_set_response_sensitive
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB7_5
.LBB7_4:                                # %if.end.12
	movq	$0, -8(%rbp)
.LBB7_5:                                # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_progress_dialog_progress_start, .Lfunc_end7-gimp_progress_dialog_progress_start
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_progress_dialog_progress_end,@function
gimp_progress_dialog_progress_end:      # @gimp_progress_dialog_progress_end
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_progress_dialog_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 264(%rax)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	jmp	.LBB8_4
.LBB8_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_progress_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$0, 128(%rax)
	je	.LBB8_4
# BB#3:                                 # %if.then.6
	movq	-16(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_progress_end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967290, %esi       # imm = 0xFFFFFFFA
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gtk_dialog_set_response_sensitive
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_hide
.LBB8_4:                                # %if.end.14
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_progress_dialog_progress_end, .Lfunc_end8-gimp_progress_dialog_progress_end
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_progress_dialog_progress_is_active,@function
gimp_progress_dialog_progress_is_active: # @gimp_progress_dialog_progress_is_active
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_progress_dialog_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 264(%rax)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB9_3
.LBB9_2:                                # %if.end
	movq	-24(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_progress_is_active
	movl	%eax, -4(%rbp)
.LBB9_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_progress_dialog_progress_is_active, .Lfunc_end9-gimp_progress_dialog_progress_is_active
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_progress_dialog_progress_set_text,@function
gimp_progress_dialog_progress_set_text: # @gimp_progress_dialog_progress_set_text
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_progress_dialog_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 264(%rax)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	jmp	.LBB10_3
.LBB10_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_progress_set_text
.LBB10_3:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_progress_dialog_progress_set_text, .Lfunc_end10-gimp_progress_dialog_progress_set_text
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_progress_dialog_progress_set_value,@function
gimp_progress_dialog_progress_set_value: # @gimp_progress_dialog_progress_set_value
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_progress_dialog_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 264(%rax)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	jmp	.LBB11_3
.LBB11_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_progress_set_value
.LBB11_3:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_progress_dialog_progress_set_value, .Lfunc_end11-gimp_progress_dialog_progress_set_value
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_progress_dialog_progress_get_value,@function
gimp_progress_dialog_progress_get_value: # @gimp_progress_dialog_progress_get_value
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_progress_dialog_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 264(%rax)
	jne	.LBB12_2
# BB#1:                                 # %if.then
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB12_3
.LBB12_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_progress_get_value
	movsd	%xmm0, -8(%rbp)
.LBB12_3:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_progress_dialog_progress_get_value, .Lfunc_end12-gimp_progress_dialog_progress_get_value
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_progress_dialog_progress_pulse,@function
gimp_progress_dialog_progress_pulse:    # @gimp_progress_dialog_progress_pulse
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_progress_dialog_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 264(%rax)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	jmp	.LBB13_3
.LBB13_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_progress_pulse
.LBB13_3:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_progress_dialog_progress_pulse, .Lfunc_end13-gimp_progress_dialog_progress_pulse
	.cfi_endproc

	.type	gimp_progress_dialog_get_type.g_define_type_id__volatile,@object # @gimp_progress_dialog_get_type.g_define_type_id__volatile
	.local	gimp_progress_dialog_get_type.g_define_type_id__volatile
	.comm	gimp_progress_dialog_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpProgressDialog"
	.size	.L.str, 19

	.type	gimp_progress_dialog_get_type.g_implement_interface_info,@object # @gimp_progress_dialog_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_progress_dialog_get_type.g_implement_interface_info:
	.quad	gimp_progress_dialog_progress_iface_init
	.quad	0
	.quad	0
	.size	gimp_progress_dialog_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"title"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Progress"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"role"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"progress"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"skip-taskbar-hint"
	.size	.L.str.5, 18

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"skip-pager-hint"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"resizable"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"focus-on-map"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"window-position"
	.size	.L.str.9, 16

	.type	gimp_progress_dialog_parent_class,@object # @gimp_progress_dialog_parent_class
	.local	gimp_progress_dialog_parent_class
	.comm	gimp_progress_dialog_parent_class,8,8
	.type	GimpProgressDialog_private_offset,@object # @GimpProgressDialog_private_offset
	.local	GimpProgressDialog_private_offset
	.comm	GimpProgressDialog_private_offset,4,4
	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"destroy"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gtk-cancel"
	.size	.L.str.11, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
