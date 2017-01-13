	.text
	.file	"gimppropwidgets.bc"
	.globl	gimp_prop_expanding_frame_new
	.align	16, 0x90
	.type	gimp_prop_expanding_frame_new,@function
gimp_prop_expanding_frame_new:          # @gimp_prop_expanding_frame_new
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
	subq	$112, %rsp
	movabsq	$.L__func__.gimp_prop_expanding_frame_new, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	g_param_spec_types, %rcx
	movq	16(%rcx), %rdx
	movq	%rax, %rcx
	callq	check_param_spec_w
	cmpq	$0, %rax
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB0_7
.LBB0_2:                                # %if.end
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_frame_new
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	gimp_prop_check_button_new
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_frame_set_label_widget
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	leaq	-68(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_get
	cmpl	$0, -68(%rbp)
	je	.LBB0_4
# BB#3:                                 # %if.then.8
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
.LBB0_4:                                # %if.end.9
	movabsq	$.L.str, %rsi
	movabsq	$gimp_toggle_button_set_visible, %rax
	xorl	%r8d, %r8d
	movq	-64(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_object
	cmpq	$0, -48(%rbp)
	movq	%rax, -104(%rbp)        # 8-byte Spill
	je	.LBB0_6
# BB#5:                                 # %if.then.12
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB0_6:                                # %if.end.13
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_7:                                # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_prop_expanding_frame_new, .Lfunc_end0-gimp_prop_expanding_frame_new
	.cfi_endproc

	.align	16, 0x90
	.type	check_param_spec_w,@function
check_param_spec_w:                     # @check_param_spec_w
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	check_param_spec
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB1_3
# BB#1:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movl	16(%rax), %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.22, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_warning
	movq	$0, -8(%rbp)
	jmp	.LBB1_4
.LBB1_3:                                # %if.end
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB1_4:                                # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	check_param_spec_w, .Lfunc_end1-check_param_spec_w
	.cfi_endproc

	.globl	gimp_prop_paint_mode_menu_new
	.align	16, 0x90
	.type	gimp_prop_paint_mode_menu_new,@function
gimp_prop_paint_mode_menu_new:          # @gimp_prop_paint_mode_menu_new
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
	subq	$96, %rsp
	movabsq	$.L__func__.gimp_prop_paint_mode_menu_new, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	g_param_spec_types, %r8
	movq	80(%r8), %rdx
	movq	%rax, %rcx
	callq	check_param_spec_w
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB2_3
.LBB2_2:                                # %if.end
	leaq	-52(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movb	$0, %al
	callq	g_object_get
	movl	-28(%rbp), %edi
	movl	-32(%rbp), %esi
	callq	gimp_paint_mode_menu_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_prop_paint_menu_callback, %rcx
	movl	-52(%rbp), %esi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	callq	gimp_int_combo_box_connect
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	%rax, %rdi
	callq	set_param_spec
	movabsq	$gimp_prop_paint_menu_notify, %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movq	%rax, %rdx
	callq	connect_notify
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB2_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_prop_paint_mode_menu_new, .Lfunc_end2-gimp_prop_paint_mode_menu_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_paint_menu_callback,@function
gimp_prop_paint_menu_callback:          # @gimp_prop_paint_menu_callback
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
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	get_param_spec
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	jmp	.LBB3_4
.LBB3_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-28(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_get_active
	cmpl	$0, %eax
	je	.LBB3_4
# BB#3:                                 # %if.then.6
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rsi
	movl	-28(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
.LBB3_4:                                # %if.end.7
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_prop_paint_menu_callback, .Lfunc_end3-gimp_prop_paint_menu_callback
	.cfi_endproc

	.align	16, 0x90
	.type	set_param_spec,@function
set_param_spec:                         # @set_param_spec
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_prop_widgets_param_spec_quark
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movl	%eax, %esi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	g_object_set_qdata
.LBB4_2:                                # %if.end
	cmpq	$0, -16(%rbp)
	je	.LBB4_6
# BB#3:                                 # %if.then.2
	movq	-24(%rbp), %rdi
	callq	g_param_spec_get_blurb
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB4_5
# BB#4:                                 # %if.then.5
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
.LBB4_5:                                # %if.end.7
	jmp	.LBB4_6
.LBB4_6:                                # %if.end.8
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	set_param_spec, .Lfunc_end4-set_param_spec
	.cfi_endproc

	.align	16, 0x90
	.type	connect_notify,@function
connect_notify:                         # @connect_notify
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
	subq	$48, %rsp
	movabsq	$.L.str.25, %rax
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movq	%r9, %rdx
	movb	$0, %al
	callq	g_strconcat
	xorl	%r8d, %r8d
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rax, %rdi
	callq	g_signal_connect_object
	movq	-40(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	g_free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	connect_notify, .Lfunc_end5-connect_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_paint_menu_notify,@function
gimp_prop_paint_menu_notify:            # @gimp_prop_paint_menu_notify
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
	subq	$96, %rsp
	leaq	-28(%rbp), %rax
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_get
	movl	$24, %esi
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movabsq	$gimp_prop_paint_menu_callback, %rdx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r10
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movl	%r8d, %ecx
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-24(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-28(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_prop_paint_menu_callback, %rdi
	movq	-24(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-72(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -80(%rbp)         # 4-byte Spill
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_prop_paint_menu_notify, .Lfunc_end6-gimp_prop_paint_menu_notify
	.cfi_endproc

	.globl	gimp_prop_color_button_new
	.align	16, 0x90
	.type	gimp_prop_color_button_new,@function
gimp_prop_color_button_new:             # @gimp_prop_color_button_new
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_param_rgb_get_type
	movabsq	$.L__func__.gimp_prop_color_button_new, %rcx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	check_param_spec_w
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB7_3
.LBB7_2:                                # %if.end
	leaq	-72(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movb	$0, %al
	callq	g_object_get
	movq	-32(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	-44(%rbp), %edx
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %r8d
	callq	gimp_color_panel_new
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	callq	set_param_spec
	movabsq	$.L.str.1, %rsi
	movabsq	$gimp_prop_color_button_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$gimp_prop_color_button_notify, %rcx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	connect_notify
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB7_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_prop_color_button_new, .Lfunc_end7-gimp_prop_color_button_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_color_button_callback,@function
gimp_prop_color_button_callback:        # @gimp_prop_color_button_callback
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
	subq	$120, %rsp
.Ltmp27:
	.cfi_offset %rbx, -24
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	get_param_spec
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	jmp	.LBB8_3
.LBB8_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_button_get_color
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_prop_color_button_notify, %rax
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_block_matched
	leaq	-64(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %r8
	movq	8(%r8), %rsi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	g_object_set
	movl	$24, %esi
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	movl	%r11d, %r8d
	movabsq	$gimp_prop_color_button_notify, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movl	%r10d, %edx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-96(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB8_3:                                # %return
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_prop_color_button_callback, .Lfunc_end8-gimp_prop_color_button_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_color_button_notify,@function
gimp_prop_color_button_notify:          # @gimp_prop_color_button_notify
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
	subq	$96, %rsp
	leaq	-32(%rbp), %rax
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_get
	movl	$24, %esi
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movabsq	$gimp_prop_color_button_callback, %rdx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r10
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movl	%r8d, %ecx
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-24(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_button_set_color
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_prop_color_button_callback, %rax
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -76(%rbp)         # 4-byte Spill
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_prop_color_button_notify, .Lfunc_end9-gimp_prop_color_button_notify
	.cfi_endproc

	.globl	gimp_prop_scale_button_new
	.align	16, 0x90
	.type	gimp_prop_scale_button_new,@function
gimp_prop_scale_button_new:             # @gimp_prop_scale_button_new
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
	subq	$96, %rsp
	movabsq	$.L__func__.gimp_prop_scale_button_new, %rcx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	g_param_spec_types, %rax
	movq	104(%rax), %rdx
	callq	check_param_spec_w
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB10_3
.LBB10_2:                               # %if.end
	leaq	-48(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movb	$0, %al
	callq	g_object_get
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rcx
	movq	g_param_spec_types, %rdx
	movq	104(%rdx), %rsi
	movq	%rcx, %rdi
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movsd	72(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-32(%rbp), %rax
	movq	g_param_spec_types, %rcx
	movq	104(%rcx), %rsi
	movq	%rax, %rdi
	movsd	%xmm1, -72(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movsd	80(%rax), %xmm2         # xmm2 = mem[0],zero
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_scale_button_new
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	set_param_spec
	movabsq	$.L.str.2, %rsi
	movabsq	$gimp_prop_scale_button_callback, %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$gimp_prop_scale_button_notify, %rcx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	connect_notify
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB10_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_prop_scale_button_new, .Lfunc_end10-gimp_prop_scale_button_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_scale_button_callback,@function
gimp_prop_scale_button_callback:        # @gimp_prop_scale_button_callback
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
	pushq	%rbx
	subq	$88, %rsp
.Ltmp37:
	.cfi_offset %rbx, -24
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	get_param_spec
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	jmp	.LBB11_3
.LBB11_2:                               # %if.end
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_prop_scale_button_notify, %rdx
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %r9
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-48(%rbp), %r10         # 8-byte Reload
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-56(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %r8
	movq	8(%r8), %rsi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movb	$1, %al
	callq	g_object_set
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%ebx, %ebx
	movl	%ebx, %r8d
	movabsq	$gimp_prop_scale_button_notify, %rdx
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %r9
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movl	%ecx, %edx
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB11_3:                               # %return
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_prop_scale_button_callback, .Lfunc_end11-gimp_prop_scale_button_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_scale_button_notify,@function
gimp_prop_scale_button_notify:          # @gimp_prop_scale_button_notify
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
	subq	$96, %rsp
	leaq	-32(%rbp), %rax
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_get
	movl	$24, %esi
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movabsq	$gimp_prop_scale_button_callback, %rdx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r10
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movl	%r8d, %ecx
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-24(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gtk_scale_button_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_scale_button_set_value
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_prop_scale_button_callback, %rax
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -76(%rbp)         # 4-byte Spill
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_prop_scale_button_notify, .Lfunc_end12-gimp_prop_scale_button_notify
	.cfi_endproc

	.globl	gimp_prop_spin_scale_new
	.align	16, 0x90
	.type	gimp_prop_spin_scale_new,@function
gimp_prop_spin_scale_new:               # @gimp_prop_spin_scale_new
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
	subq	$160, %rsp
	movabsq	$.L__func__.gimp_prop_spin_scale_new, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm1, -48(%rbp)
	movl	%ecx, -52(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rax, %rdx
	callq	find_param_spec
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB13_14
.LBB13_2:                               # %if.end
	leaq	-88(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	leaq	-104(%rbp), %r8
	movabsq	$.L__func__.gimp_prop_spin_scale_new, %r9
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	get_numeric_values
	cmpl	$0, %eax
	jne	.LBB13_4
# BB#3:                                 # %if.then.3
	movq	$0, -8(%rbp)
	jmp	.LBB13_14
.LBB13_4:                               # %if.end.4
	movq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	g_param_spec_types, %rax
	movq	104(%rax), %rax
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB13_6
# BB#5:                                 # %if.then.6
	movl	$0, -124(%rbp)
	jmp	.LBB13_11
.LBB13_6:                               # %if.else
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_9
# BB#7:                                 # %land.lhs.true
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB13_9
# BB#8:                                 # %if.then.9
	movl	$1, -124(%rbp)
	jmp	.LBB13_10
.LBB13_9:                               # %if.else.10
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB13_10:                              # %if.end.12
	jmp	.LBB13_11
.LBB13_11:                              # %if.end.13
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	jne	.LBB13_13
# BB#12:                                # %if.then.15
	movl	$0, -52(%rbp)
.LBB13_13:                              # %if.end.16
	xorps	%xmm5, %xmm5
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-104(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-48(%rbp), %xmm4        # xmm4 = mem[0],zero
	callq	gtk_adjustment_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movl	-52(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_spin_scale_new
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	%rax, %rdi
	callq	set_param_spec
	movabsq	$.L.str.2, %rsi
	movabsq	$gimp_prop_adjustment_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$gimp_prop_adjustment_notify, %rcx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	connect_notify
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB13_14:                              # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_prop_spin_scale_new, .Lfunc_end13-gimp_prop_spin_scale_new
	.cfi_endproc

	.align	16, 0x90
	.type	find_param_spec,@function
find_param_spec:                        # @find_param_spec
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-16(%rbp), %rsi
	movq	%rdx, %rdi
	callq	g_object_class_find_property
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.21, %rdi
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_warning
.LBB14_2:                               # %if.end
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	find_param_spec, .Lfunc_end14-find_param_spec
	.cfi_endproc

	.align	16, 0x90
	.type	get_numeric_values,@function
get_numeric_values:                     # @get_numeric_values
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	g_param_spec_types, %rcx
	movq	24(%rcx), %rcx
	movq	%rcx, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB15_2
# BB#1:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB15_7
.LBB15_2:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_5
# BB#3:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB15_5
# BB#4:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB15_6
.LBB15_5:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB15_6:                               # %if.end
	jmp	.LBB15_7
.LBB15_7:                               # %if.end.5
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB15_9
# BB#8:                                 # %if.then.7
	movq	-24(%rbp), %rax
	movq	g_param_spec_types, %rcx
	movq	24(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	leaq	-92(%rbp), %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_get
	cvtsi2sdl	-92(%rbp), %xmm0
	movq	-32(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	movq	-88(%rbp), %rcx
	cvtsi2sdl	72(%rcx), %xmm0
	movq	-40(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	movq	-88(%rbp), %rcx
	cvtsi2sdl	76(%rcx), %xmm0
	movq	-48(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	jmp	.LBB15_30
.LBB15_9:                               # %if.else.14
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	g_param_spec_types, %rax
	movq	32(%rax), %rax
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB15_11
# BB#10:                                # %if.then.23
	movl	$0, -116(%rbp)
	jmp	.LBB15_16
.LBB15_11:                              # %if.else.24
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_14
# BB#12:                                # %land.lhs.true.27
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB15_14
# BB#13:                                # %if.then.32
	movl	$1, -116(%rbp)
	jmp	.LBB15_15
.LBB15_14:                              # %if.else.33
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB15_15:                              # %if.end.35
	jmp	.LBB15_16
.LBB15_16:                              # %if.end.36
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB15_18
# BB#17:                                # %if.then.39
	movq	-24(%rbp), %rdi
	movq	g_param_spec_types(%rip), %rax
	movq	32(%rax), %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -128(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movb	%cl, %dl
	leaq	-132(%rbp), %r8
	movb	%dl, -169(%rbp)         # 1-byte Spill
	movq	%r8, %rdx
	movq	%rax, %rcx
	movb	-169(%rbp), %al         # 1-byte Reload
	callq	g_object_get
	movl	-132(%rbp), %r9d
	movl	%r9d, %ecx
	cvtsi2sdq	%rcx, %xmm0
	movq	-32(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	movq	-128(%rbp), %rcx
	movl	72(%rcx), %r9d
	movl	%r9d, %ecx
	cvtsi2sdq	%rcx, %xmm0
	movq	-40(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	movq	-128(%rbp), %rcx
	movl	76(%rcx), %r9d
	movl	%r9d, %ecx
	cvtsi2sdq	%rcx, %xmm0
	movq	-48(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	jmp	.LBB15_29
.LBB15_18:                              # %if.else.50
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	g_param_spec_types, %rax
	movq	104(%rax), %rax
	movq	%rax, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB15_20
# BB#19:                                # %if.then.59
	movl	$0, -156(%rbp)
	jmp	.LBB15_25
.LBB15_20:                              # %if.else.60
	movq	-144(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_23
# BB#21:                                # %land.lhs.true.63
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB15_23
# BB#22:                                # %if.then.68
	movl	$1, -156(%rbp)
	jmp	.LBB15_24
.LBB15_23:                              # %if.else.69
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -156(%rbp)
.LBB15_24:                              # %if.end.71
	jmp	.LBB15_25
.LBB15_25:                              # %if.end.72
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB15_27
# BB#26:                                # %if.then.75
	movq	-24(%rbp), %rax
	movq	g_param_spec_types, %rcx
	movq	104(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	%edx, %ecx
	movq	%rax, -168(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_get
	movq	-168(%rbp), %rcx
	movsd	72(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	movq	-168(%rbp), %rcx
	movsd	80(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	jmp	.LBB15_28
.LBB15_27:                              # %if.else.82
	movq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.24, %rdi
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movq	-192(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_warning
	movl	$0, -4(%rbp)
	jmp	.LBB15_31
.LBB15_28:                              # %if.end.87
	jmp	.LBB15_29
.LBB15_29:                              # %if.end.88
	jmp	.LBB15_30
.LBB15_30:                              # %if.end.89
	movl	$1, -4(%rbp)
.LBB15_31:                              # %return
	movl	-4(%rbp), %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	get_numeric_values, .Lfunc_end15-get_numeric_values
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4636737291354636288     # double 100
.LCPI16_1:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
	.text
	.align	16, 0x90
	.type	gimp_prop_adjustment_callback,@function
gimp_prop_adjustment_callback:          # @gimp_prop_adjustment_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	get_param_spec
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB16_2
# BB#1:                                 # %if.then
	jmp	.LBB16_73
.LBB16_2:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -40(%rbp)
	movq	g_param_spec_types, %rdi
	movq	24(%rdi), %rdi
	movq	%rdi, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB16_4
# BB#3:                                 # %if.then.4
	movl	$0, -52(%rbp)
	jmp	.LBB16_9
.LBB16_4:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_7
# BB#5:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB16_7
# BB#6:                                 # %if.then.7
	movl	$1, -52(%rbp)
	jmp	.LBB16_8
.LBB16_7:                               # %if.else.8
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB16_8:                               # %if.end.10
	jmp	.LBB16_9
.LBB16_9:                               # %if.end.11
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB16_11
# BB#10:                                # %if.then.13
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rsi
	cvttsd2si	-32(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
	jmp	.LBB16_73
.LBB16_11:                              # %if.else.14
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	g_param_spec_types, %rax
	movq	32(%rax), %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB16_13
# BB#12:                                # %if.then.23
	movl	$0, -76(%rbp)
	jmp	.LBB16_18
.LBB16_13:                              # %if.else.24
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_16
# BB#14:                                # %land.lhs.true.27
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB16_16
# BB#15:                                # %if.then.32
	movl	$1, -76(%rbp)
	jmp	.LBB16_17
.LBB16_16:                              # %if.else.33
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB16_17:                              # %if.end.35
	jmp	.LBB16_18
.LBB16_18:                              # %if.end.36
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB16_20
# BB#19:                                # %if.then.39
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rsi
	cvttsd2si	-32(%rbp), %rdx
	movl	%edx, %eax
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
	jmp	.LBB16_72
.LBB16_20:                              # %if.else.42
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	g_param_spec_types, %rax
	movq	40(%rax), %rax
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB16_22
# BB#21:                                # %if.then.51
	movl	$0, -100(%rbp)
	jmp	.LBB16_27
.LBB16_22:                              # %if.else.52
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_25
# BB#23:                                # %land.lhs.true.55
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB16_25
# BB#24:                                # %if.then.60
	movl	$1, -100(%rbp)
	jmp	.LBB16_26
.LBB16_25:                              # %if.else.61
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB16_26:                              # %if.end.63
	jmp	.LBB16_27
.LBB16_27:                              # %if.end.64
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB16_29
# BB#28:                                # %if.then.67
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rsi
	cvttsd2si	-32(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-208(%rbp), %rdx        # 8-byte Reload
	movb	$0, %al
	callq	g_object_set
	jmp	.LBB16_71
.LBB16_29:                              # %if.else.70
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	g_param_spec_types, %rax
	movq	48(%rax), %rax
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB16_31
# BB#30:                                # %if.then.79
	movl	$0, -124(%rbp)
	jmp	.LBB16_36
.LBB16_31:                              # %if.else.80
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_34
# BB#32:                                # %land.lhs.true.83
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB16_34
# BB#33:                                # %if.then.88
	movl	$1, -124(%rbp)
	jmp	.LBB16_35
.LBB16_34:                              # %if.else.89
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB16_35:                              # %if.end.91
	jmp	.LBB16_36
.LBB16_36:                              # %if.end.92
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB16_38
# BB#37:                                # %if.then.95
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rsi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI16_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %rdx
	movabsq	$-9223372036854775808, %r8 # imm = 0x8000000000000000
	xorq	%r8, %rdx
	cvttsd2si	%xmm0, %r8
	ucomisd	%xmm0, %xmm1
	cmovaq	%r8, %rdx
	movb	$0, %al
	callq	g_object_set
	jmp	.LBB16_70
.LBB16_38:                              # %if.else.98
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	g_param_spec_types, %rax
	movq	56(%rax), %rax
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB16_40
# BB#39:                                # %if.then.107
	movl	$0, -148(%rbp)
	jmp	.LBB16_45
.LBB16_40:                              # %if.else.108
	movq	-136(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_43
# BB#41:                                # %land.lhs.true.111
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB16_43
# BB#42:                                # %if.then.116
	movl	$1, -148(%rbp)
	jmp	.LBB16_44
.LBB16_43:                              # %if.else.117
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -148(%rbp)
.LBB16_44:                              # %if.end.119
	jmp	.LBB16_45
.LBB16_45:                              # %if.end.120
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB16_47
# BB#46:                                # %if.then.123
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rsi
	cvttsd2si	-32(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-216(%rbp), %rdx        # 8-byte Reload
	movb	$0, %al
	callq	g_object_set
	jmp	.LBB16_69
.LBB16_47:                              # %if.else.126
	movq	-24(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	g_param_spec_types, %rax
	movq	64(%rax), %rax
	movq	%rax, -168(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.LBB16_49
# BB#48:                                # %if.then.135
	movl	$0, -172(%rbp)
	jmp	.LBB16_54
.LBB16_49:                              # %if.else.136
	movq	-160(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_52
# BB#50:                                # %land.lhs.true.139
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-168(%rbp), %rax
	jne	.LBB16_52
# BB#51:                                # %if.then.144
	movl	$1, -172(%rbp)
	jmp	.LBB16_53
.LBB16_52:                              # %if.else.145
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -172(%rbp)
.LBB16_53:                              # %if.end.147
	jmp	.LBB16_54
.LBB16_54:                              # %if.end.148
	movl	-172(%rbp), %eax
	movl	%eax, -176(%rbp)
	cmpl	$0, -176(%rbp)
	je	.LBB16_56
# BB#55:                                # %if.then.151
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rsi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI16_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %rdx
	movabsq	$-9223372036854775808, %r8 # imm = 0x8000000000000000
	xorq	%r8, %rdx
	cvttsd2si	%xmm0, %r8
	ucomisd	%xmm0, %xmm1
	cmovaq	%r8, %rdx
	movb	$0, %al
	callq	g_object_set
	jmp	.LBB16_68
.LBB16_56:                              # %if.else.154
	movq	-24(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	g_param_spec_types, %rax
	movq	104(%rax), %rax
	movq	%rax, -192(%rbp)
	cmpq	$0, -184(%rbp)
	jne	.LBB16_58
# BB#57:                                # %if.then.163
	movl	$0, -196(%rbp)
	jmp	.LBB16_63
.LBB16_58:                              # %if.else.164
	movq	-184(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_61
# BB#59:                                # %land.lhs.true.167
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-192(%rbp), %rax
	jne	.LBB16_61
# BB#60:                                # %if.then.172
	movl	$1, -196(%rbp)
	jmp	.LBB16_62
.LBB16_61:                              # %if.else.173
	movq	-184(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -196(%rbp)
.LBB16_62:                              # %if.end.175
	jmp	.LBB16_63
.LBB16_63:                              # %if.end.176
	movl	-196(%rbp), %eax
	movl	%eax, -200(%rbp)
	cmpl	$0, -200(%rbp)
	je	.LBB16_67
# BB#64:                                # %if.then.179
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	%eax, %edx
	cmpl	$0, %edx
	je	.LBB16_66
# BB#65:                                # %if.then.184
	movsd	.LCPI16_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
.LBB16_66:                              # %if.end.185
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rsi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movb	$1, %al
	callq	g_object_set
.LBB16_67:                              # %if.end.187
	jmp	.LBB16_68
.LBB16_68:                              # %if.end.188
	jmp	.LBB16_69
.LBB16_69:                              # %if.end.189
	jmp	.LBB16_70
.LBB16_70:                              # %if.end.190
	jmp	.LBB16_71
.LBB16_71:                              # %if.end.191
	jmp	.LBB16_72
.LBB16_72:                              # %if.end.192
	jmp	.LBB16_73
.LBB16_73:                              # %if.end.193
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_prop_adjustment_callback, .Lfunc_end16-gimp_prop_adjustment_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4636737291354636288     # double 100
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI17_1:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI17_2:
	.quad	4841369599423283200     # double 4.503600e+15
	.quad	4985484787499139072     # double 1.934281e+25
	.text
	.align	16, 0x90
	.type	gimp_prop_adjustment_notify,@function
gimp_prop_adjustment_notify:            # @gimp_prop_adjustment_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
	.cfi_def_cfa_register %rbp
	subq	$352, %rsp              # imm = 0x160
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	g_param_spec_types, %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB17_2
# BB#1:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB17_7
.LBB17_2:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_5
# BB#3:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB17_5
# BB#4:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB17_6
.LBB17_5:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB17_6:                               # %if.end
	jmp	.LBB17_7
.LBB17_7:                               # %if.end.5
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB17_9
# BB#8:                                 # %if.then.7
	leaq	-60(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-256(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	g_object_get
	cvtsi2sdl	-60(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB17_72
.LBB17_9:                               # %if.else.9
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	g_param_spec_types, %rax
	movq	32(%rax), %rax
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB17_11
# BB#10:                                # %if.then.18
	movl	$0, -84(%rbp)
	jmp	.LBB17_16
.LBB17_11:                              # %if.else.19
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_14
# BB#12:                                # %land.lhs.true.22
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB17_14
# BB#13:                                # %if.then.27
	movl	$1, -84(%rbp)
	jmp	.LBB17_15
.LBB17_14:                              # %if.else.28
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB17_15:                              # %if.end.30
	jmp	.LBB17_16
.LBB17_16:                              # %if.end.31
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB17_18
# BB#17:                                # %if.then.34
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movb	%cl, %dl
	leaq	-92(%rbp), %r8
	movb	%dl, -257(%rbp)         # 1-byte Spill
	movq	%r8, %rdx
	movq	%rax, %rcx
	movb	-257(%rbp), %al         # 1-byte Reload
	callq	g_object_get
	movl	-92(%rbp), %r9d
	movl	%r9d, %ecx
	cvtsi2sdq	%rcx, %xmm0
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB17_71
.LBB17_18:                              # %if.else.38
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	g_param_spec_types, %rax
	movq	40(%rax), %rax
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB17_20
# BB#19:                                # %if.then.47
	movl	$0, -116(%rbp)
	jmp	.LBB17_25
.LBB17_20:                              # %if.else.48
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_23
# BB#21:                                # %land.lhs.true.51
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB17_23
# BB#22:                                # %if.then.56
	movl	$1, -116(%rbp)
	jmp	.LBB17_24
.LBB17_23:                              # %if.else.57
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB17_24:                              # %if.end.59
	jmp	.LBB17_25
.LBB17_25:                              # %if.end.60
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB17_27
# BB#26:                                # %if.then.63
	leaq	-128(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-272(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	g_object_get
	cvtsi2sdq	-128(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB17_70
.LBB17_27:                              # %if.else.67
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	g_param_spec_types, %rax
	movq	48(%rax), %rax
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB17_29
# BB#28:                                # %if.then.76
	movl	$0, -148(%rbp)
	jmp	.LBB17_34
.LBB17_29:                              # %if.else.77
	movq	-136(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_32
# BB#30:                                # %land.lhs.true.80
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB17_32
# BB#31:                                # %if.then.85
	movl	$1, -148(%rbp)
	jmp	.LBB17_33
.LBB17_32:                              # %if.else.86
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -148(%rbp)
.LBB17_33:                              # %if.end.88
	jmp	.LBB17_34
.LBB17_34:                              # %if.end.89
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB17_36
# BB#35:                                # %if.then.92
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movb	%cl, %dl
	leaq	-160(%rbp), %r8
	movb	%dl, -273(%rbp)         # 1-byte Spill
	movq	%r8, %rdx
	movq	%rax, %rcx
	movb	-273(%rbp), %al         # 1-byte Reload
	callq	g_object_get
	movaps	.LCPI17_1(%rip), %xmm0  # xmm0 = [1127219200,1160773632,0,0]
	movq	-160(%rbp), %xmm1       # xmm1 = mem[0],zero
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movapd	.LCPI17_2(%rip), %xmm0  # xmm0 = [4.503600e+15,1.934281e+25]
	subpd	%xmm0, %xmm1
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	addpd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB17_69
.LBB17_36:                              # %if.else.96
	movq	-16(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	g_param_spec_types, %rax
	movq	56(%rax), %rax
	movq	%rax, -176(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB17_38
# BB#37:                                # %if.then.105
	movl	$0, -180(%rbp)
	jmp	.LBB17_43
.LBB17_38:                              # %if.else.106
	movq	-168(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_41
# BB#39:                                # %land.lhs.true.109
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-176(%rbp), %rax
	jne	.LBB17_41
# BB#40:                                # %if.then.114
	movl	$1, -180(%rbp)
	jmp	.LBB17_42
.LBB17_41:                              # %if.else.115
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -180(%rbp)
.LBB17_42:                              # %if.end.117
	jmp	.LBB17_43
.LBB17_43:                              # %if.end.118
	movl	-180(%rbp), %eax
	movl	%eax, -184(%rbp)
	cmpl	$0, -184(%rbp)
	je	.LBB17_45
# BB#44:                                # %if.then.121
	leaq	-192(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-288(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	g_object_get
	cvtsi2sdq	-192(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB17_68
.LBB17_45:                              # %if.else.125
	movq	-16(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	g_param_spec_types, %rax
	movq	64(%rax), %rax
	movq	%rax, -208(%rbp)
	cmpq	$0, -200(%rbp)
	jne	.LBB17_47
# BB#46:                                # %if.then.134
	movl	$0, -212(%rbp)
	jmp	.LBB17_52
.LBB17_47:                              # %if.else.135
	movq	-200(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_50
# BB#48:                                # %land.lhs.true.138
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-208(%rbp), %rax
	jne	.LBB17_50
# BB#49:                                # %if.then.143
	movl	$1, -212(%rbp)
	jmp	.LBB17_51
.LBB17_50:                              # %if.else.144
	movq	-200(%rbp), %rdi
	movq	-208(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -212(%rbp)
.LBB17_51:                              # %if.end.146
	jmp	.LBB17_52
.LBB17_52:                              # %if.end.147
	movl	-212(%rbp), %eax
	movl	%eax, -216(%rbp)
	cmpl	$0, -216(%rbp)
	je	.LBB17_54
# BB#53:                                # %if.then.150
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movb	%cl, %dl
	leaq	-224(%rbp), %r8
	movb	%dl, -289(%rbp)         # 1-byte Spill
	movq	%r8, %rdx
	movq	%rax, %rcx
	movb	-289(%rbp), %al         # 1-byte Reload
	callq	g_object_get
	movaps	.LCPI17_1(%rip), %xmm0  # xmm0 = [1127219200,1160773632,0,0]
	movq	-224(%rbp), %xmm1       # xmm1 = mem[0],zero
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movapd	.LCPI17_2(%rip), %xmm0  # xmm0 = [4.503600e+15,1.934281e+25]
	subpd	%xmm0, %xmm1
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	addpd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB17_67
.LBB17_54:                              # %if.else.154
	movq	-16(%rbp), %rax
	movq	%rax, -232(%rbp)
	movq	g_param_spec_types, %rax
	movq	104(%rax), %rax
	movq	%rax, -240(%rbp)
	cmpq	$0, -232(%rbp)
	jne	.LBB17_56
# BB#55:                                # %if.then.163
	movl	$0, -244(%rbp)
	jmp	.LBB17_61
.LBB17_56:                              # %if.else.164
	movq	-232(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_59
# BB#57:                                # %land.lhs.true.167
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-240(%rbp), %rax
	jne	.LBB17_59
# BB#58:                                # %if.then.172
	movl	$1, -244(%rbp)
	jmp	.LBB17_60
.LBB17_59:                              # %if.else.173
	movq	-232(%rbp), %rdi
	movq	-240(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -244(%rbp)
.LBB17_60:                              # %if.end.175
	jmp	.LBB17_61
.LBB17_61:                              # %if.end.176
	movl	-244(%rbp), %eax
	movl	%eax, -248(%rbp)
	cmpl	$0, -248(%rbp)
	je	.LBB17_65
# BB#62:                                # %if.then.179
	leaq	-32(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-304(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	g_object_get
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	%eax, %r8d
	cmpl	$0, %r8d
	je	.LBB17_64
# BB#63:                                # %if.then.185
	movsd	.LCPI17_0, %xmm0        # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
.LBB17_64:                              # %if.end.186
	jmp	.LBB17_66
.LBB17_65:                              # %if.else.187
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	callq	g_type_name
	movabsq	$.L.str.19, %rdi
	movabsq	$.L__func__.gimp_prop_adjustment_notify, %rsi
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_warning
	jmp	.LBB17_74
.LBB17_66:                              # %if.end.191
	jmp	.LBB17_67
.LBB17_67:                              # %if.end.192
	jmp	.LBB17_68
.LBB17_68:                              # %if.end.193
	jmp	.LBB17_69
.LBB17_69:                              # %if.end.194
	jmp	.LBB17_70
.LBB17_70:                              # %if.end.195
	jmp	.LBB17_71
.LBB17_71:                              # %if.end.196
	jmp	.LBB17_72
.LBB17_72:                              # %if.end.197
	movq	-24(%rbp), %rdi
	callq	gtk_adjustment_get_value
	ucomisd	-32(%rbp), %xmm0
	jne	.LBB17_73
	jp	.LBB17_73
	jmp	.LBB17_74
.LBB17_73:                              # %if.then.201
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_prop_adjustment_callback, %rdx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -312(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-312(%rbp), %r10        # 8-byte Reload
	movq	%r9, -320(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-320(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-24(%rbp), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	%eax, -324(%rbp)        # 4-byte Spill
	callq	gtk_adjustment_set_value
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_prop_adjustment_callback, %rdi
	movq	-24(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-336(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -340(%rbp)        # 4-byte Spill
.LBB17_74:                              # %if.end.204
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_prop_adjustment_notify, .Lfunc_end17-gimp_prop_adjustment_notify
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4607182418800017408     # double 1
.LCPI18_1:
	.quad	4621819117588971520     # double 10
.LCPI18_2:
	.quad	4636737291354636288     # double 100
	.text
	.globl	gimp_prop_opacity_spin_scale_new
	.align	16, 0x90
	.type	gimp_prop_opacity_spin_scale_new,@function
gimp_prop_opacity_spin_scale_new:       # @gimp_prop_opacity_spin_scale_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp58:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movabsq	$.L__func__.gimp_prop_opacity_spin_scale_new, %rcx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	g_param_spec_types, %rdx
	movq	104(%rdx), %rdx
	callq	check_param_spec_w
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB18_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB18_3
.LBB18_2:                               # %if.end
	leaq	-64(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movb	$0, %al
	callq	g_object_get
	movsd	.LCPI18_2, %xmm0        # xmm0 = mem[0],zero
	mulsd	-64(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-40(%rbp), %rcx
	movq	g_param_spec_types, %rdx
	movq	104(%rdx), %rsi
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movsd	.LCPI18_2, %xmm0        # xmm0 = mem[0],zero
	mulsd	72(%rax), %xmm0
	movsd	%xmm0, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	g_param_spec_types, %rcx
	movq	104(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movsd	.LCPI18_0, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI18_1, %xmm4        # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	movsd	.LCPI18_2, %xmm0        # xmm0 = mem[0],zero
	mulsd	80(%rax), %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	callq	gtk_adjustment_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_spin_scale_new
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	%rax, %rdi
	callq	set_param_spec
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movl	$1, %r8d
	movl	%r8d, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
	movabsq	$.L.str.2, %rsi
	movabsq	$gimp_prop_adjustment_callback, %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$gimp_prop_adjustment_notify, %rcx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	connect_notify
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB18_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_prop_opacity_spin_scale_new, .Lfunc_end18-gimp_prop_opacity_spin_scale_new
	.cfi_endproc

	.globl	gimp_prop_view_new
	.align	16, 0x90
	.type	gimp_prop_view_new,@function
gimp_prop_view_new:                     # @gimp_prop_view_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp61:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movabsq	$.L__func__.gimp_prop_view_new, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	g_param_spec_types, %rdx
	movq	152(%rdx), %rdx
	movq	%rax, %rcx
	callq	check_param_spec_w
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB19_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB19_9
.LBB19_2:                               # %if.end
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	jne	.LBB19_4
# BB#3:                                 # %if.then.4
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.4, %rdi
	movabsq	$.L__func__.gimp_prop_view_new, %rsi
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_warning
	movq	$0, -8(%rbp)
	jmp	.LBB19_9
.LBB19_4:                               # %if.end.6
	movq	-32(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rdi
	movq	24(%rdi), %rdx
	movl	-36(%rbp), %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	%esi, -92(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movl	%ecx, -96(%rbp)         # 4-byte Spill
	movl	%r8d, %ecx
	movl	-96(%rbp), %r8d         # 4-byte Reload
	movl	-96(%rbp), %r9d         # 4-byte Reload
	callq	gimp_view_new_by_types
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB19_6
# BB#5:                                 # %if.then.11
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_type_name
	movabsq	$.L.str.5, %rdi
	movabsq	$.L__func__.gimp_prop_view_new, %rsi
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_warning
	movq	$0, -8(%rbp)
	jmp	.LBB19_9
.LBB19_6:                               # %if.end.14
	leaq	-64(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	g_object_get
	cmpq	$0, -64(%rbp)
	je	.LBB19_8
# BB#7:                                 # %if.then.16
	movq	-56(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_view_set_viewable
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB19_8:                               # %if.end.19
	movl	$80, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	callq	set_param_spec
	movabsq	$gimp_prop_view_drop, %rdx
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	callq	gimp_dnd_viewable_dest_add
	movabsq	$gimp_prop_view_notify, %rcx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	connect_notify
	movq	-56(%rbp), %rcx
	movq	%rcx, -8(%rbp)
.LBB19_9:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_prop_view_new, .Lfunc_end19-gimp_prop_view_new
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
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
	je	.LBB20_2
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
.LBB20_2:                               # %entry
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
	movl	$.L.str.12, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end20:
	.size	g_warning, .Lfunc_end20-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_view_drop,@function
gimp_prop_view_drop:                    # @gimp_prop_view_drop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp67:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$80, %eax
	movl	%eax, %r9d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%r9, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	get_param_spec
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB21_2
# BB#1:                                 # %if.then
	jmp	.LBB21_3
.LBB21_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	%edx, %ecx
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
.LBB21_3:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_prop_view_drop, .Lfunc_end21-gimp_prop_view_drop
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_view_notify,@function
gimp_prop_view_notify:                  # @gimp_prop_view_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp70:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-32(%rbp), %rax
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_get
	movq	-24(%rbp), %rcx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_view_set_viewable
	cmpq	$0, -32(%rbp)
	je	.LBB22_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB22_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_prop_view_notify, .Lfunc_end22-gimp_prop_view_notify
	.cfi_endproc

	.globl	gimp_prop_number_pair_entry_new
	.align	16, 0x90
	.type	gimp_prop_number_pair_entry_new,@function
gimp_prop_number_pair_entry_new:        # @gimp_prop_number_pair_entry_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
.Ltmp72:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp73:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$312, %rsp              # imm = 0x138
.Ltmp74:
	.cfi_offset %rbx, -56
.Ltmp75:
	.cfi_offset %r12, -48
.Ltmp76:
	.cfi_offset %r13, -40
.Ltmp77:
	.cfi_offset %r14, -32
.Ltmp78:
	.cfi_offset %r15, -24
	movl	40(%rbp), %eax
	movq	32(%rbp), %r10
	movl	24(%rbp), %r11d
	movl	16(%rbp), %ebx
	movl	$48, %r14d
	movl	%r14d, %r15d
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movq	%r9, -88(%rbp)
	movl	%ebx, -92(%rbp)
	movl	%r11d, -96(%rbp)
	movq	%r10, -104(%rbp)
	movl	%eax, -108(%rbp)
	movsd	%xmm0, -120(%rbp)
	movsd	%xmm1, -128(%rbp)
	movq	%r15, %rdi
	callq	g_slice_alloc
	leaq	-152(%rbp), %rdx
	leaq	-160(%rbp), %r8
	leaq	-168(%rbp), %rcx
	leaq	-176(%rbp), %rsi
	leaq	-180(%rbp), %rdi
	xorl	%r11d, %r11d
	movl	%r11d, %r9d
	movq	%rax, -136(%rbp)
	movq	-48(%rbp), %rax
	movq	-136(%rbp), %r10
	movq	%rax, (%r10)
	movq	-56(%rbp), %rax
	movq	-136(%rbp), %r10
	movq	%rax, 8(%r10)
	movq	-64(%rbp), %rax
	movq	-136(%rbp), %r10
	movq	%rax, 16(%r10)
	movq	-72(%rbp), %rax
	movq	-136(%rbp), %r10
	movq	%rax, 24(%r10)
	movq	-80(%rbp), %rax
	movq	-136(%rbp), %r10
	movq	%rax, 32(%r10)
	movq	-88(%rbp), %rax
	movq	-136(%rbp), %r10
	movq	%rax, 40(%r10)
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %r10
	movq	-64(%rbp), %r15
	movq	-72(%rbp), %r12
	movq	-80(%rbp), %r13
	movq	-88(%rbp), %r11
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	movq	%r15, %rcx
	movq	%r9, -216(%rbp)         # 8-byte Spill
	movq	%r12, %r9
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	%r13, 8(%rsp)
	movq	-200(%rbp), %r10        # 8-byte Reload
	movq	%r10, 16(%rsp)
	movq	%r11, 24(%rsp)
	movq	-192(%rbp), %r11        # 8-byte Reload
	movq	%r11, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	callq	g_object_get
	movq	-104(%rbp), %rdi
	movl	-108(%rbp), %esi
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_number_pair_entry_new
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rsi
	movabsq	$gimp_prop_number_pair_entry_data_free, %rcx
	movq	-136(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data_full
	movq	-144(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$7, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_width_chars
	movq	-144(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_number_pair_entry_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-180(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_number_pair_entry_set_user_override
	movq	-144(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_number_pair_entry_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-160(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_number_pair_entry_set_values
	movq	-144(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_number_pair_entry_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-176(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_number_pair_entry_set_default_values
	cmpl	$0, -96(%rbp)
	je	.LBB23_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.7, %rsi
	movabsq	$gimp_prop_number_pair_entry_number_pair_numbers_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-144(%rbp), %rdx
	movq	-136(%rbp), %rdi
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-256(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -264(%rbp)        # 8-byte Spill
.LBB23_2:                               # %if.end
	cmpl	$0, -92(%rbp)
	je	.LBB23_4
# BB#3:                                 # %if.then.19
	movabsq	$.L.str.8, %rsi
	movabsq	$gimp_prop_number_pair_entry_number_pair_numbers_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-144(%rbp), %rdx
	movq	-136(%rbp), %rdi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-272(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB23_4:                               # %if.end.21
	movabsq	$.L.str.9, %rsi
	movabsq	$gimp_prop_number_pair_entry_number_pair_user_override_notify, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-144(%rbp), %rdx
	movq	-136(%rbp), %rdi
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-288(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$gimp_prop_number_pair_entry_config_notify, %rcx
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-144(%rbp), %rdx
	movq	%rdx, -296(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-296(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	connect_notify
	movabsq	$gimp_prop_number_pair_entry_config_notify, %rax
	movq	-48(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-144(%rbp), %rcx
	movq	%rax, %rdx
	callq	connect_notify
	movabsq	$gimp_prop_number_pair_entry_config_notify, %rax
	movq	-48(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-144(%rbp), %rcx
	movq	%rax, %rdx
	callq	connect_notify
	movabsq	$gimp_prop_number_pair_entry_config_notify, %rax
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-144(%rbp), %rcx
	movq	%rax, %rdx
	callq	connect_notify
	movabsq	$gimp_prop_number_pair_entry_config_notify, %rax
	movq	-48(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-144(%rbp), %rcx
	movq	%rax, %rdx
	callq	connect_notify
	movq	-144(%rbp), %rax
	addq	$312, %rsp              # imm = 0x138
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_prop_number_pair_entry_new, .Lfunc_end23-gimp_prop_number_pair_entry_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_number_pair_entry_data_free,@function
gimp_prop_number_pair_entry_data_free:  # @gimp_prop_number_pair_entry_data_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp81:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
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
.Lfunc_end24:
	.size	gimp_prop_number_pair_entry_data_free, .Lfunc_end24-gimp_prop_number_pair_entry_data_free
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_number_pair_entry_number_pair_numbers_changed,@function
gimp_prop_number_pair_entry_number_pair_numbers_changed: # @gimp_prop_number_pair_entry_number_pair_numbers_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp84:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_number_pair_entry_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-24(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_number_pair_entry_get_values
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rsi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdx
	movq	16(%rdx), %rdx
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
	movb	$2, %al
	callq	g_object_set
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_prop_number_pair_entry_number_pair_numbers_changed, .Lfunc_end25-gimp_prop_number_pair_entry_number_pair_numbers_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_number_pair_entry_number_pair_user_override_notify,@function
gimp_prop_number_pair_entry_number_pair_user_override_notify: # @gimp_prop_number_pair_entry_number_pair_user_override_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp87:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-28(%rbp), %rax
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-24(%rbp), %rsi
	movq	40(%rsi), %rsi
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_get
	movq	-8(%rbp), %rcx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	callq	gimp_number_pair_entry_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_number_pair_entry_get_user_override
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	je	.LBB26_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-24(%rbp), %rsi
	movq	40(%rsi), %rsi
	movl	-32(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
.LBB26_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_prop_number_pair_entry_number_pair_user_override_notify, .Lfunc_end26-gimp_prop_number_pair_entry_number_pair_user_override_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_number_pair_entry_config_notify,@function
gimp_prop_number_pair_entry_config_notify: # @gimp_prop_number_pair_entry_config_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp88:
	.cfi_def_cfa_offset 16
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp90:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -32(%rbp)
	je	.LBB27_3
# BB#2:                                 # %if.then
	jmp	.LBB27_4
.LBB27_3:                               # %if.else
	movabsq	$.L.str.12, %rdi
	movabsq	$.L__func__.gimp_prop_number_pair_entry_config_notify, %rsi
	movabsq	$.L.str.20, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB27_15
.LBB27_4:                               # %if.end
	jmp	.LBB27_5
.LBB27_5:                               # %do.end
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB27_7
# BB#6:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	16(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB27_8
.LBB27_7:                               # %if.then.7
	leaq	-40(%rbp), %rdx
	leaq	-48(%rbp), %r8
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	-32(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movb	$0, %al
	callq	g_object_get
	movq	-24(%rbp), %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_number_pair_entry_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_number_pair_entry_set_values
	jmp	.LBB27_15
.LBB27_8:                               # %if.else.12
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	24(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB27_10
# BB#9:                                 # %lor.lhs.false.16
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	32(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB27_11
.LBB27_10:                              # %if.then.20
	leaq	-56(%rbp), %rdx
	leaq	-64(%rbp), %r8
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	-32(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movb	$0, %al
	callq	g_object_get
	movq	-24(%rbp), %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	gimp_number_pair_entry_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_number_pair_entry_set_default_values
	jmp	.LBB27_14
.LBB27_11:                              # %if.else.25
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	40(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB27_13
# BB#12:                                # %if.then.29
	leaq	-68(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	g_object_get
	movq	-24(%rbp), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	gimp_number_pair_entry_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-68(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_number_pair_entry_set_user_override
.LBB27_13:                              # %if.end.33
	jmp	.LBB27_14
.LBB27_14:                              # %if.end.34
	jmp	.LBB27_15
.LBB27_15:                              # %if.end.35
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_prop_number_pair_entry_config_notify, .Lfunc_end27-gimp_prop_number_pair_entry_config_notify
	.cfi_endproc

	.globl	gimp_prop_language_combo_box_new
	.align	16, 0x90
	.type	gimp_prop_language_combo_box_new,@function
gimp_prop_language_combo_box_new:       # @gimp_prop_language_combo_box_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp91:
	.cfi_def_cfa_offset 16
.Ltmp92:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp93:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movabsq	$.L__func__.gimp_prop_language_combo_box_new, %rcx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	g_param_spec_types, %rax
	movq	112(%rax), %rdx
	callq	check_param_spec_w
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB28_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB28_3
.LBB28_2:                               # %if.end
	callq	gimp_language_combo_box_new
	leaq	-48(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_get
	movq	-40(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_language_combo_box_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_language_combo_box_set_code
	movq	-48(%rbp), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	g_free
	movl	$80, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	set_param_spec
	movabsq	$.L.str.10, %rsi
	movabsq	$gimp_prop_language_combo_box_callback, %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$gimp_prop_language_combo_box_notify, %rcx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	connect_notify
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB28_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_prop_language_combo_box_new, .Lfunc_end28-gimp_prop_language_combo_box_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_language_combo_box_callback,@function
gimp_prop_language_combo_box_callback:  # @gimp_prop_language_combo_box_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp94:
	.cfi_def_cfa_offset 16
.Ltmp95:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp96:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$104, %rsp
.Ltmp97:
	.cfi_offset %rbx, -24
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	get_param_spec
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB29_2
# BB#1:                                 # %if.then
	jmp	.LBB29_3
.LBB29_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_language_combo_box_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_language_combo_box_get_code
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_prop_language_combo_box_notify, %rdi
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %r9
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %edx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %r8
	movq	8(%r8), %rsi
	movq	-40(%rbp), %rdx
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	g_object_set
	movl	$24, %esi
	xorl	%r11d, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %r8d
	movabsq	$gimp_prop_language_combo_box_notify, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movl	%r11d, %edx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movl	%r11d, %ecx
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-80(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movq	-40(%rbp), %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	g_free
.LBB29_3:                               # %return
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_prop_language_combo_box_callback, .Lfunc_end29-gimp_prop_language_combo_box_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_language_combo_box_notify,@function
gimp_prop_language_combo_box_notify:    # @gimp_prop_language_combo_box_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
.Ltmp99:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp100:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	-32(%rbp), %rax
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_get
	movl	$24, %esi
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movabsq	$gimp_prop_language_combo_box_callback, %rdx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r10
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movl	%r8d, %ecx
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-24(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_language_combo_box_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_language_combo_box_set_code
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_prop_language_combo_box_callback, %rdi
	movq	-24(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-72(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_unblock_matched
	movq	-32(%rbp), %rdi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	g_free
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_prop_language_combo_box_notify, .Lfunc_end30-gimp_prop_language_combo_box_notify
	.cfi_endproc

	.globl	gimp_prop_language_entry_new
	.align	16, 0x90
	.type	gimp_prop_language_entry_new,@function
gimp_prop_language_entry_new:           # @gimp_prop_language_entry_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp101:
	.cfi_def_cfa_offset 16
.Ltmp102:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp103:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movabsq	$.L__func__.gimp_prop_language_entry_new, %rcx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	g_param_spec_types, %rax
	movq	112(%rax), %rdx
	callq	check_param_spec_w
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB31_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB31_3
.LBB31_2:                               # %if.end
	callq	gimp_language_entry_new
	leaq	-48(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_get
	movq	-40(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_language_entry_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_language_entry_set_code
	movq	-48(%rbp), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	g_free
	movl	$80, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	set_param_spec
	movabsq	$.L.str.10, %rsi
	movabsq	$gimp_prop_language_entry_callback, %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$gimp_prop_language_entry_notify, %rcx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	connect_notify
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB31_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_prop_language_entry_new, .Lfunc_end31-gimp_prop_language_entry_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_language_entry_callback,@function
gimp_prop_language_entry_callback:      # @gimp_prop_language_entry_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp104:
	.cfi_def_cfa_offset 16
.Ltmp105:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp106:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$104, %rsp
.Ltmp107:
	.cfi_offset %rbx, -24
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	get_param_spec
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB32_2
# BB#1:                                 # %if.then
	jmp	.LBB32_3
.LBB32_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_language_entry_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_language_entry_get_code
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_prop_language_entry_notify, %rdi
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %r9
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %edx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %r8
	movq	8(%r8), %rsi
	movq	-40(%rbp), %rdx
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	g_object_set
	movl	$24, %esi
	xorl	%r11d, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %r8d
	movabsq	$gimp_prop_language_entry_notify, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movl	%r11d, %edx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movl	%r11d, %ecx
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-80(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB32_3:                               # %return
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_prop_language_entry_callback, .Lfunc_end32-gimp_prop_language_entry_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_language_entry_notify,@function
gimp_prop_language_entry_notify:        # @gimp_prop_language_entry_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp110:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	-32(%rbp), %rax
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_get
	movl	$24, %esi
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movabsq	$gimp_prop_language_entry_callback, %rdx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r10
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movl	%r8d, %ecx
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-24(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_language_entry_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_language_entry_set_code
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_prop_language_entry_callback, %rdi
	movq	-24(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-72(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_unblock_matched
	movq	-32(%rbp), %rdi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	g_free
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_prop_language_entry_notify, .Lfunc_end33-gimp_prop_language_entry_notify
	.cfi_endproc

	.globl	gimp_prop_icon_picker_new
	.align	16, 0x90
	.type	gimp_prop_icon_picker_new,@function
gimp_prop_icon_picker_new:              # @gimp_prop_icon_picker_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp113:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movabsq	$.L__func__.gimp_prop_icon_picker_new, %rcx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	g_param_spec_types, %rdx
	movq	112(%rdx), %rdx
	callq	check_param_spec_w
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB34_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB34_3
.LBB34_2:                               # %if.end
	leaq	-56(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movb	$0, %al
	callq	g_object_get
	movq	-32(%rbp), %rdi
	callq	gimp_icon_picker_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_icon_picker_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_icon_picker_set_stock_id
	movq	-56(%rbp), %rdi
	callq	g_free
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	%rax, %rdi
	callq	set_param_spec
	movabsq	$.L.str.11, %rsi
	movabsq	$gimp_prop_icon_picker_callback, %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$gimp_prop_icon_picker_notify, %rcx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	connect_notify
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB34_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_prop_icon_picker_new, .Lfunc_end34-gimp_prop_icon_picker_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_icon_picker_callback,@function
gimp_prop_icon_picker_callback:         # @gimp_prop_icon_picker_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp114:
	.cfi_def_cfa_offset 16
.Ltmp115:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp116:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$104, %rsp
.Ltmp117:
	.cfi_offset %rbx, -24
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	get_param_spec
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB35_2
# BB#1:                                 # %if.then
	jmp	.LBB35_3
.LBB35_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_icon_picker_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_icon_picker_get_stock_id
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_prop_icon_picker_notify, %rdi
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %r9
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %edx
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %r8
	movq	8(%r8), %rsi
	movq	-48(%rbp), %rdx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	g_object_set
	movl	$24, %esi
	xorl	%r11d, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %r8d
	movabsq	$gimp_prop_icon_picker_notify, %rcx
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movl	%r11d, %edx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movl	%r11d, %ecx
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-88(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB35_3:                               # %return
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_prop_icon_picker_callback, .Lfunc_end35-gimp_prop_icon_picker_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_icon_picker_notify,@function
gimp_prop_icon_picker_notify:           # @gimp_prop_icon_picker_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp118:
	.cfi_def_cfa_offset 16
.Ltmp119:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp120:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	-32(%rbp), %rax
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_get
	movl	$24, %esi
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movabsq	$gimp_prop_icon_picker_callback, %rdx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r10
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movl	%r8d, %ecx
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-24(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_icon_picker_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_icon_picker_set_stock_id
	movq	-32(%rbp), %rdi
	callq	g_free
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_prop_icon_picker_callback, %rax
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -76(%rbp)         # 4-byte Spill
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_prop_icon_picker_notify, .Lfunc_end36-gimp_prop_icon_picker_notify
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI37_0:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI37_1:
	.long	1056964608              # float 0.5
	.text
	.globl	gimp_prop_table_new
	.align	16, 0x90
	.type	gimp_prop_table_new,@function
gimp_prop_table_new:                    # @gimp_prop_table_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp121:
	.cfi_def_cfa_offset 16
.Ltmp122:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp123:
	.cfi_def_cfa_register %rbp
	subq	$624, %rsp              # imm = 0x270
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, -68(%rbp)
# BB#1:                                 # %do.body
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a
	cmpl	$0, %eax
	je	.LBB37_3
# BB#2:                                 # %if.then
	jmp	.LBB37_4
.LBB37_3:                               # %if.else
	movabsq	$.L.str.12, %rdi
	movabsq	$.L__func__.gimp_prop_table_new, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB37_132
.LBB37_4:                               # %if.end
	jmp	.LBB37_5
.LBB37_5:                               # %do.end
	jmp	.LBB37_6
.LBB37_6:                               # %do.body.1
	cmpq	$0, -32(%rbp)
	je	.LBB37_15
# BB#7:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB37_9
# BB#8:                                 # %if.then.4
	movl	$0, -92(%rbp)
	jmp	.LBB37_14
.LBB37_9:                               # %if.else.5
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB37_12
# BB#10:                                # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB37_12
# BB#11:                                # %if.then.9
	movl	$1, -92(%rbp)
	jmp	.LBB37_13
.LBB37_12:                              # %if.else.10
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB37_13:                              # %if.end.12
	jmp	.LBB37_14
.LBB37_14:                              # %if.end.13
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB37_16
.LBB37_15:                              # %if.then.15
	jmp	.LBB37_17
.LBB37_16:                              # %if.else.16
	movabsq	$.L.str.12, %rdi
	movabsq	$.L__func__.gimp_prop_table_new, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB37_132
.LBB37_17:                              # %if.end.17
	jmp	.LBB37_18
.LBB37_18:                              # %do.end.18
	leaq	-60(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_class_list_properties
	movl	$1, %edi
	movq	%rax, -56(%rbp)
	callq	gtk_size_group_new
	movl	$3, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	movq	%rax, -48(%rbp)
	callq	gtk_table_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-40(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movl	$0, -64(%rbp)
.LBB37_19:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jae	.LBB37_131
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB37_19 Depth=1
	movslq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -104(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	-104(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	jne	.LBB37_22
# BB#21:                                # %if.then.34
                                        #   in Loop: Header=BB37_19 Depth=1
	jmp	.LBB37_130
.LBB37_22:                              # %if.end.35
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	g_param_spec_types, %rax
	movq	112(%rax), %rax
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB37_24
# BB#23:                                # %if.then.44
                                        #   in Loop: Header=BB37_19 Depth=1
	movl	$0, -140(%rbp)
	jmp	.LBB37_29
.LBB37_24:                              # %if.else.45
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB37_27
# BB#25:                                # %land.lhs.true.48
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB37_27
# BB#26:                                # %if.then.52
                                        #   in Loop: Header=BB37_19 Depth=1
	movl	$1, -140(%rbp)
	jmp	.LBB37_28
.LBB37_27:                              # %if.else.53
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB37_28:                              # %if.end.55
                                        #   in Loop: Header=BB37_19 Depth=1
	jmp	.LBB37_29
.LBB37_29:                              # %if.end.56
                                        #   in Loop: Header=BB37_19 Depth=1
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB37_46
# BB#30:                                # %if.then.59
                                        #   in Loop: Header=BB37_19 Depth=1
	cmpl	$0, gimp_prop_table_new.multiline_quark
	jne	.LBB37_32
# BB#31:                                # %if.then.61
                                        #   in Loop: Header=BB37_19 Depth=1
	movabsq	$.L.str.15, %rdi
	callq	g_quark_from_static_string
	movl	%eax, gimp_prop_table_new.multiline_quark
.LBB37_32:                              # %if.end.63
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, -152(%rbp)
	callq	gimp_param_config_path_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB37_34
# BB#33:                                # %if.then.72
                                        #   in Loop: Header=BB37_19 Depth=1
	movl	$0, -164(%rbp)
	jmp	.LBB37_39
.LBB37_34:                              # %if.else.73
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB37_37
# BB#35:                                # %land.lhs.true.76
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB37_37
# BB#36:                                # %if.then.80
                                        #   in Loop: Header=BB37_19 Depth=1
	movl	$1, -164(%rbp)
	jmp	.LBB37_38
.LBB37_37:                              # %if.else.81
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB37_38:                              # %if.end.83
                                        #   in Loop: Header=BB37_19 Depth=1
	jmp	.LBB37_39
.LBB37_39:                              # %if.end.84
                                        #   in Loop: Header=BB37_19 Depth=1
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB37_41
# BB#40:                                # %if.then.87
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-16(%rbp), %rdi
	movq	-104(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-104(%rbp), %rax
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -448(%rbp)        # 8-byte Spill
	callq	g_param_spec_get_nick
	xorl	%ecx, %ecx
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	-448(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_file_chooser_button_new
	movq	%rax, -112(%rbp)
	jmp	.LBB37_45
.LBB37_41:                              # %if.else.90
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-104(%rbp), %rdi
	movl	gimp_prop_table_new.multiline_quark, %esi
	callq	g_param_spec_get_qdata
	cmpq	$0, %rax
	je	.LBB37_43
# BB#42:                                # %if.then.93
                                        #   in Loop: Header=BB37_19 Depth=1
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rdi
	movq	-104(%rbp), %rax
	movq	8(%rax), %rsi
	callq	gimp_prop_text_buffer_new
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rdi
	callq	gtk_text_view_new_with_buffer
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	%rax, -184(%rbp)
	movq	%rsi, %rdi
	callq	gtk_scrolled_window_new
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_shadow_type
	movq	-112(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-184(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-184(%rbp), %rdi
	callq	gtk_widget_show
	jmp	.LBB37_44
.LBB37_43:                              # %if.else.104
                                        #   in Loop: Header=BB37_19 Depth=1
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rdi
	movq	-104(%rbp), %rax
	movq	8(%rax), %rsi
	callq	gimp_prop_entry_new
	movq	%rax, -112(%rbp)
.LBB37_44:                              # %if.end.107
                                        #   in Loop: Header=BB37_19 Depth=1
	jmp	.LBB37_45
.LBB37_45:                              # %if.end.108
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-104(%rbp), %rdi
	callq	g_param_spec_get_nick
	movq	%rax, -120(%rbp)
	jmp	.LBB37_127
.LBB37_46:                              # %if.else.110
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	g_param_spec_types, %rax
	movq	16(%rax), %rax
	movq	%rax, -200(%rbp)
	cmpq	$0, -192(%rbp)
	jne	.LBB37_48
# BB#47:                                # %if.then.119
                                        #   in Loop: Header=BB37_19 Depth=1
	movl	$0, -204(%rbp)
	jmp	.LBB37_53
.LBB37_48:                              # %if.else.120
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-192(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB37_51
# BB#49:                                # %land.lhs.true.123
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-200(%rbp), %rax
	jne	.LBB37_51
# BB#50:                                # %if.then.127
                                        #   in Loop: Header=BB37_19 Depth=1
	movl	$1, -204(%rbp)
	jmp	.LBB37_52
.LBB37_51:                              # %if.else.128
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-192(%rbp), %rdi
	movq	-200(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -204(%rbp)
.LBB37_52:                              # %if.end.130
                                        #   in Loop: Header=BB37_19 Depth=1
	jmp	.LBB37_53
.LBB37_53:                              # %if.end.131
                                        #   in Loop: Header=BB37_19 Depth=1
	movl	-204(%rbp), %eax
	movl	%eax, -208(%rbp)
	cmpl	$0, -208(%rbp)
	je	.LBB37_55
# BB#54:                                # %if.then.134
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-16(%rbp), %rdi
	movq	-104(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-104(%rbp), %rax
	movq	%rdi, -472(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -480(%rbp)        # 8-byte Spill
	callq	g_param_spec_get_nick
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	-480(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_check_button_new
	movq	%rax, -112(%rbp)
	jmp	.LBB37_126
.LBB37_55:                              # %if.else.138
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	g_param_spec_types, %rax
	movq	80(%rax), %rax
	movq	%rax, -224(%rbp)
	cmpq	$0, -216(%rbp)
	jne	.LBB37_57
# BB#56:                                # %if.then.147
                                        #   in Loop: Header=BB37_19 Depth=1
	movl	$0, -228(%rbp)
	jmp	.LBB37_62
.LBB37_57:                              # %if.else.148
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-216(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB37_60
# BB#58:                                # %land.lhs.true.151
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-224(%rbp), %rax
	jne	.LBB37_60
# BB#59:                                # %if.then.155
                                        #   in Loop: Header=BB37_19 Depth=1
	movl	$1, -228(%rbp)
	jmp	.LBB37_61
.LBB37_60:                              # %if.else.156
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-216(%rbp), %rdi
	movq	-224(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -228(%rbp)
.LBB37_61:                              # %if.end.158
                                        #   in Loop: Header=BB37_19 Depth=1
	jmp	.LBB37_62
.LBB37_62:                              # %if.end.159
                                        #   in Loop: Header=BB37_19 Depth=1
	movl	-228(%rbp), %eax
	movl	%eax, -232(%rbp)
	cmpl	$0, -232(%rbp)
	je	.LBB37_64
# BB#63:                                # %if.then.162
                                        #   in Loop: Header=BB37_19 Depth=1
	xorl	%eax, %eax
	movq	-16(%rbp), %rdi
	movq	-104(%rbp), %rcx
	movq	8(%rcx), %rsi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	gimp_prop_enum_combo_box_new
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rdi
	callq	g_param_spec_get_nick
	movq	%rax, -120(%rbp)
	jmp	.LBB37_125
.LBB37_64:                              # %if.else.166
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	g_param_spec_types, %rax
	movq	24(%rax), %rax
	movq	%rax, -248(%rbp)
	cmpq	$0, -240(%rbp)
	jne	.LBB37_66
# BB#65:                                # %if.then.175
                                        #   in Loop: Header=BB37_19 Depth=1
	movl	$0, -252(%rbp)
	jmp	.LBB37_71
.LBB37_66:                              # %if.else.176
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-240(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB37_69
# BB#67:                                # %land.lhs.true.179
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-248(%rbp), %rax
	jne	.LBB37_69
# BB#68:                                # %if.then.183
                                        #   in Loop: Header=BB37_19 Depth=1
	movl	$1, -252(%rbp)
	jmp	.LBB37_70
.LBB37_69:                              # %if.else.184
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-240(%rbp), %rdi
	movq	-248(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -252(%rbp)
.LBB37_70:                              # %if.end.186
                                        #   in Loop: Header=BB37_19 Depth=1
	jmp	.LBB37_71
.LBB37_71:                              # %if.end.187
                                        #   in Loop: Header=BB37_19 Depth=1
	movl	-252(%rbp), %eax
	movl	%eax, -256(%rbp)
	cmpl	$0, -256(%rbp)
	jne	.LBB37_96
# BB#72:                                # %lor.lhs.false.190
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, -264(%rbp)
	movq	g_param_spec_types, %rax
	movq	32(%rax), %rax
	movq	%rax, -272(%rbp)
	cmpq	$0, -264(%rbp)
	jne	.LBB37_74
# BB#73:                                # %if.then.199
                                        #   in Loop: Header=BB37_19 Depth=1
	movl	$0, -276(%rbp)
	jmp	.LBB37_79
.LBB37_74:                              # %if.else.200
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-264(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB37_77
# BB#75:                                # %land.lhs.true.203
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-272(%rbp), %rax
	jne	.LBB37_77
# BB#76:                                # %if.then.207
                                        #   in Loop: Header=BB37_19 Depth=1
	movl	$1, -276(%rbp)
	jmp	.LBB37_78
.LBB37_77:                              # %if.else.208
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-264(%rbp), %rdi
	movq	-272(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -276(%rbp)
.LBB37_78:                              # %if.end.210
                                        #   in Loop: Header=BB37_19 Depth=1
	jmp	.LBB37_79
.LBB37_79:                              # %if.end.211
                                        #   in Loop: Header=BB37_19 Depth=1
	movl	-276(%rbp), %eax
	movl	%eax, -280(%rbp)
	cmpl	$0, -280(%rbp)
	jne	.LBB37_96
# BB#80:                                # %lor.lhs.false.214
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	g_param_spec_types, %rax
	movq	96(%rax), %rax
	movq	%rax, -296(%rbp)
	cmpq	$0, -288(%rbp)
	jne	.LBB37_82
# BB#81:                                # %if.then.223
                                        #   in Loop: Header=BB37_19 Depth=1
	movl	$0, -300(%rbp)
	jmp	.LBB37_87
.LBB37_82:                              # %if.else.224
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-288(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB37_85
# BB#83:                                # %land.lhs.true.227
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-296(%rbp), %rax
	jne	.LBB37_85
# BB#84:                                # %if.then.231
                                        #   in Loop: Header=BB37_19 Depth=1
	movl	$1, -300(%rbp)
	jmp	.LBB37_86
.LBB37_85:                              # %if.else.232
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-288(%rbp), %rdi
	movq	-296(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -300(%rbp)
.LBB37_86:                              # %if.end.234
                                        #   in Loop: Header=BB37_19 Depth=1
	jmp	.LBB37_87
.LBB37_87:                              # %if.end.235
                                        #   in Loop: Header=BB37_19 Depth=1
	movl	-300(%rbp), %eax
	movl	%eax, -304(%rbp)
	cmpl	$0, -304(%rbp)
	jne	.LBB37_96
# BB#88:                                # %lor.lhs.false.238
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, -312(%rbp)
	movq	g_param_spec_types, %rax
	movq	104(%rax), %rax
	movq	%rax, -320(%rbp)
	cmpq	$0, -312(%rbp)
	jne	.LBB37_90
# BB#89:                                # %if.then.247
                                        #   in Loop: Header=BB37_19 Depth=1
	movl	$0, -324(%rbp)
	jmp	.LBB37_95
.LBB37_90:                              # %if.else.248
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-312(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB37_93
# BB#91:                                # %land.lhs.true.251
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-312(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-320(%rbp), %rax
	jne	.LBB37_93
# BB#92:                                # %if.then.255
                                        #   in Loop: Header=BB37_19 Depth=1
	movl	$1, -324(%rbp)
	jmp	.LBB37_94
.LBB37_93:                              # %if.else.256
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-312(%rbp), %rdi
	movq	-320(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -324(%rbp)
.LBB37_94:                              # %if.end.258
                                        #   in Loop: Header=BB37_19 Depth=1
	jmp	.LBB37_95
.LBB37_95:                              # %if.end.259
                                        #   in Loop: Header=BB37_19 Depth=1
	movl	-324(%rbp), %eax
	movl	%eax, -328(%rbp)
	cmpl	$0, -328(%rbp)
	je	.LBB37_113
.LBB37_96:                              # %if.then.262
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, -352(%rbp)
	movq	g_param_spec_types, %rax
	movq	96(%rax), %rax
	movq	%rax, -360(%rbp)
	cmpq	$0, -352(%rbp)
	jne	.LBB37_98
# BB#97:                                # %if.then.273
                                        #   in Loop: Header=BB37_19 Depth=1
	movl	$0, -364(%rbp)
	jmp	.LBB37_103
.LBB37_98:                              # %if.else.274
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-352(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB37_101
# BB#99:                                # %land.lhs.true.277
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-352(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-360(%rbp), %rax
	jne	.LBB37_101
# BB#100:                               # %if.then.281
                                        #   in Loop: Header=BB37_19 Depth=1
	movl	$1, -364(%rbp)
	jmp	.LBB37_102
.LBB37_101:                             # %if.else.282
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-352(%rbp), %rdi
	movq	-360(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -364(%rbp)
.LBB37_102:                             # %if.end.284
                                        #   in Loop: Header=BB37_19 Depth=1
	jmp	.LBB37_103
.LBB37_103:                             # %if.end.285
                                        #   in Loop: Header=BB37_19 Depth=1
	movb	$1, %al
	movl	-364(%rbp), %ecx
	movl	%ecx, -368(%rbp)
	cmpl	$0, -368(%rbp)
	movb	%al, -481(%rbp)         # 1-byte Spill
	jne	.LBB37_112
# BB#104:                               # %lor.rhs
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, -376(%rbp)
	movq	g_param_spec_types, %rax
	movq	104(%rax), %rax
	movq	%rax, -384(%rbp)
	cmpq	$0, -376(%rbp)
	jne	.LBB37_106
# BB#105:                               # %if.then.296
                                        #   in Loop: Header=BB37_19 Depth=1
	movl	$0, -388(%rbp)
	jmp	.LBB37_111
.LBB37_106:                             # %if.else.297
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-376(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB37_109
# BB#107:                               # %land.lhs.true.300
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-384(%rbp), %rax
	jne	.LBB37_109
# BB#108:                               # %if.then.304
                                        #   in Loop: Header=BB37_19 Depth=1
	movl	$1, -388(%rbp)
	jmp	.LBB37_110
.LBB37_109:                             # %if.else.305
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-376(%rbp), %rdi
	movq	-384(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -388(%rbp)
.LBB37_110:                             # %if.end.307
                                        #   in Loop: Header=BB37_19 Depth=1
	jmp	.LBB37_111
.LBB37_111:                             # %if.end.308
                                        #   in Loop: Header=BB37_19 Depth=1
	movl	-388(%rbp), %eax
	movl	%eax, -392(%rbp)
	cmpl	$0, -392(%rbp)
	setne	%cl
	movb	%cl, -481(%rbp)         # 1-byte Spill
.LBB37_112:                             # %lor.end
                                        #   in Loop: Header=BB37_19 Depth=1
	movb	-481(%rbp), %al         # 1-byte Reload
	xorl	%ecx, %ecx
	movl	$2, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -340(%rbp)
	movq	-16(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	-40(%rbp), %r8
	movq	%rdi, -496(%rbp)        # 8-byte Spill
	movq	%rsi, -504(%rbp)        # 8-byte Spill
	movq	%r8, -512(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-68(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -68(%rbp)
	movq	-104(%rbp), %rdi
	movq	%rax, -520(%rbp)        # 8-byte Spill
	movl	%ecx, -524(%rbp)        # 4-byte Spill
	callq	g_param_spec_get_nick
	xorl	%ecx, %ecx
	movsd	.LCPI37_0, %xmm0        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movl	-340(%rbp), %edx
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	-504(%rbp), %rsi        # 8-byte Reload
	movq	-520(%rbp), %r8         # 8-byte Reload
	movl	%edx, -528(%rbp)        # 4-byte Spill
	movq	%r8, %rdx
	movl	-524(%rbp), %r8d        # 4-byte Reload
	movq	%rax, %r9
	movsd	%xmm0, -536(%rbp)       # 8-byte Spill
	movsd	-536(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm1, -544(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm1
	movl	-528(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	movl	$0, 8(%rsp)
	movsd	-544(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-544(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_prop_scale_entry_new
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -336(%rbp)
	movq	-48(%rbp), %rdi
	movq	-336(%rbp), %rax
	movq	%rdi, -552(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.16, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_size_group_add_widget
	jmp	.LBB37_124
.LBB37_113:                             # %if.else.318
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, -400(%rbp)
	callq	gimp_param_rgb_get_type
	movq	%rax, -408(%rbp)
	cmpq	$0, -400(%rbp)
	jne	.LBB37_115
# BB#114:                               # %if.then.327
                                        #   in Loop: Header=BB37_19 Depth=1
	movl	$0, -412(%rbp)
	jmp	.LBB37_120
.LBB37_115:                             # %if.else.328
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-400(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB37_118
# BB#116:                               # %land.lhs.true.331
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-400(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-408(%rbp), %rax
	jne	.LBB37_118
# BB#117:                               # %if.then.335
                                        #   in Loop: Header=BB37_19 Depth=1
	movl	$1, -412(%rbp)
	jmp	.LBB37_119
.LBB37_118:                             # %if.else.336
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-400(%rbp), %rdi
	movq	-408(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -412(%rbp)
.LBB37_119:                             # %if.end.338
                                        #   in Loop: Header=BB37_19 Depth=1
	jmp	.LBB37_120
.LBB37_120:                             # %if.end.339
                                        #   in Loop: Header=BB37_19 Depth=1
	movl	-412(%rbp), %eax
	movl	%eax, -416(%rbp)
	cmpl	$0, -416(%rbp)
	je	.LBB37_122
# BB#121:                               # %if.then.342
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-16(%rbp), %rdi
	movq	-104(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-104(%rbp), %rax
	movq	%rdi, -560(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -568(%rbp)        # 8-byte Spill
	callq	g_param_spec_get_nick
	movl	$128, %ecx
	movl	$24, %r8d
	movl	$1, %r9d
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	-568(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_color_button_new
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gimp_color_panel_get_type
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_panel_set_context
	movq	-104(%rbp), %rdi
	callq	g_param_spec_get_nick
	movq	%rax, -120(%rbp)
	jmp	.LBB37_123
.LBB37_122:                             # %if.else.349
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	callq	g_type_name
	movabsq	$.L.str.17, %rdi
	movabsq	$.L__func__.gimp_prop_table_new, %rsi
	movq	-104(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_warning
.LBB37_123:                             # %if.end.354
                                        #   in Loop: Header=BB37_19 Depth=1
	jmp	.LBB37_124
.LBB37_124:                             # %if.end.355
                                        #   in Loop: Header=BB37_19 Depth=1
	jmp	.LBB37_125
.LBB37_125:                             # %if.end.356
                                        #   in Loop: Header=BB37_19 Depth=1
	jmp	.LBB37_126
.LBB37_126:                             # %if.end.357
                                        #   in Loop: Header=BB37_19 Depth=1
	jmp	.LBB37_127
.LBB37_127:                             # %if.end.358
                                        #   in Loop: Header=BB37_19 Depth=1
	cmpq	$0, -112(%rbp)
	je	.LBB37_129
# BB#128:                               # %if.then.360
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movss	.LCPI37_1, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movl	$2, %r9d
	movl	-68(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -68(%rbp)
	movq	-120(%rbp), %rdi
	movq	-112(%rbp), %r8
	movq	%rdi, -592(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %edx
	movq	-592(%rbp), %rcx        # 8-byte Reload
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -600(%rbp)        # 8-byte Spill
.LBB37_129:                             # %if.end.365
                                        #   in Loop: Header=BB37_19 Depth=1
	jmp	.LBB37_130
.LBB37_130:                             # %for.inc
                                        #   in Loop: Header=BB37_19 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB37_19
.LBB37_131:                             # %for.end
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB37_132:                             # %return
	movq	-8(%rbp), %rax
	addq	$624, %rsp              # imm = 0x270
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gimp_prop_table_new, .Lfunc_end37-gimp_prop_table_new
	.cfi_endproc

	.align	16, 0x90
	.type	get_param_spec,@function
get_param_spec:                         # @get_param_spec
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp124:
	.cfi_def_cfa_offset 16
.Ltmp125:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp126:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_prop_widgets_param_spec_quark
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	g_object_get_qdata
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	get_param_spec, .Lfunc_end38-get_param_spec
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_widgets_param_spec_quark,@function
gimp_prop_widgets_param_spec_quark:     # @gimp_prop_widgets_param_spec_quark
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp127:
	.cfi_def_cfa_offset 16
.Ltmp128:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp129:
	.cfi_def_cfa_register %rbp
	cmpl	$0, gimp_prop_widgets_param_spec_quark.param_spec_quark
	jne	.LBB39_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.18, %rdi
	callq	g_quark_from_static_string
	movl	%eax, gimp_prop_widgets_param_spec_quark.param_spec_quark
.LBB39_2:                               # %if.end
	movl	gimp_prop_widgets_param_spec_quark.param_spec_quark, %eax
	popq	%rbp
	retq
.Lfunc_end39:
	.size	gimp_prop_widgets_param_spec_quark, .Lfunc_end39-gimp_prop_widgets_param_spec_quark
	.cfi_endproc

	.align	16, 0x90
	.type	check_param_spec,@function
check_param_spec:                       # @check_param_spec
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp130:
	.cfi_def_cfa_offset 16
.Ltmp131:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp132:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	find_param_spec
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB40_3
# BB#1:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	jne	.LBB40_3
# BB#2:                                 # %if.then
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-32(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.23, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_warning
	movq	$0, -8(%rbp)
	jmp	.LBB40_4
.LBB40_3:                               # %if.end
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB40_4:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	check_param_spec, .Lfunc_end40-check_param_spec
	.cfi_endproc

	.type	.L__func__.gimp_prop_expanding_frame_new,@object # @__func__.gimp_prop_expanding_frame_new
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.gimp_prop_expanding_frame_new:
	.asciz	"gimp_prop_expanding_frame_new"
	.size	.L__func__.gimp_prop_expanding_frame_new, 30

	.type	.L.str,@object          # @.str
.L.str:
	.asciz	"toggled"
	.size	.L.str, 8

	.type	.L__func__.gimp_prop_paint_mode_menu_new,@object # @__func__.gimp_prop_paint_mode_menu_new
.L__func__.gimp_prop_paint_mode_menu_new:
	.asciz	"gimp_prop_paint_mode_menu_new"
	.size	.L__func__.gimp_prop_paint_mode_menu_new, 30

	.type	.L__func__.gimp_prop_color_button_new,@object # @__func__.gimp_prop_color_button_new
.L__func__.gimp_prop_color_button_new:
	.asciz	"gimp_prop_color_button_new"
	.size	.L__func__.gimp_prop_color_button_new, 27

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"color-changed"
	.size	.L.str.1, 14

	.type	.L__func__.gimp_prop_scale_button_new,@object # @__func__.gimp_prop_scale_button_new
.L__func__.gimp_prop_scale_button_new:
	.asciz	"gimp_prop_scale_button_new"
	.size	.L__func__.gimp_prop_scale_button_new, 27

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"value-changed"
	.size	.L.str.2, 14

	.type	.L__func__.gimp_prop_spin_scale_new,@object # @__func__.gimp_prop_spin_scale_new
.L__func__.gimp_prop_spin_scale_new:
	.asciz	"gimp_prop_spin_scale_new"
	.size	.L__func__.gimp_prop_spin_scale_new, 25

	.type	.L__func__.gimp_prop_opacity_spin_scale_new,@object # @__func__.gimp_prop_opacity_spin_scale_new
.L__func__.gimp_prop_opacity_spin_scale_new:
	.asciz	"gimp_prop_opacity_spin_scale_new"
	.size	.L__func__.gimp_prop_opacity_spin_scale_new, 33

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"opacity-scale"
	.size	.L.str.3, 14

	.type	.L__func__.gimp_prop_view_new,@object # @__func__.gimp_prop_view_new
.L__func__.gimp_prop_view_new:
	.asciz	"gimp_prop_view_new"
	.size	.L__func__.gimp_prop_view_new, 19

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%s: property '%s' of %s is not a GimpViewable"
	.size	.L.str.4, 46

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%s: cannot create view for type '%s'"
	.size	.L.str.5, 37

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-prop-number-pair-entry-data"
	.size	.L.str.6, 33

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"ratio-changed"
	.size	.L.str.7, 14

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"numbers-changed"
	.size	.L.str.8, 16

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"notify::user-override"
	.size	.L.str.9, 22

	.type	.L__func__.gimp_prop_language_combo_box_new,@object # @__func__.gimp_prop_language_combo_box_new
.L__func__.gimp_prop_language_combo_box_new:
	.asciz	"gimp_prop_language_combo_box_new"
	.size	.L__func__.gimp_prop_language_combo_box_new, 33

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"changed"
	.size	.L.str.10, 8

	.type	.L__func__.gimp_prop_language_entry_new,@object # @__func__.gimp_prop_language_entry_new
.L__func__.gimp_prop_language_entry_new:
	.asciz	"gimp_prop_language_entry_new"
	.size	.L__func__.gimp_prop_language_entry_new, 29

	.type	.L__func__.gimp_prop_icon_picker_new,@object # @__func__.gimp_prop_icon_picker_new
.L__func__.gimp_prop_icon_picker_new:
	.asciz	"gimp_prop_icon_picker_new"
	.size	.L__func__.gimp_prop_icon_picker_new, 26

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"notify::stock-id"
	.size	.L.str.11, 17

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Gimp-Widgets"
	.size	.L.str.12, 13

	.type	.L__func__.gimp_prop_table_new,@object # @__func__.gimp_prop_table_new
.L__func__.gimp_prop_table_new:
	.asciz	"gimp_prop_table_new"
	.size	.L__func__.gimp_prop_table_new, 20

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"G_IS_OBJECT (config)"
	.size	.L.str.13, 21

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"context == NULL || GIMP_IS_CONTEXT (context)"
	.size	.L.str.14, 45

	.type	gimp_prop_table_new.multiline_quark,@object # @gimp_prop_table_new.multiline_quark
	.local	gimp_prop_table_new.multiline_quark
	.comm	gimp_prop_table_new.multiline_quark,4,4
	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"multiline"
	.size	.L.str.15, 10

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"spinbutton"
	.size	.L.str.16, 11

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%s: not supported: %s (%s)\n"
	.size	.L.str.17, 28

	.type	gimp_prop_widgets_param_spec_quark.param_spec_quark,@object # @gimp_prop_widgets_param_spec_quark.param_spec_quark
	.local	gimp_prop_widgets_param_spec_quark.param_spec_quark
	.comm	gimp_prop_widgets_param_spec_quark.param_spec_quark,4,4
	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp-config-param-spec"
	.size	.L.str.18, 23

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"%s: unhandled param spec of type %s"
	.size	.L.str.19, 36

	.type	.L__func__.gimp_prop_adjustment_notify,@object # @__func__.gimp_prop_adjustment_notify
.L__func__.gimp_prop_adjustment_notify:
	.asciz	"gimp_prop_adjustment_notify"
	.size	.L__func__.gimp_prop_adjustment_notify, 28

	.type	.L__func__.gimp_prop_number_pair_entry_config_notify,@object # @__func__.gimp_prop_number_pair_entry_config_notify
.L__func__.gimp_prop_number_pair_entry_config_notify:
	.asciz	"gimp_prop_number_pair_entry_config_notify"
	.size	.L__func__.gimp_prop_number_pair_entry_config_notify, 42

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"data != NULL"
	.size	.L.str.20, 13

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"%s: %s has no property named '%s'"
	.size	.L.str.21, 34

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"%s: property '%s' of %s is writable"
	.size	.L.str.22, 36

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"%s: property '%s' of %s is not a %s"
	.size	.L.str.23, 36

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"%s: property '%s' of %s is not numeric"
	.size	.L.str.24, 39

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"notify::"
	.size	.L.str.25, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
