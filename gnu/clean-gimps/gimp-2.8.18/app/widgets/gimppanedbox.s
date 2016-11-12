	.text
	.file	"gimppanedbox.bc"
	.globl	gimp_paned_box_get_type
	.align	16, 0x90
	.type	gimp_paned_box_get_type,@function
gimp_paned_box_get_type:                # @gimp_paned_box_get_type
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
	movq	gimp_paned_box_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_paned_box_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_paned_box_class_intern_init, %rdi
	movl	$136, %r8d
	movabsq	$gimp_paned_box_init, %rcx
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
	movabsq	$gimp_paned_box_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_paned_box_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_paned_box_get_type, .Lfunc_end0-gimp_paned_box_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paned_box_class_intern_init,@function
gimp_paned_box_class_intern_init:       # @gimp_paned_box_class_intern_init
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
	movq	%rax, gimp_paned_box_parent_class
	cmpl	$0, GimpPanedBox_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpPanedBox_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_paned_box_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_paned_box_class_intern_init, .Lfunc_end1-gimp_paned_box_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paned_box_init,@function
gimp_paned_box_init:                    # @gimp_paned_box_init
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_paned_box_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movabsq	$.L.str.10, %rdi
	movq	-8(%rbp), %rsi
	movq	%rax, 128(%rsi)
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	-8(%rbp), %rsi
	movq	128(%rsi), %rsi
	movq	%rax, 8(%rsi)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_misc_set_padding
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_line_wrap
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_justify
	movl	$1, %esi
	movl	$6, %edx
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_set_size_request
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %esi
	movl	$2, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_label_set_attributes
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rsi
	movq	128(%rsi), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movabsq	$dialog_target_table, %rdx
	movl	$1, %ecx
	movl	$4, %r8d
	movq	%rax, %rdi
	callq	gtk_drag_dest_set
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_paned_box_init, .Lfunc_end2-gimp_paned_box_init
	.cfi_endproc

	.globl	gimp_paned_box_new
	.align	16, 0x90
	.type	gimp_paned_box_new,@function
