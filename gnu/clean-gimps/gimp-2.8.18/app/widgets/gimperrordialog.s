	.text
	.file	"gimperrordialog.bc"
	.globl	gimp_error_dialog_get_type
	.align	16, 0x90
	.type	gimp_error_dialog_get_type,@function
gimp_error_dialog_get_type:             # @gimp_error_dialog_get_type
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
	movq	gimp_error_dialog_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_error_dialog_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_error_dialog_class_intern_init, %rdi
	movl	$304, %r8d              # imm = 0x130
	movabsq	$gimp_error_dialog_init, %rcx
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
	movabsq	$gimp_error_dialog_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_error_dialog_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_error_dialog_get_type, .Lfunc_end0-gimp_error_dialog_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_error_dialog_class_intern_init,@function
gimp_error_dialog_class_intern_init:    # @gimp_error_dialog_class_intern_init
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
	movq	%rax, gimp_error_dialog_parent_class
	cmpl	$0, GimpErrorDialog_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpErrorDialog_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_error_dialog_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_error_dialog_class_intern_init, .Lfunc_end1-gimp_error_dialog_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_error_dialog_init,@function
gimp_error_dialog_init:                 # @gimp_error_dialog_init
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
	callq	gtk_window_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.14, %rsi
	movq	%rax, %rdi
	callq	gtk_window_set_role
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.15, %rsi
	movl	$4294967289, %edx       # imm = 0xFFFFFFF9
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_add_buttons
	movq	-8(%rbp), %rcx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967289, %esi       # imm = 0xFFFFFFF9
	movq	%rax, %rdi
	callq	gtk_dialog_set_default_response
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_resizable
	movl	$1, %edi
	xorl	%esi, %esi
	callq	gtk_box_new
	movq	-8(%rbp), %rcx
	movq	%rax, 264(%rcx)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rcx
	movq	264(%rcx), %rsi
	movq	%rax, %rdi
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movl	-60(%rbp), %ecx         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	264(%rax), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rax
	movq	$0, 272(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 280(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 288(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 296(%rax)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_error_dialog_init, .Lfunc_end2-gimp_error_dialog_init
	.cfi_endproc

	.globl	gimp_error_dialog_new
	.align	16, 0x90
	.type	gimp_error_dialog_new,@function
gimp_error_dialog_new:                  # @gimp_error_dialog_new
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_error_dialog_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_6
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	callq	gimp_error_dialog_get_type
	movabsq	$.L.str.3, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -8(%rbp)
.LBB3_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_error_dialog_new, .Lfunc_end3-gimp_error_dialog_new
	.cfi_endproc

	.globl	gimp_error_dialog_add
	.align	16, 0x90
	.type	gimp_error_dialog_add,@function
gimp_error_dialog_add:                  # @gimp_error_dialog_add
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	$0, -44(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_error_dialog_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_error_dialog_add, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_41
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB4_15
# BB#14:                                # %if.then.13
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_error_dialog_add, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_41
.LBB4_16:                               # %if.end.15
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.16
	jmp	.LBB4_18
.LBB4_18:                               # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB4_20
# BB#19:                                # %if.then.19
	jmp	.LBB4_21
.LBB4_20:                               # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_error_dialog_add, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_41
.LBB4_21:                               # %if.end.21
	jmp	.LBB4_22
.LBB4_22:                               # %do.end.22
	movq	-8(%rbp), %rax
	cmpq	$0, 272(%rax)
	je	.LBB4_30
# BB#23:                                # %land.lhs.true.24
	movq	-8(%rbp), %rax
	cmpq	$0, 280(%rax)
	je	.LBB4_30
# BB#24:                                # %land.lhs.true.26
	movq	-8(%rbp), %rax
	movq	280(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB4_30
# BB#25:                                # %land.lhs.true.30
	movq	-8(%rbp), %rax
	cmpq	$0, 288(%rax)
	je	.LBB4_30
# BB#26:                                # %land.lhs.true.32
	movq	-8(%rbp), %rax
	movq	288(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB4_30
# BB#27:                                # %if.then.36
	movq	-8(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_message_box_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_message_box_repeat
	cmpl	$0, %eax
	je	.LBB4_29
# BB#28:                                # %if.then.42
	jmp	.LBB4_41
.LBB4_29:                               # %if.end.43
	jmp	.LBB4_30
.LBB4_30:                               # %if.end.44
	movq	-8(%rbp), %rax
	cmpl	$3, 296(%rax)
	jl	.LBB4_37
# BB#31:                                # %if.then.46
	movabsq	$.L.str.7, %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movb	$0, %al
	callq	g_printerr
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.8, %rdx
	movl	$1, -44(%rbp)
	movq	%rdx, -16(%rbp)
	callq	gettext
	movabsq	$.L.str.10, %rdi
	movq	%rax, -24(%rbp)
	callq	gettext
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 280(%rax)
	je	.LBB4_36
# BB#32:                                # %land.lhs.true.51
	movq	-8(%rbp), %rax
	movq	280(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB4_36
# BB#33:                                # %land.lhs.true.55
	movq	-8(%rbp), %rax
	cmpq	$0, 288(%rax)
	je	.LBB4_36
# BB#34:                                # %land.lhs.true.58
	movq	-8(%rbp), %rax
	movq	288(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB4_36
# BB#35:                                # %if.then.62
	jmp	.LBB4_41
.LBB4_36:                               # %if.end.63
	jmp	.LBB4_37
.LBB4_37:                               # %if.end.64
	callq	gimp_message_box_get_type
	movabsq	$.L.str.11, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movl	296(%rax), %r8d
	addl	$1, %r8d
	movl	%r8d, 296(%rax)
	cmpl	$0, -44(%rbp)
	je	.LBB4_39
# BB#38:                                # %if.then.69
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_message_box_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_message_box_set_primary_text
	jmp	.LBB4_40
.LBB4_39:                               # %if.else.72
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_message_box_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.13, %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_message_box_set_primary_text
.LBB4_40:                               # %if.end.76
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_message_box_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_message_box_set_text
	movq	-8(%rbp), %rdx
	movq	264(%rdx), %rdx
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rsi
	movq	%rax, 272(%rsi)
	movq	-8(%rbp), %rax
	movq	280(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movq	-8(%rbp), %rsi
	movq	%rax, 280(%rsi)
	movq	-8(%rbp), %rax
	movq	288(%rax), %rdi
	callq	g_free
	movq	-32(%rbp), %rdi
	callq	g_strdup
	movq	-8(%rbp), %rsi
	movq	%rax, 288(%rsi)
.LBB4_41:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_error_dialog_add, .Lfunc_end4-gimp_error_dialog_add
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_error_dialog_class_init,@function
gimp_error_dialog_class_init:           # @gimp_error_dialog_class_init
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
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_error_dialog_response, %rsi
	movabsq	$gimp_error_dialog_finalize, %rdi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdi, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 904(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_error_dialog_class_init, .Lfunc_end5-gimp_error_dialog_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_error_dialog_finalize,@function
gimp_error_dialog_finalize:             # @gimp_error_dialog_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_error_dialog_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 280(%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	280(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 280(%rax)
.LBB6_2:                                # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 288(%rax)
	je	.LBB6_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	288(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 288(%rax)
.LBB6_4:                                # %if.end.8
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_error_dialog_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_error_dialog_finalize, .Lfunc_end6-gimp_error_dialog_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_error_dialog_response,@function
gimp_error_dialog_response:             # @gimp_error_dialog_response
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
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_destroy
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_error_dialog_response, .Lfunc_end7-gimp_error_dialog_response
	.cfi_endproc

	.type	gimp_error_dialog_get_type.g_define_type_id__volatile,@object # @gimp_error_dialog_get_type.g_define_type_id__volatile
	.local	gimp_error_dialog_get_type.g_define_type_id__volatile
	.comm	gimp_error_dialog_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpErrorDialog"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_error_dialog_new,@object # @__func__.gimp_error_dialog_new
.L__func__.gimp_error_dialog_new:
	.asciz	"gimp_error_dialog_new"
	.size	.L__func__.gimp_error_dialog_new, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"title != NULL"
	.size	.L.str.2, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"title"
	.size	.L.str.3, 6

	.type	.L__func__.gimp_error_dialog_add,@object # @__func__.gimp_error_dialog_add
.L__func__.gimp_error_dialog_add:
	.asciz	"gimp_error_dialog_add"
	.size	.L__func__.gimp_error_dialog_add, 22

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_ERROR_DIALOG (dialog)"
	.size	.L.str.4, 30

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"domain != NULL"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"message != NULL"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%s: %s\n\n"
	.size	.L.str.7, 9

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-wilber-eek"
	.size	.L.str.8, 16

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Too many error messages!"
	.size	.L.str.9, 25

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Messages are redirected to stderr."
	.size	.L.str.10, 35

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"stock-id"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%s"
	.size	.L.str.12, 3

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%s Message"
	.size	.L.str.13, 11

	.type	gimp_error_dialog_parent_class,@object # @gimp_error_dialog_parent_class
	.local	gimp_error_dialog_parent_class
	.comm	gimp_error_dialog_parent_class,8,8
	.type	GimpErrorDialog_private_offset,@object # @GimpErrorDialog_private_offset
	.local	GimpErrorDialog_private_offset
	.comm	GimpErrorDialog_private_offset,4,4
	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp-message"
	.size	.L.str.14, 13

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gtk-ok"
	.size	.L.str.15, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
