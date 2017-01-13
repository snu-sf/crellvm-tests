	.text
	.file	"tips-dialog.bc"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1056964608              # float 0.5
	.text
	.globl	tips_dialog_create
	.align	16, 0x90
	.type	tips_dialog_create,@function
tips_dialog_create:                     # @tips_dialog_create
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
	subq	$432, %rsp              # imm = 0x1B0
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tips_dialog_create, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_31
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	cmpq	$0, tips
	jne	.LBB0_25
# BB#13:                                # %if.then.12
	movq	$0, -96(%rbp)
	callq	gimp_data_directory
	movabsq	$.L.str.2, %rsi
	movabsq	$.L.str.3, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_build_filename
	leaq	-96(%rbp), %rsi
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	callq	gimp_tips_from_file
	movq	%rax, tips
	cmpq	$0, tips
	jne	.LBB0_21
# BB#14:                                # %if.then.19
	cmpq	$0, -96(%rbp)
	jne	.LBB0_16
# BB#15:                                # %if.then.22
	movabsq	$.L.str.4, %rdi
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_tip_new
	movq	%rax, -112(%rbp)
	jmp	.LBB0_20
.LBB0_16:                               # %if.else.25
	movq	-96(%rbp), %rax
	cmpl	$4, 4(%rax)
	jne	.LBB0_18
