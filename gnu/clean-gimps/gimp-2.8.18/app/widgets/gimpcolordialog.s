	.text
	.file	"gimpcolordialog.bc"
	.globl	gimp_color_dialog_get_type
	.align	16, 0x90
	.type	gimp_color_dialog_get_type,@function
gimp_color_dialog_get_type:             # @gimp_color_dialog_get_type
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
	movq	gimp_color_dialog_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_color_dialog_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_viewable_dialog_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$992, %edx              # imm = 0x3E0
	movabsq	$gimp_color_dialog_class_intern_init, %rdi
	movl	$416, %r8d              # imm = 0x1A0
	movabsq	$gimp_color_dialog_init, %rcx
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
	movabsq	$gimp_color_dialog_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_color_dialog_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_color_dialog_get_type, .Lfunc_end0-gimp_color_dialog_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_dialog_class_intern_init,@function
gimp_color_dialog_class_intern_init:    # @gimp_color_dialog_class_intern_init
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
	movq	%rax, gimp_color_dialog_parent_class
	cmpl	$0, GimpColorDialog_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpColorDialog_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_color_dialog_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_color_dialog_class_intern_init, .Lfunc_end1-gimp_color_dialog_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_dialog_init,@function
gimp_color_dialog_init:                 # @gimp_color_dialog_init
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
	pushq	%rbx
	subq	$328, %rsp              # imm = 0x148