gimp_paned_box_new:                     # @gimp_paned_box_new
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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	callq	gimp_paned_box_get_type
	movabsq	$.L.str.1, %rsi
	movabsq	$.L.str.2, %rcx
	xorl	%r8d, %r8d
	movabsq	$.L.str.3, %r9
	xorl	%edx, %edx
	movl	%edx, %r10d
	movl	-4(%rbp), %edx
	movl	-12(%rbp), %edi
	movl	%edi, -16(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	-16(%rbp), %r11d        # 4-byte Reload
	movl	%r11d, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movq	%r10, -24(%rbp)         # 8-byte Spill
	callq	g_object_new
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_paned_box_new, .Lfunc_end3-gimp_paned_box_new
	.cfi_endproc

	.globl	gimp_paned_box_set_dropped_cb
	.align	16, 0x90
	.type	gimp_paned_box_set_dropped_cb,@function
gimp_paned_box_set_dropped_cb:          # @gimp_paned_box_set_dropped_cb
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_paned_box_get_type
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
	movabsq	$.L.str.4, %rdi
	movabsq	$.L__func__.gimp_paned_box_set_dropped_cb, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	%rax, 32(%rcx)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	%rax, 40(%rcx)
.LBB4_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_paned_box_set_dropped_cb, .Lfunc_end4-gimp_paned_box_set_dropped_cb
	.cfi_endproc

	.globl	gimp_paned_box_add_widget
	.align	16, 0x90
	.type	gimp_paned_box_add_widget,@function
gimp_paned_box_add_widget:              # @gimp_paned_box_add_widget
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
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$0, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_paned_box_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.4, %rdi
	movabsq	$.L__func__.gimp_paned_box_add_widget, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_53
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB5_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB5_20
.LBB5_15:                               # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB5_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB5_19
.LBB5_18:                               # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB5_19:                               # %if.end.31
	jmp	.LBB5_20
.LBB5_20:                               # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB5_22
# BB#21:                                # %if.then.35
	jmp	.LBB5_23
.LBB5_22:                               # %if.else.36
	movabsq	$.L.str.4, %rdi
	movabsq	$.L__func__.gimp_paned_box_add_widget, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_53
.LBB5_23:                               # %if.end.37
	jmp	.LBB5_24
.LBB5_24:                               # %do.end.38
	jmp	.LBB5_25
.LBB5_25:                               # %do.body.39
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB5_27
# BB#26:                                # %if.then.41
	movl	$4, %edi
	movabsq	$.L__func__.gimp_paned_box_add_widget, %rsi
	movl	$521, %edx              # imm = 0x209
	movabsq	$.L.str.7, %rcx
	movq	-16(%rbp), %r8
	movq	-8(%rbp), %r9
	movb	$0, %al
	callq	gimp_log
.LBB5_27:                               # %if.end.42
	jmp	.LBB5_28
.LBB5_28:                               # %do.end.43
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	(%rax), %rdi
	callq	g_list_length
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB5_30
# BB#29:                                # %lor.lhs.false
	cmpl	$0, -20(%rbp)
	jge	.LBB5_31
.LBB5_30:                               # %if.then.47
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB5_31:                               # %if.end.48
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %edx
	movq	%rax, %rsi
	callq	g_list_insert
	movq	-8(%rbp), %rsi
	movq	128(%rsi), %rsi
	movq	%rax, (%rsi)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	gimp_paned_box_set_widget_drag_handler
	cmpl	$0, -24(%rbp)
	jne	.LBB5_33
# BB#32:                                # %if.then.55
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_hide
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	jmp	.LBB5_53
.LBB5_33:                               # %if.else.59
	cmpl	$0, -20(%rbp)
	jne	.LBB5_35
# BB#34:                                # %if.then.65
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	(%rax), %rdi
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, %esi
	callq	g_list_nth_data
	movq	%rax, -80(%rbp)
	jmp	.LBB5_36
.LBB5_35:                               # %if.else.69
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	(%rax), %rdi
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, %esi
	callq	g_list_nth_data
	movq	%rax, -80(%rbp)
.LBB5_36:                               # %if.end.73
	movq	-80(%rbp), %rdi
	callq	gtk_widget_get_parent
	movq	%rax, -88(%rbp)
	cmpl	$1, -24(%rbp)
	jle	.LBB5_39
# BB#37:                                # %land.lhs.true.76
	cmpl	$0, -20(%rbp)
	jle	.LBB5_39
# BB#38:                                # %if.then.78
	movq	-88(%rbp), %rdi
	callq	gtk_widget_get_parent
	movq	%rax, -112(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB5_39:                               # %if.end.81
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-88(%rbp), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_remove
	movq	-8(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_orientable_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_orientable_get_orientation
	movl	%eax, -100(%rbp)
	movl	-100(%rbp), %edi
	callq	gtk_paned_new
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gtk_paned_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB5_41
# BB#40:                                # %if.then.97
	movl	$0, -132(%rbp)
	jmp	.LBB5_46
.LBB5_41:                               # %if.else.98
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_44
# BB#42:                                # %land.lhs.true.101
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB5_44
# BB#43:                                # %if.then.105
	movl	$1, -132(%rbp)
	jmp	.LBB5_45
.LBB5_44:                               # %if.else.106
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB5_45:                               # %if.end.108
	jmp	.LBB5_46
.LBB5_46:                               # %if.end.109
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB5_48
# BB#47:                                # %if.then.112
	movq	-88(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_paned_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_paned_pack1
	jmp	.LBB5_49
.LBB5_48:                               # %if.else.115
	movq	-88(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
.LBB5_49:                               # %if.end.118
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	cmpl	$0, -20(%rbp)
	jne	.LBB5_51
# BB#50:                                # %if.then.120
	movq	-96(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_paned_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_paned_pack1
	movq	-96(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_paned_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_paned_pack2
	jmp	.LBB5_52
.LBB5_51:                               # %if.else.125
	movq	-96(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_paned_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_paned_pack1
	movq	-96(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_paned_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_paned_pack2
.LBB5_52:                               # %if.end.130
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB5_53:                               # %if.end.131
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_paned_box_add_widget, .Lfunc_end5-gimp_paned_box_add_widget
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paned_box_set_widget_drag_handler,@function
gimp_paned_box_set_widget_drag_handler: # @gimp_paned_box_set_widget_drag_handler
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	callq	gimp_dockbook_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB6_7
.LBB6_2:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_5
# BB#3:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB6_5
# BB#4:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB6_6
.LBB6_5:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB6_6:                                # %if.end
	jmp	.LBB6_7
.LBB6_7:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB6_9
# BB#8:                                 # %if.then.8
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_dockbook_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_dockbook_set_drag_handler
.LBB6_9:                                # %if.end.11
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_dock_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB6_11
# BB#10:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB6_16
.LBB6_11:                               # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_14
# BB#12:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB6_14
# BB#13:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB6_15
.LBB6_14:                               # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB6_15:                               # %if.end.31
	jmp	.LBB6_16
.LBB6_16:                               # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB6_18
# BB#17:                                # %if.then.35
	movq	$0, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dock_get_vbox
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_paned_box_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_paned_box_set_drag_handler
.LBB6_18:                               # %if.end.42
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_toolbox_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB6_20
# BB#19:                                # %if.then.51
	movl	$0, -92(%rbp)
	jmp	.LBB6_25
.LBB6_20:                               # %if.else.52
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_23
# BB#21:                                # %land.lhs.true.55
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB6_23
# BB#22:                                # %if.then.59
	movl	$1, -92(%rbp)
	jmp	.LBB6_24
.LBB6_23:                               # %if.else.60
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB6_24:                               # %if.end.62
	jmp	.LBB6_25
.LBB6_25:                               # %if.end.63
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB6_27
# BB#26:                                # %if.then.66
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_toolbox_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_toolbox_set_drag_handler
.LBB6_27:                               # %if.end.70
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_paned_box_set_widget_drag_handler, .Lfunc_end6-gimp_paned_box_set_widget_drag_handler
	.cfi_endproc

	.globl	gimp_paned_box_remove_widget
	.align	16, 0x90
	.type	gimp_paned_box_remove_widget,@function
gimp_paned_box_remove_widget:           # @gimp_paned_box_remove_widget
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
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_paned_box_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.4, %rdi
	movabsq	$.L__func__.gimp_paned_box_remove_widget, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_46
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB7_15
# BB#14:                                # %if.then.20
	movl	$0, -92(%rbp)
	jmp	.LBB7_20
.LBB7_15:                               # %if.else.21
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_18
# BB#16:                                # %land.lhs.true.24
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB7_18
# BB#17:                                # %if.then.28
	movl	$1, -92(%rbp)
	jmp	.LBB7_19
.LBB7_18:                               # %if.else.29
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB7_19:                               # %if.end.31
	jmp	.LBB7_20
.LBB7_20:                               # %if.end.32
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB7_22
# BB#21:                                # %if.then.35
	jmp	.LBB7_23
.LBB7_22:                               # %if.else.36
	movabsq	$.L.str.4, %rdi
	movabsq	$.L__func__.gimp_paned_box_remove_widget, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_46
.LBB7_23:                               # %if.end.37
	jmp	.LBB7_24
.LBB7_24:                               # %do.end.38
	jmp	.LBB7_25
.LBB7_25:                               # %do.body.39
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB7_27
# BB#26:                                # %if.then.41
	movl	$4, %edi
	movabsq	$.L__func__.gimp_paned_box_remove_widget, %rsi
	movl	$633, %edx              # imm = 0x279
	movabsq	$.L.str.8, %rcx
	movq	-16(%rbp), %r8
	movq	-8(%rbp), %r9
	movb	$0, %al
	callq	gimp_log
.LBB7_27:                               # %if.end.42
	jmp	.LBB7_28
.LBB7_28:                               # %do.end.43
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	(%rax), %rdi
	callq	g_list_length
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	128(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_list_index
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_list_remove
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rdi
	callq	gimp_paned_box_set_widget_drag_handler
	cmpl	$1, -20(%rbp)
	jne	.LBB7_32
# BB#29:                                # %if.then.54
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_parent
	cmpq	$0, %rax
	je	.LBB7_31
# BB#30:                                # %if.then.57
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_remove
.LBB7_31:                               # %if.end.60
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_show
	jmp	.LBB7_46
.LBB7_32:                               # %if.else.62
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-16(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_parent
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_widget_get_parent
	movq	%rax, -48(%rbp)
	cmpl	$0, -24(%rbp)
	jne	.LBB7_34
# BB#33:                                # %if.then.69
	movq	-40(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_paned_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_paned_get_child2
	movq	%rax, -32(%rbp)
	jmp	.LBB7_35
.LBB7_34:                               # %if.else.73
	movq	-40(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_paned_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_paned_get_child1
	movq	%rax, -32(%rbp)
.LBB7_35:                               # %if.end.77
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-40(%rbp), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_remove
	movq	-40(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_container_remove
	movq	-48(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_remove
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gtk_paned_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB7_37
# BB#36:                                # %if.then.95
	movl	$0, -116(%rbp)
	jmp	.LBB7_42
.LBB7_37:                               # %if.else.96
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_40
# BB#38:                                # %land.lhs.true.99
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB7_40
# BB#39:                                # %if.then.103
	movl	$1, -116(%rbp)
	jmp	.LBB7_41
.LBB7_40:                               # %if.else.104
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB7_41:                               # %if.end.106
	jmp	.LBB7_42
.LBB7_42:                               # %if.end.107
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB7_44
# BB#43:                                # %if.then.110
	movq	-48(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_paned_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_paned_pack1
	jmp	.LBB7_45
.LBB7_44:                               # %if.else.113
	movq	-8(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
.LBB7_45:                               # %if.end.116
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB7_46:                               # %if.end.117
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_paned_box_remove_widget, .Lfunc_end7-gimp_paned_box_remove_widget
	.cfi_endproc

	.globl	gimp_paned_box_will_handle_drag
	.align	16, 0x90
	.type	gimp_paned_box_will_handle_drag,@function
gimp_paned_box_will_handle_drag:        # @gimp_paned_box_will_handle_drag
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
	pushq	%rbx
	subq	$152, %rsp
.Ltmp27:
	.cfi_offset %rbx, -24
	xorl	%eax, %eax
	movl	$16, %r10d
	movl	%r10d, %r11d
	leaq	-80(%rbp), %rbx
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	movq	%rbx, %rdi
	movl	%eax, %esi
	movq	%r11, %rdx
	callq	memset
	movl	$0, -84(%rbp)
	movl	$0, -88(%rbp)
	movl	$0, -92(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB8_10
# BB#2:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_paned_box_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB8_4
# BB#3:                                 # %if.then
	movl	$0, -116(%rbp)
	jmp	.LBB8_9
.LBB8_4:                                # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_7
# BB#5:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB8_7
# BB#6:                                 # %if.then.4
	movl	$1, -116(%rbp)
	jmp	.LBB8_8
.LBB8_7:                                # %if.else.5
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB8_8:                                # %if.end
	jmp	.LBB8_9
.LBB8_9:                                # %if.end.7
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB8_11
.LBB8_10:                               # %if.then.9
	jmp	.LBB8_12
.LBB8_11:                               # %if.else.10
	movabsq	$.L.str.4, %rdi
	movabsq	$.L__func__.gimp_paned_box_will_handle_drag, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -12(%rbp)
	jmp	.LBB8_27
.LBB8_12:                               # %if.end.11
	jmp	.LBB8_13
.LBB8_13:                               # %do.end
	cmpq	$0, -24(%rbp)
	jne	.LBB8_15
# BB#14:                                # %if.then.13
	movl	$0, -12(%rbp)
	jmp	.LBB8_27
.LBB8_15:                               # %if.end.14
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	movq	48(%rax), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %r8d
	movl	-52(%rbp), %r9d
	callq	gimp_paned_box_will_handle_drag
	cmpl	$0, %eax
	je	.LBB8_17
# BB#16:                                # %if.then.17
	movl	$1, -12(%rbp)
	jmp	.LBB8_27
.LBB8_17:                               # %if.end.18
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %r8
	leaq	-60(%rbp), %r9
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %ecx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_widget_translate_coordinates
	cmpl	$0, %eax
	jne	.LBB8_19
# BB#18:                                # %if.then.23
	movl	$0, -12(%rbp)
	jmp	.LBB8_27
.LBB8_19:                               # %if.end.24
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_widget_get_allocation
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_orientable_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_orientable_get_orientation
	movl	%eax, -84(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_paned_box_get_drop_area_size
	movl	%eax, -92(%rbp)
	cmpl	$0, -84(%rbp)
	jne	.LBB8_23
# BB#20:                                # %if.then.32
	movb	$1, %al
	movl	-56(%rbp), %ecx
	cmpl	-92(%rbp), %ecx
	movb	%al, -153(%rbp)         # 1-byte Spill
	jl	.LBB8_22
# BB#21:                                # %lor.rhs
	movl	-56(%rbp), %eax
	movl	-72(%rbp), %ecx
	subl	-92(%rbp), %ecx
	cmpl	%ecx, %eax
	setg	%dl
	movb	%dl, -153(%rbp)         # 1-byte Spill
.LBB8_22:                               # %lor.end
	movb	-153(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -88(%rbp)
	jmp	.LBB8_26
.LBB8_23:                               # %if.else.35
	movb	$1, %al
	movl	-60(%rbp), %ecx
	cmpl	-92(%rbp), %ecx
	movb	%al, -154(%rbp)         # 1-byte Spill
	jl	.LBB8_25
# BB#24:                                # %lor.rhs.37
	movl	-60(%rbp), %eax
	movl	-68(%rbp), %ecx
	subl	-92(%rbp), %ecx
	cmpl	%ecx, %eax
	setg	%dl
	movb	%dl, -154(%rbp)         # 1-byte Spill
.LBB8_25:                               # %lor.end.40
	movb	-154(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -88(%rbp)
.LBB8_26:                               # %if.end.42
	movl	-88(%rbp), %eax
	movl	%eax, -12(%rbp)
.LBB8_27:                               # %return
	movl	-12(%rbp), %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_paned_box_will_handle_drag, .Lfunc_end8-gimp_paned_box_will_handle_drag
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paned_box_get_drop_area_size,@function
gimp_paned_box_get_drop_area_size:      # @gimp_paned_box_get_drop_area_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	128(%rdi), %rdi
	cmpq	$0, (%rdi)
	jne	.LBB9_7
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_widget_get_allocation
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_orientable_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_orientable_get_orientation
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then.5
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB9_6
.LBB9_3:                                # %if.else
	cmpl	$1, -36(%rbp)
	jne	.LBB9_5
# BB#4:                                 # %if.then.7
	movl	-20(%rbp), %eax
	movl	%eax, -12(%rbp)
.LBB9_5:                                # %if.end
	jmp	.LBB9_6
.LBB9_6:                                # %if.end.8
	jmp	.LBB9_7
.LBB9_7:                                # %if.end.9
	cmpl	$6, -12(%rbp)
	jle	.LBB9_9
# BB#8:                                 # %cond.true
	movl	-12(%rbp), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB9_10
.LBB9_9:                                # %cond.false
	movl	$6, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB9_10
.LBB9_10:                               # %cond.end
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_paned_box_get_drop_area_size, .Lfunc_end9-gimp_paned_box_get_drop_area_size
	.cfi_endproc

	.globl	gimp_paned_box_set_drag_handler
	.align	16, 0x90
	.type	gimp_paned_box_set_drag_handler,@function
gimp_paned_box_set_drag_handler:        # @gimp_paned_box_set_drag_handler
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_paned_box_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.4, %rdi
	movabsq	$.L__func__.gimp_paned_box_set_drag_handler, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_13
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	%rax, 48(%rcx)
.LBB10_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_paned_box_set_drag_handler, .Lfunc_end10-gimp_paned_box_set_drag_handler
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paned_box_class_init,@function
gimp_paned_box_class_init:              # @gimp_paned_box_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
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
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movl	$56, %ecx
	movl	%ecx, %esi
	movabsq	$gimp_paned_box_unrealize, %rdi
	movabsq	$gimp_paned_box_realize, %rdx
	movabsq	$gimp_paned_box_drag_drop, %r8
	movabsq	$gimp_paned_box_drag_motion, %r9
	movabsq	$gimp_paned_box_drag_leave, %r10
	movabsq	$gimp_paned_box_dispose, %r11
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%r11, 40(%rax)
	movq	-24(%rbp), %rax
	movq	%r10, 600(%rax)
	movq	-24(%rbp), %rax
	movq	%r9, 608(%rax)
	movq	-24(%rbp), %rax
	movq	%r8, 616(%rax)
	movq	-24(%rbp), %rax
	movq	%rdx, 224(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 232(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_paned_box_class_init, .Lfunc_end11-gimp_paned_box_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paned_box_dispose,@function
gimp_paned_box_dispose:                 # @gimp_paned_box_dispose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_paned_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
.LBB12_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB12_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_paned_box_remove_widget
	movq	-24(%rbp), %rdi
	callq	gtk_widget_destroy
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	jmp	.LBB12_1
.LBB12_3:                               # %while.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_paned_box_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_paned_box_dispose, .Lfunc_end12-gimp_paned_box_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paned_box_drag_leave,@function
gimp_paned_box_drag_leave:              # @gimp_paned_box_drag_leave
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_paned_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_paned_box_hide_drop_indicator
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_highlight_widget
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_paned_box_drag_leave, .Lfunc_end13-gimp_paned_box_drag_leave
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paned_box_drag_motion,@function
gimp_paned_box_drag_motion:             # @gimp_paned_box_drag_motion
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gimp_paned_box_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$16, %ecx
	movl	%ecx, %edx
	leaq	-88(%rbp), %rdi
	movq	%rax, -48(%rbp)
	movl	$-2147483648, -52(%rbp) # imm = 0xFFFFFFFF80000000
	movl	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -68(%rbp)
	callq	memset
	movl	$0, -92(%rbp)
	movl	$0, -96(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_paned_box_get_drop_area_size
	movl	%eax, -100(%rbp)
	movq	-48(%rbp), %rdx
	movq	128(%rdx), %rdx
	movq	48(%rdx), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	movl	-36(%rbp), %r9d
	callq	gimp_paned_box_will_handle_drag
	cmpl	$0, %eax
	je	.LBB14_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	movl	-36(%rbp), %edx
	callq	gdk_drag_status
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_highlight_widget
	movl	$0, -4(%rbp)
	jmp	.LBB14_23
.LBB14_2:                               # %if.end
	leaq	-88(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movq	-48(%rbp), %rsi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gtk_orientable_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_orientable_get_orientation
	movl	%eax, -92(%rbp)
	cmpl	$0, -92(%rbp)
	jne	.LBB14_11
# BB#3:                                 # %if.then.7
	movl	$0, -60(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, -68(%rbp)
	movq	-48(%rbp), %rcx
	movq	128(%rcx), %rcx
	cmpq	$0, (%rcx)
	jne	.LBB14_5
# BB#4:                                 # %if.then.10
	movl	-80(%rbp), %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB14_6
.LBB14_5:                               # %if.else
	movl	-100(%rbp), %eax
	movl	%eax, -64(%rbp)
.LBB14_6:                               # %if.end.11
	movl	-28(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB14_8
# BB#7:                                 # %if.then.13
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
.LBB14_8:                               # %if.end.14
	movl	-28(%rbp), %eax
	movl	-80(%rbp), %ecx
	subl	-100(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB14_10
# BB#9:                                 # %if.then.17
	movl	$-1, -52(%rbp)
	movl	-80(%rbp), %eax
	subl	-100(%rbp), %eax
	movl	%eax, -56(%rbp)
.LBB14_10:                              # %if.end.20
	jmp	.LBB14_19
.LBB14_11:                              # %if.else.21
	movl	$0, -56(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -64(%rbp)
	movq	-48(%rbp), %rcx
	movq	128(%rcx), %rcx
	cmpq	$0, (%rcx)
	jne	.LBB14_13
# BB#12:                                # %if.then.26
	movl	-76(%rbp), %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB14_14
.LBB14_13:                              # %if.else.28
	movl	-100(%rbp), %eax
	movl	%eax, -68(%rbp)
.LBB14_14:                              # %if.end.29
	movl	-32(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB14_16
# BB#15:                                # %if.then.31
	movl	$0, -52(%rbp)
	movl	$0, -60(%rbp)
.LBB14_16:                              # %if.end.32
	movl	-32(%rbp), %eax
	movl	-76(%rbp), %ecx
	subl	-100(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB14_18
# BB#17:                                # %if.then.36
	movl	$-1, -52(%rbp)
	movl	-76(%rbp), %eax
	subl	-100(%rbp), %eax
	movl	%eax, -60(%rbp)
.LBB14_18:                              # %if.end.39
	jmp	.LBB14_19
.LBB14_19:                              # %if.end.40
	cmpl	$-2147483648, -52(%rbp) # imm = 0xFFFFFFFF80000000
	setne	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB14_21
# BB#20:                                # %if.then.43
	movq	-48(%rbp), %rdi
	movl	-88(%rbp), %eax
	addl	-56(%rbp), %eax
	movl	-84(%rbp), %ecx
	addl	-60(%rbp), %ecx
	movl	-64(%rbp), %edx
	movl	-68(%rbp), %r8d
	movl	%eax, %esi
	movl	%edx, -124(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-124(%rbp), %ecx        # 4-byte Reload
	callq	gimp_paned_box_position_drop_indicator
	jmp	.LBB14_22
.LBB14_21:                              # %if.else.47
	movq	-48(%rbp), %rdi
	callq	gimp_paned_box_hide_drop_indicator
.LBB14_22:                              # %if.end.48
	xorl	%eax, %eax
	movl	$4, %ecx
	movl	-52(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	128(%rsi), %rsi
	movl	%edx, 24(%rsi)
	movq	-24(%rbp), %rdi
	cmpl	$0, -96(%rbp)
	cmovnel	%ecx, %eax
	movl	-36(%rbp), %edx
	movl	%eax, %esi
	callq	gdk_drag_status
	movq	-16(%rbp), %rdi
	movl	-96(%rbp), %esi
	callq	gimp_highlight_widget
	movl	$1, -4(%rbp)
.LBB14_23:                              # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_paned_box_drag_motion, .Lfunc_end14-gimp_paned_box_drag_motion
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paned_box_drag_drop,@function
gimp_paned_box_drag_drop:               # @gimp_paned_box_drag_drop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_paned_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	128(%rax), %rax
	movq	48(%rax), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	movl	-36(%rbp), %r9d
	callq	gimp_paned_box_will_handle_drag
	cmpl	$0, %eax
	je	.LBB15_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB15_7
.LBB15_2:                               # %if.end
	movq	-48(%rbp), %rax
	movq	128(%rax), %rax
	cmpq	$0, 32(%rax)
	je	.LBB15_6
# BB#3:                                 # %if.then.5
	movq	-24(%rbp), %rdi
	callq	gtk_drag_get_source_widget
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB15_5
# BB#4:                                 # %if.then.8
	movq	-48(%rbp), %rax
	movq	128(%rax), %rax
	movq	32(%rax), %rax
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	128(%rcx), %rcx
	movl	24(%rcx), %esi
	movq	-48(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	40(%rcx), %rdx
	callq	*%rax
	movl	%eax, -52(%rbp)
.LBB15_5:                               # %if.end.14
	jmp	.LBB15_6
.LBB15_6:                               # %if.end.15
	movl	$1, %edx
	movq	-24(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-36(%rbp), %ecx
	callq	gtk_drag_finish
	movl	$1, -4(%rbp)
.LBB15_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_paned_box_drag_drop, .Lfunc_end15-gimp_paned_box_drag_drop
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paned_box_realize,@function
gimp_paned_box_realize:                 # @gimp_paned_box_realize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	gimp_paned_box_parent_class, %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	224(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_paned_box_realize, .Lfunc_end16-gimp_paned_box_realize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paned_box_unrealize,@function
gimp_paned_box_unrealize:               # @gimp_paned_box_unrealize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_paned_box_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	cmpq	$0, 16(%rax)
	je	.LBB17_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	16(%rcx), %rdi
	callq	gdk_window_set_user_data
	movq	-16(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	16(%rcx), %rdi
	callq	gdk_window_destroy
	movq	-16(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	$0, 16(%rcx)
.LBB17_2:                               # %if.end
	movq	gimp_paned_box_parent_class, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	232(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_paned_box_unrealize, .Lfunc_end17-gimp_paned_box_unrealize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paned_box_hide_drop_indicator,@function
gimp_paned_box_hide_drop_indicator:     # @gimp_paned_box_hide_drop_indicator
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	128(%rdi), %rdi
	cmpq	$0, 16(%rdi)
	jne	.LBB18_2
# BB#1:                                 # %if.then
	jmp	.LBB18_3
.LBB18_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	16(%rax), %rdi
	callq	gdk_window_hide
.LBB18_3:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_paned_box_hide_drop_indicator, .Lfunc_end18-gimp_paned_box_hide_drop_indicator
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paned_box_position_drop_indicator,@function
gimp_paned_box_position_drop_indicator: # @gimp_paned_box_position_drop_indicator
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp60:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_is_drawable
	cmpl	$0, %eax
	jne	.LBB19_2
# BB#1:                                 # %if.then
	jmp	.LBB19_6
.LBB19_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB19_4
# BB#3:                                 # %if.then.4
	movq	-32(%rbp), %rdi
	callq	gtk_widget_get_style
	leaq	-56(%rbp), %rsi
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movl	-12(%rbp), %ecx
	movl	%ecx, -132(%rbp)
	movl	-16(%rbp), %ecx
	movl	%ecx, -128(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, -124(%rbp)
	movl	-24(%rbp), %ecx
	movl	%ecx, -120(%rbp)
	movl	$2, -96(%rbp)
	movl	$0, -116(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_get_events
	movl	%eax, -136(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_get_window
	leaq	-144(%rbp), %rsi
	movl	$12, %edx
	movq	%rax, %rdi
	callq	gdk_window_new
	movq	-8(%rbp), %rsi
	movq	128(%rsi), %rsi
	movq	%rax, 16(%rsi)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	16(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	gdk_window_set_user_data
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	16(%rax), %rdi
	movq	-40(%rbp), %rax
	addq	$84, %rax
	addq	$36, %rax
	movq	%rax, %rsi
	callq	gdk_window_set_background
	jmp	.LBB19_5
.LBB19_4:                               # %if.else
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	16(%rax), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	callq	gdk_window_move_resize
.LBB19_5:                               # %if.end.21
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	16(%rax), %rdi
	callq	gdk_window_show
.LBB19_6:                               # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_paned_box_position_drop_indicator, .Lfunc_end19-gimp_paned_box_position_drop_indicator
	.cfi_endproc

	.type	gimp_paned_box_get_type.g_define_type_id__volatile,@object # @gimp_paned_box_get_type.g_define_type_id__volatile
	.local	gimp_paned_box_get_type.g_define_type_id__volatile
	.comm	gimp_paned_box_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpPanedBox"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"homogeneous"
	.size	.L.str.1, 12

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"spacing"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"orientation"
	.size	.L.str.3, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Gimp-Widgets"
	.size	.L.str.4, 13

	.type	.L__func__.gimp_paned_box_set_dropped_cb,@object # @__func__.gimp_paned_box_set_dropped_cb
.L__func__.gimp_paned_box_set_dropped_cb:
	.asciz	"gimp_paned_box_set_dropped_cb"
	.size	.L__func__.gimp_paned_box_set_dropped_cb, 30

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_IS_PANED_BOX (paned_box)"
	.size	.L.str.5, 30

	.type	.L__func__.gimp_paned_box_add_widget,@object # @__func__.gimp_paned_box_add_widget
.L__func__.gimp_paned_box_add_widget:
	.asciz	"gimp_paned_box_add_widget"
	.size	.L__func__.gimp_paned_box_add_widget, 26

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GTK_IS_WIDGET (widget)"
	.size	.L.str.6, 23

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Adding GtkWidget %p to GimpPanedBox %p"
	.size	.L.str.7, 39

	.type	.L__func__.gimp_paned_box_remove_widget,@object # @__func__.gimp_paned_box_remove_widget
.L__func__.gimp_paned_box_remove_widget:
	.asciz	"gimp_paned_box_remove_widget"
	.size	.L__func__.gimp_paned_box_remove_widget, 29

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Removing GtkWidget %p from GimpPanedBox %p"
	.size	.L.str.8, 43

	.type	.L__func__.gimp_paned_box_will_handle_drag,@object # @__func__.gimp_paned_box_will_handle_drag
.L__func__.gimp_paned_box_will_handle_drag:
	.asciz	"gimp_paned_box_will_handle_drag"
	.size	.L__func__.gimp_paned_box_will_handle_drag, 32

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"paned_box == NULL || GIMP_IS_PANED_BOX (paned_box)"
	.size	.L.str.9, 51

	.type	.L__func__.gimp_paned_box_set_drag_handler,@object # @__func__.gimp_paned_box_set_drag_handler
.L__func__.gimp_paned_box_set_drag_handler:
	.asciz	"gimp_paned_box_set_drag_handler"
	.size	.L__func__.gimp_paned_box_set_drag_handler, 32

	.type	gimp_paned_box_parent_class,@object # @gimp_paned_box_parent_class
	.local	gimp_paned_box_parent_class
	.comm	gimp_paned_box_parent_class,8,8
	.type	GimpPanedBox_private_offset,@object # @GimpPanedBox_private_offset
	.local	GimpPanedBox_private_offset
	.comm	GimpPanedBox_private_offset,4,4
	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"You can drop dockable dialogs here"
	.size	.L.str.10, 35

	.type	dialog_target_table,@object # @dialog_target_table
	.section	.rodata,"a",@progbits
	.align	16
dialog_target_table:
	.quad	.L.str.11
	.long	1                       # 0x1
	.long	24                      # 0x18
	.size	dialog_target_table, 16

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"application/x-gimp-dialog"
	.size	.L.str.11, 26


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