# BB#17:                                # %if.then.27
	movabsq	$.L.str.5, %rdi
	callq	gettext
	movabsq	$.L.str.6, %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-104(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	gimp_tip_new
	movq	%rax, -112(%rbp)
	jmp	.LBB0_19
.LBB0_18:                               # %if.else.32
	movabsq	$.L.str.7, %rdi
	callq	gettext
	movabsq	$.L.str.8, %rsi
	movq	-96(%rbp), %rdi
	movq	8(%rdi), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_tip_new
	movq	%rax, -112(%rbp)
.LBB0_19:                               # %if.end.35
	jmp	.LBB0_20
.LBB0_20:                               # %if.end.36
	movq	tips, %rdi
	movq	-112(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, tips
	jmp	.LBB0_24
.LBB0_21:                               # %if.else.38
	cmpq	$0, -96(%rbp)
	je	.LBB0_23
# BB#22:                                # %if.then.40
	movabsq	$.L.str.9, %rdi
	movq	-104(%rbp), %rsi
	movq	-96(%rbp), %rax
	movq	8(%rax), %rdx
	movb	$0, %al
	callq	g_printerr
.LBB0_23:                               # %if.end.42
	jmp	.LBB0_24
.LBB0_24:                               # %if.end.43
	leaq	-96(%rbp), %rdi
	callq	g_clear_error
	movq	-104(%rbp), %rdi
	callq	g_free
.LBB0_25:                               # %if.end.44
	movq	tips, %rdi
	callq	g_list_length
	movl	%eax, -60(%rbp)
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	732(%rax), %ecx
	cmpl	-60(%rbp), %ecx
	jge	.LBB0_27
# BB#26:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpl	$0, 732(%rax)
	jge	.LBB0_28
.LBB0_27:                               # %if.then.52
	movq	-24(%rbp), %rax
	movl	$0, 732(%rax)
.LBB0_28:                               # %if.end.54
	movq	tips, %rdi
	movq	-24(%rbp), %rax
	movl	732(%rax), %esi
	callq	g_list_nth
	movq	%rax, current_tip
	cmpq	$0, tips_dialog
	je	.LBB0_30
# BB#29:                                # %if.then.58
	movq	tips_dialog, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_31
.LBB0_30:                               # %if.end.59
	movabsq	$.L.str.10, %rdi
	callq	gettext
	movabsq	$.L.str.11, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%ecx, %ecx
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movq	-144(%rbp), %r8         # 8-byte Reload
	movq	-144(%rbp), %r9         # 8-byte Reload
	movq	$0, (%rsp)
	movb	$0, %al
	callq	gimp_dialog_new
	movq	%rax, tips_dialog
	movq	tips_dialog, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_dialog_add_button
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.13, %rdi
	movl	$4, %esi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_image_new_from_stock
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_button_set_image
	movq	tips_dialog, %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.14, %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$2, %edx
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_dialog_add_button
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.15, %rdi
	movl	$4, %esi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_image_new_from_stock
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_button_set_image
	movq	tips_dialog, %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	cmpl	$1, -60(%rbp)
	setg	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %edx
	movq	%rax, %rdi
	callq	gtk_dialog_set_response_sensitive
	movq	tips_dialog, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	cmpl	$1, -60(%rbp)
	setg	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %edx
	movq	%rax, %rdi
	callq	gtk_dialog_set_response_sensitive
	movabsq	$.L.str.16, %rsi
	movabsq	$tips_dialog_response, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	tips_dialog, %r8
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rax, %rdx
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movq	-232(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.17, %rsi
	movabsq	$tips_dialog_destroy, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	tips_dialog, %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movl	$1, %edi
	movl	$12, %esi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	tips_dialog, %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-32(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
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
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.18, %rdi
	movl	$6, %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-40(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -324(%rbp)        # 4-byte Spill
	movl	-324(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_focus_chain
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_label_new
	movq	%rax, tip_label
	movq	tip_label, %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_selectable
	movq	tip_label, %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_justify
	movq	tip_label, %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_line_wrap
	movq	tip_label, %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-32(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	tip_label, %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	tip_label, %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -388(%rbp)        # 4-byte Spill
	movl	-388(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.20, %rdi
	callq	gettext
	movabsq	$.L.str.19, %rdi
	movq	%rax, %rsi
	callq	gtk_link_button_new_with_label
	movq	%rax, more_button
	movq	more_button, %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	more_button, %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -404(%rbp)        # 4-byte Spill
	movl	-404(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movabsq	$.L.str.21, %rsi
	movabsq	$more_button_clicked, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	more_button, %rdi
	movq	-16(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movq	current_tip, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	tips_dialog_set_tip
	movq	tips_dialog, %rax
	movq	%rax, -8(%rbp)
.LBB0_31:                               # %return
	movq	-8(%rbp), %rax
	addq	$432, %rsp              # imm = 0x1B0
	popq	%rbp
	retq
.Lfunc_end0:
	.size	tips_dialog_create, .Lfunc_end0-tips_dialog_create
	.cfi_endproc

	.align	16, 0x90
	.type	tips_dialog_response,@function
tips_dialog_response:                   # @tips_dialog_response
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%esi, %eax
	subl	$1, %esi
	movl	%eax, -16(%rbp)         # 4-byte Spill
	movl	%esi, -20(%rbp)         # 4-byte Spill
	je	.LBB1_1
	jmp	.LBB1_11
.LBB1_11:                               # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	je	.LBB1_5
	jmp	.LBB1_9
.LBB1_1:                                # %sw.bb
	movq	current_tip, %rax
	cmpq	$0, 16(%rax)
	je	.LBB1_3
# BB#2:                                 # %cond.true
	movq	current_tip, %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB1_4
.LBB1_3:                                # %cond.false
	movq	tips, %rdi
	callq	g_list_last
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB1_4:                                # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, current_tip
	movq	current_tip, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	tips_dialog_set_tip
	jmp	.LBB1_10
.LBB1_5:                                # %sw.bb.2
	movq	current_tip, %rax
	cmpq	$0, 8(%rax)
	je	.LBB1_7
# BB#6:                                 # %cond.true.4
	movq	current_tip, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB1_8
.LBB1_7:                                # %cond.false.6
	movq	tips, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB1_8:                                # %cond.end.7
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, current_tip
	movq	current_tip, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	tips_dialog_set_tip
	jmp	.LBB1_10
.LBB1_9:                                # %sw.default
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
.LBB1_10:                               # %sw.epilog
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	tips_dialog_response, .Lfunc_end1-tips_dialog_response
	.cfi_endproc

	.align	16, 0x90
	.type	tips_dialog_destroy,@function
tips_dialog_destroy:                    # @tips_dialog_destroy
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	tips, %rdi
	movq	current_tip, %rsi
	callq	g_list_position
	movq	-16(%rbp), %rsi
	movl	%eax, 732(%rsi)
	movq	$0, tips_dialog
	movq	$0, current_tip
	movq	tips, %rdi
	callq	gimp_tips_free
	movq	$0, tips
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	tips_dialog_destroy, .Lfunc_end2-tips_dialog_destroy
	.cfi_endproc

	.align	16, 0x90
	.type	more_button_clicked,@function
more_button_clicked:                    # @more_button_clicked
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	current_tip, %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	cmpq	$0, 8(%rsi)
	je	.LBB3_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rcx, %rsi
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-32(%rbp), %rcx         # 8-byte Reload
	callq	gimp_help
.LBB3_2:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	more_button_clicked, .Lfunc_end3-more_button_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	tips_dialog_set_tip,@function
tips_dialog_set_tip:                    # @tips_dialog_set_tip
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
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tips_dialog_set_tip, %rsi
	movabsq	$.L.str.22, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_6
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	movq	tip_label, %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_markup
	movq	more_button, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_link_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.19, %rsi
	movq	%rax, %rdi
	callq	gtk_link_button_set_uri
	movq	more_button, %rdi
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	callq	gtk_widget_set_sensitive
.LBB4_6:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	tips_dialog_set_tip, .Lfunc_end4-tips_dialog_set_tip
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Dialogs"
	.size	.L.str, 13

	.type	.L__func__.tips_dialog_create,@object # @__func__.tips_dialog_create
.L__func__.tips_dialog_create:
	.asciz	"tips_dialog_create"
	.size	.L__func__.tips_dialog_create, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.1, 20

	.type	tips,@object            # @tips
	.local	tips
	.comm	tips,8,8
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"tips"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-tips.xml"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"The GIMP tips file is empty!"
	.size	.L.str.4, 29

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"The GIMP tips file appears to be missing!"
	.size	.L.str.5, 42

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"There should be a file called '%s'. Please check your installation."
	.size	.L.str.6, 68

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"The GIMP tips file could not be parsed!"
	.size	.L.str.7, 40

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%s"
	.size	.L.str.8, 3

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Error while parsing '%s': %s\n"
	.size	.L.str.9, 30

	.type	current_tip,@object     # @current_tip
	.local	current_tip
	.comm	current_tip,8,8
	.type	tips_dialog,@object     # @tips_dialog
	.local	tips_dialog
	.comm	tips_dialog,8,8
	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"GIMP Tip of the Day"
	.size	.L.str.10, 20

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-tip-of-the-day"
	.size	.L.str.11, 20

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"_Previous Tip"
	.size	.L.str.12, 14

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gtk-go-back"
	.size	.L.str.13, 12

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"_Next Tip"
	.size	.L.str.14, 10

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gtk-go-forward"
	.size	.L.str.15, 15

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"response"
	.size	.L.str.16, 9

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"destroy"
	.size	.L.str.17, 8

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp-info"
	.size	.L.str.18, 10

	.type	tip_label,@object       # @tip_label
	.local	tip_label
	.comm	tip_label,8,8
	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"http://docs.gimp.org/"
	.size	.L.str.19, 22

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Learn more"
	.size	.L.str.20, 11

	.type	more_button,@object     # @more_button
	.local	more_button
	.comm	more_button,8,8
	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"clicked"
	.size	.L.str.21, 8

	.type	.L__func__.tips_dialog_set_tip,@object # @__func__.tips_dialog_set_tip
.L__func__.tips_dialog_set_tip:
	.asciz	"tips_dialog_set_tip"
	.size	.L__func__.tips_dialog_set_tip, 20

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"tip != NULL"
	.size	.L.str.22, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