.Ltmp9:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	color_dialogs, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, color_dialogs
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.21, %rsi
	movl	$1, %edx
	movabsq	$.L.str.22, %rcx
	movl	$4294967290, %r8d       # imm = 0xFFFFFFFA
	movabsq	$.L.str.23, %r9
	movl	$4294967291, %r10d      # imm = 0xFFFFFFFB
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	$-5, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movl	%r10d, -108(%rbp)       # 4-byte Spill
	callq	gtk_dialog_add_buttons
	movq	-16(%rbp), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movq	%rax, %rdi
	callq	gtk_dialog_set_default_response
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$4294967291, %edx       # imm = 0xFFFFFFFB
	movl	$4294967290, %ecx       # imm = 0xFFFFFFFA
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	callq	gimp_color_selection_new
	movq	-16(%rbp), %rdi
	movq	%rax, 312(%rdi)
	movq	-16(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rsi
	movq	312(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rax
	movq	312(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.24, %rsi
	movabsq	$gimp_color_dialog_color_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	312(%rdi), %rdi
	movq	-16(%rbp), %rbx
	movq	%rax, %rdx
	movq	%rbx, %rcx
	callq	g_signal_connect_data
	movl	$2, %edi
	movl	$7, %esi
	movl	$1, %edx
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-24(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-24(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$4, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	movq	-16(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_color_selection_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	216(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -204(%rbp)        # 4-byte Spill
	movl	-204(%rbp), %ecx        # 4-byte Reload
	movl	-204(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_button_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -220(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-220(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -224(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-224(%rbp), %r8d        # 4-byte Reload
	movl	-220(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movabsq	$.L.str.25, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.26, %rsi
	movabsq	$gimp_color_history_add_clicked, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-240(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movl	$3, %edi
	movl	$2, %esi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_arrow_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movl	$0, -44(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$12, -44(%rbp)
	jge	.LBB2_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	$6, %eax
	movl	-44(%rbp), %ecx
	movl	%eax, -260(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-260(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%edx, -88(%rbp)
	movl	-44(%rbp), %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%eax, -84(%rbp)
	callq	gtk_button_new
	movl	$20, %ecx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_widget_set_size_request
	movq	-24(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movl	-88(%rbp), %ecx
	addl	$1, %ecx
	movl	-88(%rbp), %edx
	addl	$2, %edx
	movl	-84(%rbp), %r8d
	movl	-84(%rbp), %r9d
	addl	$1, %r9d
	movq	%rax, %rdi
	movl	%edx, -276(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-276(%rbp), %ecx        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-80(%rbp), %rsi
	movl	-44(%rbp), %edi
	callq	color_history_get
	leaq	-80(%rbp), %rdi
	movl	$1, %esi
	movl	$512, %edx              # imm = 0x200
	callq	gimp_color_area_new
	movslq	-44(%rbp), %rdi
	movq	-16(%rbp), %r10
	movq	%rax, 320(%r10,%rdi,8)
	movq	-32(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movslq	-44(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	320(%rdi,%rsi,8), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	320(%rsi,%rax,8), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.26, %rsi
	movabsq	$gimp_color_history_color_clicked, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.24, %rsi
	movabsq	$gimp_color_history_color_changed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movslq	-44(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	320(%rdi,%rdx,8), %rdx
	movslq	-44(%rbp), %rdi
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-296(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -312(%rbp)        # 8-byte Spill
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB2_1
.LBB2_4:                                # %for.end
	addq	$328, %rsp              # imm = 0x148
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_color_dialog_init, .Lfunc_end2-gimp_color_dialog_init
	.cfi_endproc

	.globl	gimp_color_dialog_new
	.align	16, 0x90
	.type	gimp_color_dialog_new,@function
gimp_color_dialog_new:                  # @gimp_color_dialog_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$440, %rsp              # imm = 0x1B8
.Ltmp13:
	.cfi_offset %rbx, -56
.Ltmp14:
	.cfi_offset %r12, -48
.Ltmp15:
	.cfi_offset %r13, -40
.Ltmp16:
	.cfi_offset %r14, -32
.Ltmp17:
	.cfi_offset %r15, -24
	movl	48(%rbp), %eax
	movl	40(%rbp), %r10d
	movq	32(%rbp), %r11
	movq	24(%rbp), %rbx
	movq	16(%rbp), %r14
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	%r14, -104(%rbp)
	movq	%rbx, -112(%rbp)
	movq	%r11, -120(%rbp)
	movl	%r10d, -124(%rbp)
	movl	%eax, -128(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -56(%rbp)
	je	.LBB3_10
# BB#2:                                 # %lor.lhs.false
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB3_4
# BB#3:                                 # %if.then
	movl	$0, -164(%rbp)
	jmp	.LBB3_9
.LBB3_4:                                # %if.else
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_7
# BB#5:                                 # %land.lhs.true
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB3_7
# BB#6:                                 # %if.then.4
	movl	$1, -164(%rbp)
	jmp	.LBB3_8
.LBB3_7:                                # %if.else.5
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB3_8:                                # %if.end
	jmp	.LBB3_9
.LBB3_9:                                # %if.end.7
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB3_11
.LBB3_10:                               # %if.then.9
	jmp	.LBB3_12
.LBB3_11:                               # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_color_dialog_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_75
.LBB3_12:                               # %if.end.11
	jmp	.LBB3_13
.LBB3_13:                               # %do.end
	jmp	.LBB3_14
.LBB3_14:                               # %do.body.12
	cmpq	$0, -64(%rbp)
	je	.LBB3_23
# BB#15:                                # %lor.lhs.false.14
	movq	-64(%rbp), %rax
	movq	%rax, -176(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -184(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.LBB3_17
# BB#16:                                # %if.then.23
	movl	$0, -188(%rbp)
	jmp	.LBB3_22
.LBB3_17:                               # %if.else.24
	movq	-176(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_20
# BB#18:                                # %land.lhs.true.27
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-184(%rbp), %rax
	jne	.LBB3_20
# BB#19:                                # %if.then.31
	movl	$1, -188(%rbp)
	jmp	.LBB3_21
.LBB3_20:                               # %if.else.32
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -188(%rbp)
.LBB3_21:                               # %if.end.34
	jmp	.LBB3_22
.LBB3_22:                               # %if.end.35
	movl	-188(%rbp), %eax
	movl	%eax, -192(%rbp)
	cmpl	$0, -192(%rbp)
	je	.LBB3_24
.LBB3_23:                               # %if.then.38
	jmp	.LBB3_25
.LBB3_24:                               # %if.else.39
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_color_dialog_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_75
.LBB3_25:                               # %if.end.40
	jmp	.LBB3_26
.LBB3_26:                               # %do.end.41
	jmp	.LBB3_27
.LBB3_27:                               # %do.body.42
	movq	-96(%rbp), %rax
	movq	%rax, -200(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -208(%rbp)
	cmpq	$0, -200(%rbp)
	jne	.LBB3_29
# BB#28:                                # %if.then.51
	movl	$0, -212(%rbp)
	jmp	.LBB3_34
.LBB3_29:                               # %if.else.52
	movq	-200(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_32
# BB#30:                                # %land.lhs.true.55
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-208(%rbp), %rax
	jne	.LBB3_32
# BB#31:                                # %if.then.59
	movl	$1, -212(%rbp)
	jmp	.LBB3_33
.LBB3_32:                               # %if.else.60
	movq	-200(%rbp), %rdi
	movq	-208(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -212(%rbp)
.LBB3_33:                               # %if.end.62
	jmp	.LBB3_34
.LBB3_34:                               # %if.end.63
	movl	-212(%rbp), %eax
	movl	%eax, -216(%rbp)
	cmpl	$0, -216(%rbp)
	je	.LBB3_36
# BB#35:                                # %if.then.66
	jmp	.LBB3_37
.LBB3_36:                               # %if.else.67
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_color_dialog_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_75
.LBB3_37:                               # %if.end.68
	jmp	.LBB3_38
.LBB3_38:                               # %do.end.69
	jmp	.LBB3_39
.LBB3_39:                               # %do.body.70
	cmpq	$0, -104(%rbp)
	je	.LBB3_48
# BB#40:                                # %lor.lhs.false.72
	movq	-104(%rbp), %rax
	movq	%rax, -224(%rbp)
	callq	gimp_dialog_factory_get_type
	movq	%rax, -232(%rbp)
	cmpq	$0, -224(%rbp)
	jne	.LBB3_42
# BB#41:                                # %if.then.81
	movl	$0, -236(%rbp)
	jmp	.LBB3_47
.LBB3_42:                               # %if.else.82
	movq	-224(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_45
# BB#43:                                # %land.lhs.true.85
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-232(%rbp), %rax
	jne	.LBB3_45
# BB#44:                                # %if.then.89
	movl	$1, -236(%rbp)
	jmp	.LBB3_46
.LBB3_45:                               # %if.else.90
	movq	-224(%rbp), %rdi
	movq	-232(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -236(%rbp)
.LBB3_46:                               # %if.end.92
	jmp	.LBB3_47
.LBB3_47:                               # %if.end.93
	movl	-236(%rbp), %eax
	movl	%eax, -240(%rbp)
	cmpl	$0, -240(%rbp)
	je	.LBB3_49
.LBB3_48:                               # %if.then.96
	jmp	.LBB3_50
.LBB3_49:                               # %if.else.97
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_color_dialog_new, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_75
.LBB3_50:                               # %if.end.98
	jmp	.LBB3_51
.LBB3_51:                               # %do.end.99
	jmp	.LBB3_52
.LBB3_52:                               # %do.body.100
	cmpq	$0, -104(%rbp)
	je	.LBB3_54
# BB#53:                                # %lor.lhs.false.102
	cmpq	$0, -112(%rbp)
	je	.LBB3_55
.LBB3_54:                               # %if.then.104
	jmp	.LBB3_56
.LBB3_55:                               # %if.else.105
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_color_dialog_new, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_75
.LBB3_56:                               # %if.end.106
	jmp	.LBB3_57
.LBB3_57:                               # %do.end.107
	jmp	.LBB3_58
.LBB3_58:                               # %do.body.108
	cmpq	$0, -120(%rbp)
	je	.LBB3_60
# BB#59:                                # %if.then.110
	jmp	.LBB3_61
.LBB3_60:                               # %if.else.111
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_color_dialog_new, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_75
.LBB3_61:                               # %if.end.112
	jmp	.LBB3_62
.LBB3_62:                               # %do.end.113
	cmpq	$0, -64(%rbp)
	jne	.LBB3_64
# BB#63:                                # %if.then.115
	movabsq	$.L.str.8, %rdi
	movb	$0, %al
	callq	g_warning
.LBB3_64:                               # %if.end.116
	cmpq	$0, -112(%rbp)
	je	.LBB3_66
# BB#65:                                # %cond.true
	movq	-112(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jmp	.LBB3_67
.LBB3_66:                               # %cond.false
	movabsq	$.L.str.9, %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jmp	.LBB3_67
.LBB3_67:                               # %cond.end
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	%rax, -144(%rbp)
	callq	gimp_color_dialog_get_type
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.11, %rcx
	movabsq	$.L.str.12, %r9
	movabsq	$gimp_color_dialog_help_func, %rdx
	movabsq	$.L.str.13, %rdi
	movabsq	$.L.str.14, %r8
	movabsq	$.L.str.15, %r10
	movabsq	$.L.str.16, %r11
	movabsq	$.L.str.17, %rbx
	xorl	%r14d, %r14d
	movl	%r14d, %r15d
	movq	-72(%rbp), %r12
	movq	-144(%rbp), %r13
	movq	-80(%rbp), %r14
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movq	-88(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movq	-96(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -296(%rbp)        # 8-byte Spill
	movq	%r12, %rdx
	movq	%r8, -304(%rbp)         # 8-byte Spill
	movq	%r13, %r8
	movq	-296(%rbp), %r12        # 8-byte Reload
	movq	%r12, (%rsp)
	movq	-288(%rbp), %r13        # 8-byte Reload
	movq	%r13, 8(%rsp)
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	%r10, 24(%rsp)
	movq	%r14, 32(%rsp)
	movq	%r11, 40(%rsp)
	movq	-272(%rbp), %r10        # 8-byte Reload
	movq	%r10, 48(%rsp)
	movq	%rbx, 56(%rsp)
	movq	-280(%rbp), %r10        # 8-byte Reload
	movq	%r10, 64(%rsp)
	movq	$0, 72(%rsp)
	movb	$0, %al
	movq	%r15, -312(%rbp)        # 8-byte Spill
	callq	g_object_new
	movq	%rax, -136(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB3_69
# BB#68:                                # %if.then.121
	movq	-136(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gimp_viewable_dialog_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_viewable_dialog_set_viewable
	jmp	.LBB3_70
.LBB3_69:                               # %if.else.124
	movq	-136(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gimp_viewable_dialog_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	272(%rax), %rdi
	callq	gtk_widget_get_parent
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rdi
	callq	gtk_widget_get_parent
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rdi
	callq	gtk_widget_hide
.LBB3_70:                               # %if.end.131
	movl	-124(%rbp), %eax
	movq	-136(%rbp), %rcx
	movl	%eax, 304(%rcx)
	cmpq	$0, -104(%rbp)
	je	.LBB3_72
# BB#71:                                # %if.then.134
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movq	-136(%rbp), %rax
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%rsi, -344(%rbp)        # 8-byte Spill
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	-344(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_dialog_factory_add_foreign
.LBB3_72:                               # %if.end.137
	movq	-136(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gimp_color_selection_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-128(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_color_selection_set_show_alpha
	cmpq	$0, -64(%rbp)
	je	.LBB3_74
# BB#73:                                # %if.then.141
	movl	$80, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	32(%rcx), %rcx
	movq	368(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.18, %rsi
	movq	-64(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movq	-136(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gimp_color_selection_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	32(%rcx), %rcx
	movq	368(%rcx), %rsi
	movq	%rax, %rdi
	callq	gimp_color_selection_set_config
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	368(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.18, %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
.LBB3_74:                               # %if.end.153
	movq	-136(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gimp_color_selection_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_selection_set_color
	movq	-136(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gimp_color_selection_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_selection_set_old_color
	movq	-136(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
.LBB3_75:                               # %return
	movq	-48(%rbp), %rax
	addq	$440, %rsp              # imm = 0x1B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_color_dialog_new, .Lfunc_end3-gimp_color_dialog_new
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB4_2
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
.LBB4_2:                                # %entry
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
.Lfunc_end4:
	.size	g_warning, .Lfunc_end4-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_dialog_help_func,@function
gimp_color_dialog_help_func:            # @gimp_color_dialog_help_func
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_color_dialog_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_color_selection_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	224(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_color_notebook_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	232(%rax), %rax
	movq	(%rax), %rax
	movq	832(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_standard_help_func
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_color_dialog_help_func, .Lfunc_end5-gimp_color_dialog_help_func
	.cfi_endproc

	.globl	gimp_color_dialog_set_color
	.align	16, 0x90
	.type	gimp_color_dialog_set_color,@function
gimp_color_dialog_set_color:            # @gimp_color_dialog_set_color
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_color_dialog_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_color_dialog_set_color, %rsi
	movabsq	$.L.str.19, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_18
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB6_15
# BB#14:                                # %if.then.13
	jmp	.LBB6_16
.LBB6_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_color_dialog_set_color, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_18
.LBB6_16:                               # %if.end.15
	jmp	.LBB6_17
.LBB6_17:                               # %do.end.16
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_color_dialog_color_changed, %rdx
	movq	-8(%rbp), %rdi
	movq	312(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-48(%rbp), %r10         # 8-byte Reload
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-56(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-8(%rbp), %rdi
	movq	312(%rdi), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_selection_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_selection_set_color
	movq	-8(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_color_selection_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_selection_set_old_color
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_color_dialog_color_changed, %rax
	movq	-8(%rbp), %rdi
	movq	312(%rdi), %rdi
	movq	-8(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB6_18:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_color_dialog_set_color, .Lfunc_end6-gimp_color_dialog_set_color
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_dialog_color_changed,@function
gimp_color_dialog_color_changed:        # @gimp_color_dialog_color_changed
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$0, 304(%rsi)
	je	.LBB7_2
# BB#1:                                 # %if.then
	leaq	-48(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_color_selection_get_color
	xorl	%edx, %edx
	leaq	-48(%rbp), %rcx
	movl	$2, %r8d
	movq	-16(%rbp), %rsi
	movl	color_dialog_signals, %eax
	movq	%rsi, %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	g_signal_emit
.LBB7_2:                                # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_color_dialog_color_changed, .Lfunc_end7-gimp_color_dialog_color_changed
	.cfi_endproc

	.globl	gimp_color_dialog_get_color
	.align	16, 0x90
	.type	gimp_color_dialog_get_color,@function
gimp_color_dialog_get_color:            # @gimp_color_dialog_get_color
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_color_dialog_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_color_dialog_get_color, %rsi
	movabsq	$.L.str.19, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_18
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB8_15
# BB#14:                                # %if.then.13
	jmp	.LBB8_16
.LBB8_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_color_dialog_get_color, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_18
.LBB8_16:                               # %if.end.15
	jmp	.LBB8_17
.LBB8_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_color_selection_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_selection_get_color
.LBB8_18:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_color_dialog_get_color, .Lfunc_end8-gimp_color_dialog_get_color
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_dialog_class_init,@function
gimp_color_dialog_class_init:           # @gimp_color_dialog_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$120, %rsp
.Ltmp36:
	.cfi_offset %rbx, -40
.Ltmp37:
	.cfi_offset %r14, -32
.Ltmp38:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_color_dialog_response, %rsi
	movabsq	$gimp_color_dialog_dispose, %rdi
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rdi, 40(%rax)
	movq	-48(%rbp), %rax
	movq	%rsi, 904(%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_rgb_get_type
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_dialog_state_get_type
	movabsq	$.L.str.20, %rdi
	movl	$2, %edx
	movl	$984, %ecx              # imm = 0x3D8
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$gimp_marshal_VOID__BOXED_ENUM, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%r11, %rsi
	movq	-80(%rbp), %r8          # 8-byte Reload
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movq	%rbx, %r9
	movq	-88(%rbp), %r14         # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$2, 16(%rsp)
	movq	-72(%rbp), %r15         # 8-byte Reload
	movq	%r15, 24(%rsp)
	movq	%rax, 32(%rsp)
	movb	$0, %al
	movq	%r10, -96(%rbp)         # 8-byte Spill
	callq	g_signal_new
	movl	%eax, color_dialog_signals
	addq	$120, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_color_dialog_class_init, .Lfunc_end9-gimp_color_dialog_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_dialog_dispose,@function
gimp_color_dialog_dispose:              # @gimp_color_dialog_dispose
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_color_dialog_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	color_dialogs, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_remove
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, color_dialogs
	movq	gimp_color_dialog_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_color_dialog_dispose, .Lfunc_end10-gimp_color_dialog_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_dialog_response,@function
gimp_color_dialog_response:             # @gimp_color_dialog_response
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_color_dialog_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, %edx
	subl	$-5, %edx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movl	%edx, -72(%rbp)         # 4-byte Spill
	je	.LBB11_2
	jmp	.LBB11_5
.LBB11_5:                               # %entry
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jne	.LBB11_3
	jmp	.LBB11_1
.LBB11_1:                               # %sw.bb
	movq	-24(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_color_selection_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_color_selection_reset
	jmp	.LBB11_4
.LBB11_2:                               # %sw.bb.4
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-24(%rbp), %rsi
	callq	gimp_color_history_add_clicked
	movq	-24(%rbp), %rsi
	movq	312(%rsi), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_color_selection_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_selection_get_color
	xorl	%ecx, %ecx
	leaq	-56(%rbp), %rax
	movq	-24(%rbp), %rsi
	movl	color_dialog_signals, %edx
	movq	%rsi, %rdi
	movl	%edx, %esi
	movl	%ecx, %edx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-100(%rbp), %r8d        # 4-byte Reload
	movb	$0, %al
	callq	g_signal_emit
	jmp	.LBB11_4
.LBB11_3:                               # %sw.default
	movq	-24(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_color_selection_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_selection_get_old_color
	xorl	%edx, %edx
	leaq	-56(%rbp), %rcx
	movl	$1, %r8d
	movq	-24(%rbp), %rax
	movl	color_dialog_signals, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB11_4:                               # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_color_dialog_response, .Lfunc_end11-gimp_color_dialog_response
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_history_add_clicked,@function
gimp_color_history_add_clicked:         # @gimp_color_history_add_clicked
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	312(%rsi), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_color_selection_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_selection_get_color
	leaq	-48(%rbp), %rdi
	callq	color_history_add
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -56(%rbp)
	jl	.LBB12_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	leaq	-48(%rbp), %rsi
	movl	-56(%rbp), %edi
	callq	color_history_get
	movslq	-56(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	320(%rax,%rsi,8), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_area_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_area_set_color
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-56(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB12_1
.LBB12_4:                               # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_color_history_add_clicked, .Lfunc_end12-gimp_color_history_add_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_history_color_clicked,@function
gimp_color_history_color_clicked:       # @gimp_color_history_color_clicked
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_area_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_color_area_get_color
	movq	-16(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_color_selection_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_selection_set_color
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_color_history_color_clicked, .Lfunc_end13-gimp_color_history_color_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_history_color_changed,@function
gimp_color_history_color_changed:       # @gimp_color_history_color_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_color_area_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_area_get_color
	leaq	-48(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	movl	-52(%rbp), %edi
	callq	color_history_set
	movq	color_dialogs, %rax
	movq	%rax, -64(%rbp)
.LBB14_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB14_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	320(%rcx,%rax,8), %rax
	cmpq	-8(%rbp), %rax
	je	.LBB14_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_color_history_color_changed, %rdx
	movslq	-52(%rbp), %rdi
	movq	-72(%rbp), %r9
	movq	320(%r9,%rdi,8), %rdi
	movq	-16(%rbp), %r9
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-88(%rbp), %r10         # 8-byte Reload
	movq	%r9, -96(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-96(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	movslq	-52(%rbp), %rdi
	movq	-72(%rbp), %r8
	movq	320(%r8,%rdi,8), %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_color_area_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_area_set_color
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_color_history_color_changed, %rax
	movslq	-52(%rbp), %rdi
	movq	-72(%rbp), %r9
	movq	320(%r9,%rdi,8), %rdi
	movq	-16(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -120(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB14_4:                               # %if.end
                                        #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_5
.LBB14_5:                               # %for.inc
                                        #   in Loop: Header=BB14_1 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB14_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB14_8
.LBB14_7:                               # %cond.false
                                        #   in Loop: Header=BB14_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB14_8
.LBB14_8:                               # %cond.end
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
	jmp	.LBB14_1
.LBB14_9:                               # %for.end
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_color_history_color_changed, .Lfunc_end14-gimp_color_history_color_changed
	.cfi_endproc

	.type	gimp_color_dialog_get_type.g_define_type_id__volatile,@object # @gimp_color_dialog_get_type.g_define_type_id__volatile
	.local	gimp_color_dialog_get_type.g_define_type_id__volatile
	.comm	gimp_color_dialog_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpColorDialog"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_color_dialog_new,@object # @__func__.gimp_color_dialog_new
.L__func__.gimp_color_dialog_new:
	.asciz	"gimp_color_dialog_new"
	.size	.L__func__.gimp_color_dialog_new, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"viewable == NULL || GIMP_IS_VIEWABLE (viewable)"
	.size	.L.str.2, 48

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"context == NULL || GIMP_IS_CONTEXT (context)"
	.size	.L.str.3, 45

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GTK_IS_WIDGET (parent)"
	.size	.L.str.4, 23

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"dialog_factory == NULL || GIMP_IS_DIALOG_FACTORY (dialog_factory)"
	.size	.L.str.5, 66

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"dialog_factory == NULL || dialog_identifier != NULL"
	.size	.L.str.6, 52

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"color != NULL"
	.size	.L.str.7, 14

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp_color_dialog_new() called with a NULL context"
	.size	.L.str.8, 51

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-color-selector"
	.size	.L.str.9, 20

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"title"
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"role"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"help-func"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"help-id"
	.size	.L.str.13, 8

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp-color-dialog"
	.size	.L.str.14, 18

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"stock-id"
	.size	.L.str.15, 9

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"description"
	.size	.L.str.16, 12

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"parent"
	.size	.L.str.17, 7

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp-context"
	.size	.L.str.18, 13

	.type	.L__func__.gimp_color_dialog_set_color,@object # @__func__.gimp_color_dialog_set_color
.L__func__.gimp_color_dialog_set_color:
	.asciz	"gimp_color_dialog_set_color"
	.size	.L__func__.gimp_color_dialog_set_color, 28

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"GIMP_IS_COLOR_DIALOG (dialog)"
	.size	.L.str.19, 30

	.type	.L__func__.gimp_color_dialog_get_color,@object # @__func__.gimp_color_dialog_get_color
.L__func__.gimp_color_dialog_get_color:
	.asciz	"gimp_color_dialog_get_color"
	.size	.L__func__.gimp_color_dialog_get_color, 28

	.type	gimp_color_dialog_parent_class,@object # @gimp_color_dialog_parent_class
	.local	gimp_color_dialog_parent_class
	.comm	gimp_color_dialog_parent_class,8,8
	.type	GimpColorDialog_private_offset,@object # @GimpColorDialog_private_offset
	.local	GimpColorDialog_private_offset
	.comm	GimpColorDialog_private_offset,4,4
	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"update"
	.size	.L.str.20, 7

	.type	color_dialog_signals,@object # @color_dialog_signals
	.local	color_dialog_signals
	.comm	color_dialog_signals,4,4
	.type	color_dialogs,@object   # @color_dialogs
	.local	color_dialogs
	.comm	color_dialogs,8,8
	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp-reset"
	.size	.L.str.21, 11

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gtk-cancel"
	.size	.L.str.22, 11

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gtk-ok"
	.size	.L.str.23, 7

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"color-changed"
	.size	.L.str.24, 14

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Add the current color to the color history"
	.size	.L.str.25, 43

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"clicked"
	.size	.L.str.26, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
