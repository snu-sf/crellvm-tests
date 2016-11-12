	.text
	.file	"gimptexttool-editor.bc"
	.globl	gimp_text_tool_editor_init
	.align	16, 0x90
	.type	gimp_text_tool_editor_init,@function
gimp_text_tool_editor_init:             # @gimp_text_tool_editor_init
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
	movq	%rdi, -8(%rbp)
	callq	gtk_im_multicontext_new
	movabsq	$.L.str, %rsi
	movabsq	$gimp_text_tool_im_commit, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	%rax, 456(%rdx)
	movq	-8(%rbp), %rax
	movl	$0, 464(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 488(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 496(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 500(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 504(%rax)
	movq	-8(%rbp), %rax
	movq	456(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-24(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.1, %rsi
	movabsq	$gimp_text_tool_im_preedit_start, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	456(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.2, %rsi
	movabsq	$gimp_text_tool_im_preedit_end, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	456(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.3, %rsi
	movabsq	$gimp_text_tool_im_preedit_changed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	456(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -80(%rbp)         # 8-byte Spill
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_text_tool_editor_init, .Lfunc_end0-gimp_text_tool_editor_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_im_commit,@function
gimp_text_tool_im_commit:               # @gimp_text_tool_im_commit
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_text_tool_enter_text
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_text_tool_im_commit, .Lfunc_end1-gimp_text_tool_im_commit
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4604480259023595110     # double 0.69999999999999996
	.text
	.align	16, 0x90
	.type	gimp_text_tool_im_preedit_start,@function
gimp_text_tool_im_preedit_start:        # @gimp_text_tool_im_preedit_start
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gtk_widget_get_style
	xorl	%esi, %esi
	movl	$16, %ecx
	movl	%ecx, %edx
	leaq	-72(%rbp), %rdi
	movq	%rax, -40(%rbp)
	callq	memset
	movq	-16(%rbp), %rax
	cmpq	$0, 280(%rax)
	je	.LBB2_2
# BB#1:                                 # %if.then
	leaq	-72(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	500(%rax), %esi
	callq	gimp_text_tool_editor_get_cursor_rect
.LBB2_2:                                # %if.end
	movabsq	$.L.str.5, %rsi
	leaq	-76(%rbp), %rdx
	movabsq	$.L.str.6, %rcx
	leaq	-80(%rbp), %r8
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	g_object_get
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	callq	gtk_frame_new
	movq	-16(%rbp), %rcx
	movq	%rax, 472(%rcx)
	movq	-16(%rbp), %rax
	movq	472(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movl	$2, %edx
	xorl	%esi, %esi
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	472(%rax), %rax
	movl	-72(%rbp), %r10d
	addl	-76(%rbp), %r10d
	cvtsi2sdl	%r10d, %xmm0
	movl	-68(%rbp), %r10d
	addl	-80(%rbp), %r10d
	cvtsi2sdl	%r10d, %xmm1
	movl	%esi, -100(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	-100(%rbp), %ecx        # 4-byte Reload
	movl	-100(%rbp), %r8d        # 4-byte Reload
	callq	gimp_display_shell_add_overlay
	movq	-32(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_overlay_box_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rsi
	movq	472(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_overlay_box_set_child_opacity
	movq	-16(%rbp), %rax
	movq	472(%rax), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_frame_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-16(%rbp), %rax
	movq	472(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_event_box_new
	xorl	%esi, %esi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$384, %rax              # imm = 0x180
	movq	%rax, %rdx
	callq	gtk_widget_modify_bg
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_label_new
	xorl	%esi, %esi
	movq	-16(%rbp), %rdx
	movq	%rax, 480(%rdx)
	movq	-16(%rbp), %rax
	movq	480(%rax), %rdi
	movq	-40(%rbp), %rax
	addq	$324, %rax              # imm = 0x144
	movq	%rax, %rdx
	callq	gtk_widget_modify_bg
	movq	-16(%rbp), %rax
	movq	480(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_misc_set_padding
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	480(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-16(%rbp), %rax
	movq	480(%rax), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rdi
	callq	gimp_text_tool_editor_update_im_rect
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_text_tool_im_preedit_start, .Lfunc_end2-gimp_text_tool_im_preedit_start
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_im_preedit_end,@function
gimp_text_tool_im_preedit_end:          # @gimp_text_tool_im_preedit_end
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, 472(%rsi)
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	472(%rax), %rdi
	callq	gtk_widget_destroy
	movq	-16(%rbp), %rax
	movq	$0, 472(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 480(%rax)
.LBB3_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_text_tool_im_preedit_end, .Lfunc_end3-gimp_text_tool_im_preedit_end
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_im_preedit_changed,@function
gimp_text_tool_im_preedit_changed:      # @gimp_text_tool_im_preedit_changed
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, 488(%rsi)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	488(%rax), %rdi
	callq	g_free
.LBB4_2:                                # %if.end
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	addq	$488, %rcx              # imm = 0x1E8
	movq	-16(%rbp), %rsi
	addq	$496, %rsi              # imm = 0x1F0
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-24(%rbp), %rcx         # 8-byte Reload
	callq	gtk_im_context_get_preedit_string
	movq	-16(%rbp), %rcx
	cmpq	$0, 480(%rcx)
	je	.LBB4_4
# BB#3:                                 # %if.then.4
	movq	-16(%rbp), %rax
	movq	480(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	488(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
.LBB4_4:                                # %if.end.8
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_text_tool_im_preedit_changed, .Lfunc_end4-gimp_text_tool_im_preedit_changed
	.cfi_endproc

	.globl	gimp_text_tool_editor_finalize
	.align	16, 0x90
	.type	gimp_text_tool_editor_finalize,@function
gimp_text_tool_editor_finalize:         # @gimp_text_tool_editor_finalize
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 456(%rdi)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	456(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rax
	movq	$0, 456(%rax)
.LBB5_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_text_tool_editor_finalize, .Lfunc_end5-gimp_text_tool_editor_finalize
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4604480259023595110     # double 0.69999999999999996
.LCPI6_1:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_text_tool_editor_start
	.align	16, 0x90
	.type	gimp_text_tool_editor_start,@function
gimp_text_tool_editor_start:            # @gimp_text_tool_editor_start
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_text_options_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	456(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_widget_get_window
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_im_context_set_client_window
	movq	-8(%rbp), %rax
	movl	$1, 464(%rax)
	movq	-8(%rbp), %rdi
	callq	gimp_text_tool_reset_im_context
	movq	-8(%rbp), %rax
	movq	456(%rax), %rdi
	callq	gtk_im_context_focus_in
	movq	-24(%rbp), %rax
	cmpl	$0, 428(%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gimp_text_tool_editor_dialog
.LBB6_2:                                # %if.end
	movabsq	$.L.str.4, %rsi
	movabsq	$gimp_text_tool_options_notify, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-8(%rbp), %rcx
	cmpq	$0, 344(%rcx)
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jne	.LBB6_6
# BB#3:                                 # %if.then.12
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	.LCPI6_1, %xmm0         # xmm0 = mem[0],zero
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
	callq	gimp_overlay_frame_new
	movq	-8(%rbp), %rsi
	movq	%rax, 344(%rsi)
	movq	-8(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	xorps	%xmm0, %xmm0
	xorl	%esi, %esi
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	344(%rax), %rax
	movl	%esi, -124(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	-124(%rbp), %edx        # 4-byte Reload
	movl	-124(%rbp), %ecx        # 4-byte Reload
	movl	-124(%rbp), %r8d        # 4-byte Reload
	callq	gimp_display_shell_add_overlay
	movq	-32(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_overlay_box_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	movq	344(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_overlay_box_set_child_opacity
	movq	-8(%rbp), %rax
	cmpq	$0, 296(%rax)
	je	.LBB6_5
# BB#4:                                 # %if.then.27
	leaq	-48(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	296(%rax), %rdi
	callq	gimp_image_get_resolution
.LBB6_5:                                # %if.end.29
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	248(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	272(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	456(%rax), %rcx
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_text_style_editor_new
	movq	-8(%rbp), %rcx
	movq	%rax, 352(%rcx)
	movq	-8(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rcx
	movq	352(%rcx), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-8(%rbp), %rax
	movq	352(%rax), %rdi
	callq	gtk_widget_show
.LBB6_6:                                # %if.end.36
	movq	-8(%rbp), %rdi
	callq	gimp_text_tool_editor_position
	movq	-8(%rbp), %rdi
	movq	344(%rdi), %rdi
	callq	gtk_widget_show
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_text_tool_editor_start, .Lfunc_end6-gimp_text_tool_editor_start
	.cfi_endproc

	.globl	gimp_text_tool_reset_im_context
	.align	16, 0x90
	.type	gimp_text_tool_reset_im_context,@function
gimp_text_tool_reset_im_context:        # @gimp_text_tool_reset_im_context
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 464(%rdi)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	$0, 464(%rax)
	movq	-8(%rbp), %rax
	movq	456(%rax), %rdi
	callq	gtk_im_context_reset
.LBB7_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_text_tool_reset_im_context, .Lfunc_end7-gimp_text_tool_reset_im_context
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_text_tool_editor_dialog,@function
gimp_text_tool_editor_dialog:           # @gimp_text_tool_editor_dialog
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_text_options_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -24(%rbp)
	movq	$0, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 528(%rax)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	528(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	jmp	.LBB8_7
.LBB8_2:                                # %if.end
	callq	gimp_dialog_factory_get_singleton
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB8_4
# BB#3:                                 # %if.then.12
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_toplevel
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
.LBB8_4:                                # %if.end.20
	movq	-8(%rbp), %rax
	cmpq	$0, 296(%rax)
	je	.LBB8_6
# BB#5:                                 # %if.then.22
	leaq	-48(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	296(%rax), %rdi
	callq	gimp_image_get_resolution
.LBB8_6:                                # %if.end.24
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	callq	gimp_dialog_factory_get_menu_factory
	movabsq	$.L.str.33, %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-8(%rbp), %rdx
	movq	248(%rdx), %r9
	movq	-8(%rbp), %rdx
	movq	272(%rdx), %rdx
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	gimp_text_options_editor_new
	movl	$80, %r10d
	movl	%r10d, %esi
	movq	-8(%rbp), %rcx
	movq	%rax, 528(%rcx)
	movq	-8(%rbp), %rax
	movq	528(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rcx
	addq	$528, %rcx              # imm = 0x210
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_object_add_weak_pointer
	movabsq	$.L.str.34, %rsi
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	528(%rax), %rdx
	callq	gimp_dialog_factory_add_foreign
	movabsq	$.L.str.35, %rsi
	movabsq	$gimp_text_tool_editor_destroy, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rcx
	movq	528(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-160(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-8(%rbp), %rcx
	movq	528(%rcx), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
.LBB8_7:                                # %return
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_text_tool_editor_dialog, .Lfunc_end8-gimp_text_tool_editor_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_options_notify,@function
gimp_text_tool_options_notify:          # @gimp_text_tool_options_notify
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_param_spec_get_name
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movl	$.L.str.32, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB9_7
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	cmpl	$0, 428(%rax)
	je	.LBB9_3
# BB#2:                                 # %if.then.3
	movq	-24(%rbp), %rdi
	callq	gimp_text_tool_editor_dialog
	jmp	.LBB9_6
.LBB9_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, 528(%rax)
	je	.LBB9_5
# BB#4:                                 # %if.then.5
	movq	-24(%rbp), %rax
	movq	528(%rax), %rdi
	callq	gtk_widget_destroy
.LBB9_5:                                # %if.end
	jmp	.LBB9_6
.LBB9_6:                                # %if.end.7
	jmp	.LBB9_7
.LBB9_7:                                # %if.end.8
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_text_tool_options_notify, .Lfunc_end9-gimp_text_tool_options_notify
	.cfi_endproc

	.globl	gimp_text_tool_editor_position
	.align	16, 0x90
	.type	gimp_text_tool_editor_position,@function
gimp_text_tool_editor_position:         # @gimp_text_tool_editor_position
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 344(%rdi)
	je	.LBB10_4
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_get_shell
	leaq	-32(%rbp), %rsi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	344(%rax), %rdi
	callq	gtk_widget_size_request
	movabsq	$.L.str.5, %rsi
	leaq	-36(%rbp), %rdx
	movabsq	$.L.str.6, %rcx
	leaq	-40(%rbp), %r8
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_get
	movl	$5, %edx
	movl	$4, %ecx
	movl	$12, %r8d
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	344(%rsi), %rsi
	cvtsi2sdl	-36(%rbp), %xmm0
	cvtsi2sdl	-40(%rbp), %xmm1
	callq	gimp_display_shell_move_overlay
	movq	-8(%rbp), %rsi
	cmpq	$0, 296(%rsi)
	je	.LBB10_3
# BB#2:                                 # %if.then.7
	leaq	-48(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	296(%rax), %rdi
	callq	gimp_image_get_resolution
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.8, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-8(%rbp), %rax
	movq	352(%rax), %rax
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
	movb	$2, %al
	callq	g_object_set
.LBB10_3:                               # %if.end
	jmp	.LBB10_4
.LBB10_4:                               # %if.end.9
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_text_tool_editor_position, .Lfunc_end10-gimp_text_tool_editor_position
	.cfi_endproc

	.globl	gimp_text_tool_editor_halt
	.align	16, 0x90
	.type	gimp_text_tool_editor_halt,@function
gimp_text_tool_editor_halt:             # @gimp_text_tool_editor_halt
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_text_options_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 344(%rax)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	344(%rax), %rdi
	callq	gtk_widget_destroy
	movq	-8(%rbp), %rax
	movq	$0, 344(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 352(%rax)
.LBB11_2:                               # %if.end
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_text_tool_options_notify, %rdx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-8(%rbp), %rdi
	cmpq	$0, 528(%rdi)
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB11_4
# BB#3:                                 # %if.then.9
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_text_tool_editor_destroy, %rdx
	movq	-8(%rbp), %rdi
	movq	528(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-72(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-8(%rbp), %rdi
	movq	528(%rdi), %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gtk_widget_destroy
.LBB11_4:                               # %if.end.13
	movq	-8(%rbp), %rax
	cmpq	$0, 520(%rax)
	je	.LBB11_6
# BB#5:                                 # %if.then.15
	movq	-8(%rbp), %rax
	movq	512(%rax), %rdi
	callq	gtk_widget_destroy
	movq	-8(%rbp), %rax
	movq	$0, 512(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 520(%rax)
.LBB11_6:                               # %if.end.18
	movq	-8(%rbp), %rax
	movl	$1, 464(%rax)
	movq	-8(%rbp), %rdi
	callq	gimp_text_tool_reset_im_context
	movq	-8(%rbp), %rax
	movq	456(%rax), %rdi
	callq	gtk_im_context_focus_out
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	456(%rax), %rdi
	callq	gtk_im_context_set_client_window
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_text_tool_editor_halt, .Lfunc_end11-gimp_text_tool_editor_halt
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_editor_destroy,@function
gimp_text_tool_editor_destroy:          # @gimp_text_tool_editor_destroy
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_text_options_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.32, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_text_tool_editor_destroy, .Lfunc_end12-gimp_text_tool_editor_destroy
	.cfi_endproc

	.globl	gimp_text_tool_editor_button_press
	.align	16, 0x90
	.type	gimp_text_tool_editor_button_press,@function
gimp_text_tool_editor_button_press:     # @gimp_text_tool_editor_button_press
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
	subq	$240, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-8(%rbp), %rdi
	movq	272(%rdi), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	leaq	-120(%rbp), %rsi
	callq	gimp_text_tool_xy_to_iter
	movups	-56(%rbp), %xmm0
	movaps	%xmm0, -144(%rbp)
	movups	-120(%rbp), %xmm0
	movups	-104(%rbp), %xmm1
	movups	-88(%rbp), %xmm2
	movups	-72(%rbp), %xmm3
	movaps	%xmm3, -160(%rbp)
	movaps	%xmm2, -176(%rbp)
	movaps	%xmm1, -192(%rbp)
	movaps	%xmm0, -208(%rbp)
	movq	-8(%rbp), %rax
	movups	-56(%rbp), %xmm0
	movups	%xmm0, 432(%rax)
	movups	-120(%rbp), %xmm0
	movups	-104(%rbp), %xmm1
	movups	-88(%rbp), %xmm2
	movups	-72(%rbp), %xmm3
	movups	%xmm3, 416(%rax)
	movups	%xmm2, 400(%rax)
	movups	%xmm1, 384(%rax)
	movups	%xmm0, 368(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 448(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 452(%rax)
	movl	-28(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -220(%rbp)        # 4-byte Spill
	je	.LBB13_1
	jmp	.LBB13_10
.LBB13_10:                              # %entry
	movl	-220(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -224(%rbp)        # 4-byte Spill
	je	.LBB13_2
	jmp	.LBB13_11
.LBB13_11:                              # %entry
	movl	-220(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
	je	.LBB13_8
	jmp	.LBB13_9
.LBB13_1:                               # %sw.bb
	leaq	-120(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	gtk_text_buffer_place_cursor
	jmp	.LBB13_9
.LBB13_2:                               # %sw.bb.3
	leaq	-120(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	$1, 448(%rax)
	callq	gtk_text_iter_starts_word
	cmpl	$0, %eax
	jne	.LBB13_4
# BB#3:                                 # %if.then
	leaq	-120(%rbp), %rdi
	movl	$1, %esi
	callq	gtk_text_iter_backward_visible_word_starts
	movl	%eax, -232(%rbp)        # 4-byte Spill
.LBB13_4:                               # %if.end
	leaq	-208(%rbp), %rdi
	callq	gtk_text_iter_ends_word
	cmpl	$0, %eax
	jne	.LBB13_7
# BB#5:                                 # %land.lhs.true
	leaq	-208(%rbp), %rdi
	movl	$1, %esi
	callq	gtk_text_iter_forward_visible_word_ends
	cmpl	$0, %eax
	jne	.LBB13_7
# BB#6:                                 # %if.then.11
	leaq	-208(%rbp), %rdi
	callq	gtk_text_iter_forward_to_line_end
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB13_7:                               # %if.end.13
	leaq	-120(%rbp), %rsi
	leaq	-208(%rbp), %rdx
	movq	-40(%rbp), %rdi
	callq	gtk_text_buffer_select_range
	jmp	.LBB13_9
.LBB13_8:                               # %sw.bb.14
	leaq	-120(%rbp), %rdi
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movl	$1, 452(%rax)
	callq	gtk_text_iter_set_line_offset
	leaq	-208(%rbp), %rdi
	callq	gtk_text_iter_forward_to_line_end
	leaq	-120(%rbp), %rsi
	leaq	-208(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movl	%eax, -240(%rbp)        # 4-byte Spill
	callq	gtk_text_buffer_select_range
.LBB13_9:                               # %sw.epilog
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_text_tool_editor_button_press, .Lfunc_end13-gimp_text_tool_editor_button_press
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4652218415073722368     # double 1024
	.text
	.align	16, 0x90
	.type	gimp_text_tool_xy_to_iter,@function
gimp_text_tool_xy_to_iter:              # @gimp_text_tool_xy_to_iter
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_text_tool_ensure_layout
	leaq	-16(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	328(%rdi), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gimp_text_layout_untransform_point
	leaq	-44(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	328(%rdi), %rdi
	callq	gimp_text_layout_get_offsets
	cvtsi2sdl	-44(%rbp), %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -16(%rbp)
	cvtsi2sdl	-48(%rbp), %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	328(%rdx), %rdi
	callq	gimp_text_layout_get_pango_layout
	leaq	-52(%rbp), %rcx
	leaq	-56(%rbp), %r8
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movaps	%xmm0, %xmm1
	mulsd	-16(%rbp), %xmm1
	cvttsd2si	%xmm1, %esi
	mulsd	-24(%rbp), %xmm0
	cvttsd2si	%xmm0, %edx
	callq	pango_layout_xy_to_index
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	272(%rdi), %rdi
	movq	-32(%rbp), %rsi
	movl	-52(%rbp), %edx
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	gimp_text_buffer_get_iter_at_index
	cmpl	$0, -56(%rbp)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	gtk_text_iter_forward_char
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB14_2:                               # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_text_tool_xy_to_iter, .Lfunc_end14-gimp_text_tool_xy_to_iter
	.cfi_endproc

	.globl	gimp_text_tool_editor_button_release
	.align	16, 0x90
	.type	gimp_text_tool_editor_button_release,@function
gimp_text_tool_editor_button_release:   # @gimp_text_tool_editor_button_release
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	272(%rdi), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_text_buffer_get_has_selection
	cmpl	$0, %eax
	je	.LBB15_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_widget_get_clipboard
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gtk_text_buffer_copy_clipboard
.LBB15_2:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_text_tool_editor_button_release, .Lfunc_end15-gimp_text_tool_editor_button_release
	.cfi_endproc

	.globl	gimp_text_tool_editor_motion
	.align	16, 0x90
	.type	gimp_text_tool_editor_motion,@function
gimp_text_tool_editor_motion:           # @gimp_text_tool_editor_motion
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
	subq	$704, %rsp              # imm = 0x2C0
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	272(%rdi), %rdi
	movq	%rdi, -520(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -528(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_text_buffer_get_insert
	leaq	-112(%rbp), %rsi
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_text_buffer_get_iter_at_mark
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -536(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_text_buffer_get_selection_bound
	leaq	-192(%rbp), %rsi
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_text_buffer_get_iter_at_mark
	leaq	-272(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_text_tool_xy_to_iter
	movl	$80, %ecx
	movl	%ecx, %edx
	leaq	-352(%rbp), %rax
	movq	-8(%rbp), %rsi
	addq	$368, %rsi              # imm = 0x170
	movq	%rax, %rdi
	callq	memcpy
	movq	-8(%rbp), %rax
	cmpl	$0, 448(%rax)
	jne	.LBB16_2
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	cmpl	$0, 452(%rax)
	je	.LBB16_19
.LBB16_2:                               # %if.then
	leaq	-272(%rbp), %rdi
	leaq	-352(%rbp), %rsi
	callq	gtk_text_iter_compare
	cmpl	$0, %eax
	jge	.LBB16_4
# BB#3:                                 # %if.then.7
	movl	$80, %eax
	movl	%eax, %ecx
	leaq	-352(%rbp), %rdx
	leaq	-512(%rbp), %rsi
	leaq	-272(%rbp), %rdi
	leaq	-432(%rbp), %r8
	movq	%rdi, -544(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-544(%rbp), %r8         # 8-byte Reload
	movq	%rsi, -552(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	%rdx, -560(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	%rcx, -568(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-552(%rbp), %rcx        # 8-byte Reload
	movq	-560(%rbp), %rdx        # 8-byte Reload
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	-568(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	jmp	.LBB16_5
.LBB16_4:                               # %if.else
	movl	$80, %eax
	movl	%eax, %ecx
	leaq	-272(%rbp), %rdx
	leaq	-512(%rbp), %rsi
	leaq	-352(%rbp), %rdi
	leaq	-432(%rbp), %r8
	movq	%rdi, -576(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-576(%rbp), %r8         # 8-byte Reload
	movq	%rsi, -584(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	%rdx, -592(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	%rcx, -600(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-584(%rbp), %rcx        # 8-byte Reload
	movq	-592(%rbp), %rdx        # 8-byte Reload
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	-600(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
.LBB16_5:                               # %if.end
	movq	-8(%rbp), %rax
	cmpl	$0, 448(%rax)
	je	.LBB16_12
# BB#6:                                 # %if.then.10
	leaq	-432(%rbp), %rdi
	callq	gtk_text_iter_starts_word
	cmpl	$0, %eax
	jne	.LBB16_8
# BB#7:                                 # %if.then.13
	leaq	-432(%rbp), %rdi
	movl	$1, %esi
	callq	gtk_text_iter_backward_visible_word_starts
	movl	%eax, -604(%rbp)        # 4-byte Spill
.LBB16_8:                               # %if.end.15
	leaq	-512(%rbp), %rdi
	callq	gtk_text_iter_ends_word
	cmpl	$0, %eax
	jne	.LBB16_11
# BB#9:                                 # %land.lhs.true
	leaq	-512(%rbp), %rdi
	movl	$1, %esi
	callq	gtk_text_iter_forward_visible_word_ends
	cmpl	$0, %eax
	jne	.LBB16_11
# BB#10:                                # %if.then.20
	leaq	-512(%rbp), %rdi
	callq	gtk_text_iter_forward_to_line_end
	movl	%eax, -608(%rbp)        # 4-byte Spill
.LBB16_11:                              # %if.end.22
	jmp	.LBB16_15
.LBB16_12:                              # %if.else.23
	movq	-8(%rbp), %rax
	cmpl	$0, 452(%rax)
	je	.LBB16_14
# BB#13:                                # %if.then.26
	leaq	-432(%rbp), %rdi
	xorl	%esi, %esi
	callq	gtk_text_iter_set_line_offset
	leaq	-512(%rbp), %rdi
	callq	gtk_text_iter_forward_to_line_end
	movl	%eax, -612(%rbp)        # 4-byte Spill
.LBB16_14:                              # %if.end.28
	jmp	.LBB16_15
.LBB16_15:                              # %if.end.29
	leaq	-272(%rbp), %rdi
	leaq	-352(%rbp), %rsi
	callq	gtk_text_iter_compare
	cmpl	$0, %eax
	jge	.LBB16_17
# BB#16:                                # %if.then.32
	movl	$80, %eax
	movl	%eax, %ecx
	leaq	-512(%rbp), %rdx
	leaq	-352(%rbp), %rsi
	leaq	-432(%rbp), %rdi
	leaq	-272(%rbp), %r8
	movq	%rdi, -624(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-624(%rbp), %r8         # 8-byte Reload
	movq	%rsi, -632(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	%rdx, -640(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	%rcx, -648(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-632(%rbp), %rcx        # 8-byte Reload
	movq	-640(%rbp), %rdx        # 8-byte Reload
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	-648(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	jmp	.LBB16_18
.LBB16_17:                              # %if.else.33
	movl	$80, %eax
	movl	%eax, %ecx
	leaq	-512(%rbp), %rdx
	leaq	-272(%rbp), %rsi
	leaq	-432(%rbp), %rdi
	leaq	-352(%rbp), %r8
	movq	%rdi, -656(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-656(%rbp), %r8         # 8-byte Reload
	movq	%rsi, -664(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	%rdx, -672(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	%rcx, -680(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-664(%rbp), %rcx        # 8-byte Reload
	movq	-672(%rbp), %rdx        # 8-byte Reload
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	-680(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
.LBB16_18:                              # %if.end.34
	jmp	.LBB16_19
.LBB16_19:                              # %if.end.35
	leaq	-272(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	callq	gtk_text_iter_equal
	cmpl	$0, %eax
	je	.LBB16_21
# BB#20:                                # %lor.lhs.false.38
	leaq	-352(%rbp), %rdi
	leaq	-192(%rbp), %rsi
	callq	gtk_text_iter_equal
	cmpl	$0, %eax
	jne	.LBB16_22
.LBB16_21:                              # %if.then.41
	movq	-8(%rbp), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	leaq	-272(%rbp), %rsi
	leaq	-352(%rbp), %rdx
	movq	-32(%rbp), %rdi
	callq	gtk_text_buffer_select_range
	movq	-8(%rbp), %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-696(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
.LBB16_22:                              # %if.end.46
	addq	$704, %rsp              # imm = 0x2C0
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_text_tool_editor_motion, .Lfunc_end16-gimp_text_tool_editor_motion
	.cfi_endproc

	.globl	gimp_text_tool_editor_key_press
	.align	16, 0x90
	.type	gimp_text_tool_editor_key_press,@function
gimp_text_tool_editor_key_press:        # @gimp_text_tool_editor_key_press
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
	subq	$352, %rsp              # imm = 0x160
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movl	$1, -212(%rbp)
	movq	-40(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gtk_widget_has_focus
	cmpl	$0, %eax
	jne	.LBB17_5
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	28(%rax), %ecx
	movl	%ecx, %edx
	subl	$65056, %edx            # imm = 0xFE20
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	movl	%edx, -240(%rbp)        # 4-byte Spill
	je	.LBB17_2
	jmp	.LBB17_20
.LBB17_20:                              # %if.then
	movl	-236(%rbp), %eax        # 4-byte Reload
	subl	$65289, %eax            # imm = 0xFF09
	movl	%eax, -244(%rbp)        # 4-byte Spill
	je	.LBB17_2
	jmp	.LBB17_21
.LBB17_21:                              # %if.then
	movl	-236(%rbp), %eax        # 4-byte Reload
	subl	$65307, %eax            # imm = 0xFF1B
	movl	%eax, -248(%rbp)        # 4-byte Spill
	je	.LBB17_2
	jmp	.LBB17_22
.LBB17_22:                              # %if.then
	movl	-236(%rbp), %eax        # 4-byte Reload
	subl	$65417, %eax            # imm = 0xFF89
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jne	.LBB17_3
	jmp	.LBB17_2
.LBB17_2:                               # %sw.bb
	movq	-40(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gtk_widget_grab_focus
	movl	$1, -4(%rbp)
	jmp	.LBB17_19
.LBB17_3:                               # %sw.default
	jmp	.LBB17_4
.LBB17_4:                               # %sw.epilog
	jmp	.LBB17_5
.LBB17_5:                               # %if.end
	movq	-16(%rbp), %rax
	movq	456(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_im_context_filter_keypress
	cmpl	$0, %eax
	je	.LBB17_7
# BB#6:                                 # %if.then.11
	movq	-16(%rbp), %rax
	movl	$1, 464(%rax)
	movq	-16(%rbp), %rax
	movl	$-1, 504(%rax)
	movl	$1, -4(%rbp)
	jmp	.LBB17_19
.LBB17_7:                               # %if.end.12
	movq	-16(%rbp), %rdi
	callq	gimp_text_tool_ensure_proxy
	movq	-16(%rbp), %rdi
	movq	520(%rdi), %rdi
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	callq	gtk_object_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_bindings_activate_event
	cmpl	$0, %eax
	je	.LBB17_13
# BB#8:                                 # %if.then.17
	jmp	.LBB17_9
.LBB17_9:                               # %do.body
	movl	gimp_log_flags, %eax
	andl	$8192, %eax             # imm = 0x2000
	cmpl	$0, %eax
	je	.LBB17_11
# BB#10:                                # %if.then.19
	movl	$8192, %edi             # imm = 0x2000
	movabsq	$.L__func__.gimp_text_tool_editor_key_press, %rsi
	movl	$458, %edx              # imm = 0x1CA
	movabsq	$.L.str.9, %rcx
	movb	$0, %al
	callq	gimp_log
.LBB17_11:                              # %if.end.20
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	movl	$1, -4(%rbp)
	jmp	.LBB17_19
.LBB17_13:                              # %if.end.21
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_insert
	leaq	-128(%rbp), %rsi
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_text_buffer_get_iter_at_mark
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_selection_bound
	leaq	-208(%rbp), %rsi
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_text_buffer_get_iter_at_mark
	movq	-24(%rbp), %rax
	movl	28(%rax), %ecx
	movl	%ecx, %r8d
	subl	$65056, %r8d            # imm = 0xFE20
	movl	%ecx, -284(%rbp)        # 4-byte Spill
	movl	%r8d, -288(%rbp)        # 4-byte Spill
	je	.LBB17_15
	jmp	.LBB17_23
.LBB17_23:                              # %if.end.21
	movl	-284(%rbp), %eax        # 4-byte Reload
	subl	$65076, %eax            # imm = 0xFE34
	movl	%eax, -292(%rbp)        # 4-byte Spill
	je	.LBB17_14
	jmp	.LBB17_24
.LBB17_24:                              # %if.end.21
	movl	-284(%rbp), %eax        # 4-byte Reload
	subl	$65289, %eax            # imm = 0xFF09
	movl	%eax, -296(%rbp)        # 4-byte Spill
	je	.LBB17_15
	jmp	.LBB17_25
.LBB17_25:                              # %if.end.21
	movl	-284(%rbp), %eax        # 4-byte Reload
	subl	$65293, %eax            # imm = 0xFF0D
	movl	%eax, -300(%rbp)        # 4-byte Spill
	je	.LBB17_14
	jmp	.LBB17_26
.LBB17_26:                              # %if.end.21
	movl	-284(%rbp), %eax        # 4-byte Reload
	subl	$65307, %eax            # imm = 0xFF1B
	movl	%eax, -304(%rbp)        # 4-byte Spill
	je	.LBB17_16
	jmp	.LBB17_27
.LBB17_27:                              # %if.end.21
	movl	-284(%rbp), %eax        # 4-byte Reload
	subl	$65417, %eax            # imm = 0xFF89
	movl	%eax, -308(%rbp)        # 4-byte Spill
	je	.LBB17_15
	jmp	.LBB17_28
.LBB17_28:                              # %if.end.21
	movl	-284(%rbp), %eax        # 4-byte Reload
	subl	$65421, %eax            # imm = 0xFF8D
	movl	%eax, -312(%rbp)        # 4-byte Spill
	jne	.LBB17_17
	jmp	.LBB17_14
.LBB17_14:                              # %sw.bb.25
	movq	-16(%rbp), %rdi
	callq	gimp_text_tool_reset_im_context
	movabsq	$.L.str.10, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_text_tool_enter_text
	jmp	.LBB17_18
.LBB17_15:                              # %sw.bb.26
	movq	-16(%rbp), %rdi
	callq	gimp_text_tool_reset_im_context
	movabsq	$.L.str.11, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_text_tool_enter_text
	jmp	.LBB17_18
.LBB17_16:                              # %sw.bb.27
	movq	-16(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_cancel
	movq	-16(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	movq	%rsi, -344(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	56(%rax), %rdx
	movq	-336(%rbp), %rdi        # 8-byte Reload
	callq	gimp_tool_control
	jmp	.LBB17_18
.LBB17_17:                              # %sw.default.35
	movl	$0, -212(%rbp)
.LBB17_18:                              # %sw.epilog.36
	movq	-16(%rbp), %rax
	movl	$-1, 504(%rax)
	movl	-212(%rbp), %ecx
	movl	%ecx, -4(%rbp)
.LBB17_19:                              # %return
	movl	-4(%rbp), %eax
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_text_tool_editor_key_press, .Lfunc_end17-gimp_text_tool_editor_key_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_ensure_proxy,@function
gimp_text_tool_ensure_proxy:            # @gimp_text_tool_ensure_proxy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$320, %rsp              # imm = 0x140
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 512(%rax)
	je	.LBB18_3
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	512(%rax), %rdi
	callq	gtk_widget_get_screen
	movq	-24(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_screen
	movq	-40(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB18_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	512(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_screen
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_window_set_screen
	movq	-8(%rbp), %rax
	movq	512(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967096, %ecx       # imm = 0xFFFFFF38
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_window_move
	jmp	.LBB18_6
.LBB18_3:                               # %if.else
	movq	-8(%rbp), %rax
	cmpq	$0, 512(%rax)
	jne	.LBB18_5
# BB#4:                                 # %if.then.19
	movl	$1, %edi
	callq	gtk_window_new
	movq	-8(%rbp), %rcx
	movq	%rax, 512(%rcx)
	movq	-8(%rbp), %rax
	movq	512(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rcx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_screen
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_window_set_screen
	movq	-8(%rbp), %rax
	movq	512(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967096, %edx       # imm = 0xFFFFFF38
	movq	%rax, %rdi
	movl	%edx, %esi
	callq	gtk_window_move
	movq	-8(%rbp), %rax
	movq	512(%rax), %rdi
	callq	gtk_widget_show
	callq	gimp_text_proxy_new
	movq	-8(%rbp), %rcx
	movq	%rax, 520(%rcx)
	movq	-8(%rbp), %rax
	movq	512(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rcx
	movq	520(%rcx), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-8(%rbp), %rax
	movq	520(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.15, %rsi
	movabsq	$gimp_text_tool_move_cursor, %rax
	xorl	%edx, %edx
	movl	%edx, %r8d
	movl	$2, %r9d
	movq	-8(%rbp), %rcx
	movq	520(%rcx), %rcx
	movq	-8(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rdx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.16, %rsi
	movabsq	$gimp_text_tool_insert_at_cursor, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-8(%rbp), %rdx
	movq	520(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.17, %rsi
	movabsq	$gimp_text_tool_delete_from_cursor, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-8(%rbp), %rdx
	movq	520(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.18, %rsi
	movabsq	$gimp_text_tool_backspace, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-8(%rbp), %rdx
	movq	520(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.19, %rsi
	movabsq	$gimp_text_tool_cut_clipboard, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-8(%rbp), %rdx
	movq	520(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.20, %rsi
	movabsq	$gimp_text_tool_copy_clipboard, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-8(%rbp), %rdx
	movq	520(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.21, %rsi
	movabsq	$gimp_text_tool_paste_clipboard, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-8(%rbp), %rdx
	movq	520(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-216(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.22, %rsi
	movabsq	$gimp_text_tool_toggle_overwrite, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-8(%rbp), %rdx
	movq	520(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.23, %rsi
	movabsq	$gimp_text_tool_select_all, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-8(%rbp), %rdx
	movq	520(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-248(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.24, %rsi
	movabsq	$gimp_text_tool_change_size, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-8(%rbp), %rdx
	movq	520(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-264(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.25, %rsi
	movabsq	$gimp_text_tool_change_baseline, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-8(%rbp), %rdx
	movq	520(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-280(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.26, %rsi
	movabsq	$gimp_text_tool_change_kerning, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-8(%rbp), %rdx
	movq	520(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-296(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -312(%rbp)        # 8-byte Spill
.LBB18_5:                               # %if.end
	jmp	.LBB18_6
.LBB18_6:                               # %if.end.62
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_text_tool_ensure_proxy, .Lfunc_end18-gimp_text_tool_ensure_proxy
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_enter_text,@function
gimp_text_tool_enter_text:              # @gimp_text_tool_enter_text
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	272(%rsi), %rsi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_text_buffer_get_has_selection
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_text_buffer_begin_user_action
	movq	-8(%rbp), %rdi
	callq	gimp_text_tool_delete_selection
	cmpl	$0, -28(%rbp)
	jne	.LBB19_6
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpl	$0, 500(%rax)
	je	.LBB19_6
# BB#2:                                 # %land.lhs.true.5
	movq	-16(%rbp), %rdi
	movl	$.L.str.10, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB19_6
# BB#3:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_text_buffer_get_insert
	leaq	-112(%rbp), %rsi
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_text_buffer_get_iter_at_mark
	leaq	-112(%rbp), %rdi
	callq	gtk_text_iter_ends_line
	cmpl	$0, %eax
	jne	.LBB19_5
# BB#4:                                 # %if.then.11
	xorl	%esi, %esi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_text_tool_delete_from_cursor
.LBB19_5:                               # %if.end
	jmp	.LBB19_6
.LBB19_6:                               # %if.end.12
	movq	-8(%rbp), %rax
	movq	272(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_text_buffer_insert
	movq	-24(%rbp), %rdi
	callq	gtk_text_buffer_end_user_action
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_text_tool_enter_text, .Lfunc_end19-gimp_text_tool_enter_text
	.cfi_endproc

	.globl	gimp_text_tool_editor_key_release
	.align	16, 0x90
	.type	gimp_text_tool_editor_key_release,@function
gimp_text_tool_editor_key_release:      # @gimp_text_tool_editor_key_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	456(%rsi), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_im_context_filter_keypress
	cmpl	$0, %eax
	je	.LBB20_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	$1, 464(%rax)
	movl	$1, -4(%rbp)
	jmp	.LBB20_9
.LBB20_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	gimp_text_tool_ensure_proxy
	movq	-16(%rbp), %rdi
	movq	520(%rdi), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gtk_object_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_bindings_activate_event
	cmpl	$0, %eax
	je	.LBB20_8
# BB#3:                                 # %if.then.5
	jmp	.LBB20_4
.LBB20_4:                               # %do.body
	movl	gimp_log_flags, %eax
	andl	$8192, %eax             # imm = 0x2000
	cmpl	$0, %eax
	je	.LBB20_6
# BB#5:                                 # %if.then.7
	movl	$8192, %edi             # imm = 0x2000
	movabsq	$.L__func__.gimp_text_tool_editor_key_release, %rsi
	movl	$515, %edx              # imm = 0x203
	movabsq	$.L.str.9, %rcx
	movb	$0, %al
	callq	gimp_log
.LBB20_6:                               # %if.end.8
	jmp	.LBB20_7
.LBB20_7:                               # %do.end
	movl	$1, -4(%rbp)
	jmp	.LBB20_9
.LBB20_8:                               # %if.end.9
	movl	$0, -4(%rbp)
.LBB20_9:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_text_tool_editor_key_release, .Lfunc_end20-gimp_text_tool_editor_key_release
	.cfi_endproc

	.globl	gimp_text_tool_editor_get_cursor_rect
	.align	16, 0x90
	.type	gimp_text_tool_editor_get_cursor_rect,@function
gimp_text_tool_editor_get_cursor_rect:  # @gimp_text_tool_editor_get_cursor_rect
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	272(%rdx), %rdx
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)
	callq	gimp_text_tool_get_type
	movq	%rax, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB21_3
# BB#2:                                 # %if.then
	movl	$0, -156(%rbp)
	jmp	.LBB21_8
.LBB21_3:                               # %if.else
	movq	-144(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_6
# BB#4:                                 # %land.lhs.true
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB21_6
# BB#5:                                 # %if.then.6
	movl	$1, -156(%rbp)
	jmp	.LBB21_7
.LBB21_6:                               # %if.else.7
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -156(%rbp)
.LBB21_7:                               # %if.end
	jmp	.LBB21_8
.LBB21_8:                               # %if.end.9
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB21_10
# BB#9:                                 # %if.then.11
	jmp	.LBB21_11
.LBB21_10:                              # %if.else.12
	movabsq	$.L.str.12, %rdi
	movabsq	$.L__func__.gimp_text_tool_editor_get_cursor_rect, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_21
.LBB21_11:                              # %if.end.13
	jmp	.LBB21_12
.LBB21_12:                              # %do.end
	jmp	.LBB21_13
.LBB21_13:                              # %do.body.14
	cmpq	$0, -24(%rbp)
	je	.LBB21_15
# BB#14:                                # %if.then.16
	jmp	.LBB21_16
.LBB21_15:                              # %if.else.17
	movabsq	$.L.str.12, %rdi
	movabsq	$.L__func__.gimp_text_tool_editor_get_cursor_rect, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_21
.LBB21_16:                              # %if.end.18
	jmp	.LBB21_17
.LBB21_17:                              # %do.end.19
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_text_buffer_get_insert
	leaq	-128(%rbp), %rsi
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_text_buffer_get_iter_at_mark
	leaq	-128(%rbp), %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rax
	movq	272(%rax), %rdi
	callq	gimp_text_buffer_get_iter_index
	movl	%eax, -132(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_text_tool_ensure_layout
	movq	-8(%rbp), %rsi
	movq	328(%rsi), %rdi
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	gimp_text_layout_get_pango_layout
	leaq	-44(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gimp_text_layout_get_offsets
	cmpl	$0, -12(%rbp)
	je	.LBB21_19
# BB#18:                                # %if.then.28
	movq	-40(%rbp), %rdi
	movl	-132(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	pango_layout_index_to_pos
	jmp	.LBB21_20
.LBB21_19:                              # %if.else.29
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdi
	movl	-132(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	pango_layout_get_cursor_pos
.LBB21_20:                              # %if.end.30
	movq	-8(%rbp), %rax
	movq	328(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_text_layout_transform_rect
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	addl	$512, %ecx              # imm = 0x200
	sarl	$10, %ecx
	addl	-44(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rax
	movl	4(%rax), %ecx
	addl	$512, %ecx              # imm = 0x200
	sarl	$10, %ecx
	addl	-48(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	addl	$512, %ecx              # imm = 0x200
	sarl	$10, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-24(%rbp), %rax
	movl	12(%rax), %ecx
	addl	$512, %ecx              # imm = 0x200
	sarl	$10, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 12(%rax)
.LBB21_21:                              # %return
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_text_tool_editor_get_cursor_rect, .Lfunc_end21-gimp_text_tool_editor_get_cursor_rect
	.cfi_endproc

	.globl	gimp_text_tool_editor_update_im_rect
	.align	16, 0x90
	.type	gimp_text_tool_editor_update_im_rect,@function
gimp_text_tool_editor_update_im_rect:   # @gimp_text_tool_editor_update_im_rect
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	xorl	%esi, %esi
	movl	$16, %eax
	movl	%eax, %edx
	leaq	-32(%rbp), %rcx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	memset
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_text_tool_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB22_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB22_8
.LBB22_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB22_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB22_7
.LBB22_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB22_7:                               # %if.end
	jmp	.LBB22_8
.LBB22_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB22_10
# BB#9:                                 # %if.then.8
	jmp	.LBB22_11
.LBB22_10:                              # %if.else.9
	movabsq	$.L.str.12, %rdi
	movabsq	$.L__func__.gimp_text_tool_editor_update_im_rect, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB22_17
.LBB22_11:                              # %if.end.10
	jmp	.LBB22_12
.LBB22_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	56(%rax), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 280(%rax)
	je	.LBB22_14
# BB#13:                                # %if.then.15
	leaq	-32(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	500(%rax), %esi
	callq	gimp_text_tool_editor_get_cursor_rect
.LBB22_14:                              # %if.end.16
	movabsq	$.L.str.5, %rsi
	leaq	-36(%rbp), %rdx
	movabsq	$.L.str.6, %rcx
	leaq	-40(%rbp), %r8
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	g_object_get
	leaq	-32(%rbp), %rcx
	movl	-36(%rbp), %r10d
	addl	-32(%rbp), %r10d
	movl	%r10d, -32(%rbp)
	movl	-40(%rbp), %r10d
	addl	-28(%rbp), %r10d
	movl	%r10d, -28(%rbp)
	movq	-16(%rbp), %rdi
	cvtsi2sdl	-32(%rbp), %xmm0
	cvtsi2sdl	-28(%rbp), %xmm1
	movq	%rcx, %rdx
	addq	$4, %rdx
	movq	%rcx, %rsi
	callq	gimp_display_shell_transform_xy
	movq	-8(%rbp), %rcx
	cmpq	$0, 472(%rcx)
	je	.LBB22_16
# BB#15:                                # %if.then.24
	leaq	-72(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	472(%rax), %rdi
	callq	gtk_widget_size_request
	movl	-72(%rbp), %ecx
	movl	%ecx, -24(%rbp)
	movl	-68(%rbp), %ecx
	movl	%ecx, -20(%rbp)
.LBB22_16:                              # %if.end.29
	leaq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	456(%rcx), %rdi
	movq	%rax, %rsi
	callq	gtk_im_context_set_cursor_location
.LBB22_17:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_text_tool_editor_update_im_rect, .Lfunc_end22-gimp_text_tool_editor_update_im_rect
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_move_cursor,@function
gimp_text_tool_move_cursor:             # @gimp_text_tool_move_cursor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$608, %rsp              # imm = 0x260
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	272(%rdi), %rdi
	movq	%rdi, -472(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movl	$0, -204(%rbp)
	movl	$-1, -208(%rbp)
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$8192, %eax             # imm = 0x2000
	cmpl	$0, %eax
	je	.LBB23_3
# BB#2:                                 # %if.then
	callq	gtk_movement_step_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	callq	g_enum_get_value
	movl	$8192, %edi             # imm = 0x2000
	movabsq	$.L__func__.gimp_text_tool_move_cursor, %rsi
	movl	$694, %edx              # imm = 0x2B6
	movabsq	$.L.str.27, %rcx
	movabsq	$.L.str.29, %r8
	movabsq	$.L.str.28, %r9
	movq	8(%rax), %rax
	movl	-16(%rbp), %r10d
	cmpl	$0, -20(%rbp)
	cmovneq	%r9, %r8
	movq	%r8, -480(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movl	%r10d, %r9d
	movq	-480(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	gimp_log
.LBB23_3:                               # %if.end
	jmp	.LBB23_4
.LBB23_4:                               # %do.end
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -488(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_text_buffer_get_insert
	leaq	-112(%rbp), %rsi
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_text_buffer_get_iter_at_mark
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -496(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_text_buffer_get_selection_bound
	leaq	-192(%rbp), %rsi
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_text_buffer_get_iter_at_mark
	cmpl	$0, -20(%rbp)
	je	.LBB23_6
# BB#5:                                 # %if.then.10
	leaq	-192(%rbp), %rax
	movq	%rax, -200(%rbp)
	jmp	.LBB23_12
.LBB23_6:                               # %if.else
	cmpl	$0, -16(%rbp)
	jle	.LBB23_8
# BB#7:                                 # %if.then.11
	leaq	-192(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	callq	gtk_text_iter_order
	jmp	.LBB23_9
.LBB23_8:                               # %if.else.12
	leaq	-112(%rbp), %rdi
	leaq	-192(%rbp), %rsi
	callq	gtk_text_iter_order
.LBB23_9:                               # %if.end.13
	leaq	-112(%rbp), %rax
	leaq	-192(%rbp), %rsi
	movq	%rax, -200(%rbp)
	movq	%rax, %rdi
	callq	gtk_text_iter_equal
	cmpl	$0, %eax
	jne	.LBB23_11
# BB#10:                                # %if.then.16
	movl	$1, -204(%rbp)
.LBB23_11:                              # %if.end.17
	jmp	.LBB23_12
.LBB23_12:                              # %if.end.18
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$8, %rdx
	movq	%rcx, -504(%rbp)        # 8-byte Spill
	movq	%rdx, -512(%rbp)        # 8-byte Spill
	ja	.LBB23_91
# BB#94:                                # %if.end.18
	movq	-504(%rbp), %rax        # 8-byte Reload
	movq	.LJTI23_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB23_13:                              # %sw.bb
	cmpl	$0, -204(%rbp)
	jne	.LBB23_15
# BB#14:                                # %if.then.20
	leaq	-112(%rbp), %rdi
	movl	-16(%rbp), %esi
	callq	gtk_text_iter_forward_visible_cursor_positions
	movl	%eax, -516(%rbp)        # 4-byte Spill
.LBB23_15:                              # %if.end.22
	jmp	.LBB23_92
.LBB23_16:                              # %sw.bb.23
	cmpl	$0, -204(%rbp)
	jne	.LBB23_37
# BB#17:                                # %if.then.25
	movq	-8(%rbp), %rdi
	callq	gimp_text_tool_ensure_layout
	cmpl	$0, %eax
	jne	.LBB23_19
# BB#18:                                # %if.then.28
	jmp	.LBB23_92
.LBB23_19:                              # %if.end.29
	movq	-8(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gimp_text_layout_get_pango_layout
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rdi
	callq	pango_layout_get_text
	movq	%rax, -224(%rbp)
.LBB23_20:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -16(%rbp)
	je	.LBB23_36
# BB#21:                                # %while.body
                                        #   in Loop: Header=BB23_20 Depth=1
	leaq	-112(%rbp), %rsi
	movl	$1, %edx
	movl	$8288, -228(%rbp)       # imm = 0x2060
	movl	$0, -236(%rbp)
	movq	-8(%rbp), %rax
	movq	272(%rax), %rdi
	callq	gimp_text_buffer_get_iter_index
	movl	%eax, -232(%rbp)
	cmpl	$0, -16(%rbp)
	jle	.LBB23_26
# BB#22:                                # %if.then.37
                                        #   in Loop: Header=BB23_20 Depth=1
	movq	-224(%rbp), %rax
	movslq	-232(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	callq	g_utf8_get_char
	cmpl	$8288, %eax             # imm = 0x2060
	jne	.LBB23_24
# BB#23:                                # %if.then.40
                                        #   in Loop: Header=BB23_20 Depth=1
	movl	$1, %eax
	xorl	%ecx, %ecx
	leaq	-240(%rbp), %r9
	leaq	-236(%rbp), %rdx
	movq	-216(%rbp), %rdi
	movl	-232(%rbp), %esi
	movl	%esi, -520(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movl	-520(%rbp), %r8d        # 4-byte Reload
	movq	%rdx, -528(%rbp)        # 8-byte Spill
	movl	%r8d, %edx
	movl	%eax, %r8d
	movq	-528(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	pango_layout_move_cursor_visually
	jmp	.LBB23_25
.LBB23_24:                              # %if.else.41
                                        #   in Loop: Header=BB23_20 Depth=1
	movl	-232(%rbp), %eax
	movl	%eax, -240(%rbp)
.LBB23_25:                              # %if.end.42
                                        #   in Loop: Header=BB23_20 Depth=1
	movl	$1, %eax
	leaq	-240(%rbp), %r9
	leaq	-236(%rbp), %rcx
	movq	-216(%rbp), %rdi
	movl	-240(%rbp), %edx
	movl	-236(%rbp), %esi
	movl	%esi, -532(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movl	-532(%rbp), %r8d        # 4-byte Reload
	movq	%rcx, -544(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%eax, %r8d
	movq	-544(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	pango_layout_move_cursor_visually
	movl	-16(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB23_31
.LBB23_26:                              # %if.else.43
                                        #   in Loop: Header=BB23_20 Depth=1
	movl	$1, %esi
	xorl	%ecx, %ecx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	leaq	-240(%rbp), %r9
	leaq	-236(%rbp), %rax
	movq	-216(%rbp), %rdi
	movl	-232(%rbp), %edx
	movq	%rax, (%rsp)
	callq	pango_layout_move_cursor_visually
	cmpl	$-1, -240(%rbp)
	je	.LBB23_30
# BB#27:                                # %land.lhs.true
                                        #   in Loop: Header=BB23_20 Depth=1
	cmpl	$2147483647, -240(%rbp) # imm = 0x7FFFFFFF
	je	.LBB23_30
# BB#28:                                # %land.lhs.true.46
                                        #   in Loop: Header=BB23_20 Depth=1
	movq	-224(%rbp), %rax
	movslq	-240(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	callq	g_utf8_get_char
	cmpl	$8288, %eax             # imm = 0x2060
	jne	.LBB23_30
# BB#29:                                # %if.then.51
                                        #   in Loop: Header=BB23_20 Depth=1
	movl	$1, %esi
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	leaq	-240(%rbp), %r9
	leaq	-236(%rbp), %rax
	movq	-216(%rbp), %rdi
	movl	-240(%rbp), %edx
	movl	-236(%rbp), %ecx
	movq	%rax, (%rsp)
	callq	pango_layout_move_cursor_visually
.LBB23_30:                              # %if.end.52
                                        #   in Loop: Header=BB23_20 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
.LBB23_31:                              # %if.end.53
                                        #   in Loop: Header=BB23_20 Depth=1
	cmpl	$2147483647, -240(%rbp) # imm = 0x7FFFFFFF
	je	.LBB23_34
# BB#32:                                # %land.lhs.true.55
                                        #   in Loop: Header=BB23_20 Depth=1
	cmpl	$-1, -240(%rbp)
	je	.LBB23_34
# BB#33:                                # %if.then.57
                                        #   in Loop: Header=BB23_20 Depth=1
	movl	-240(%rbp), %eax
	movl	%eax, -232(%rbp)
	jmp	.LBB23_35
.LBB23_34:                              # %if.else.58
	jmp	.LBB23_36
.LBB23_35:                              # %if.end.59
                                        #   in Loop: Header=BB23_20 Depth=1
	leaq	-112(%rbp), %rsi
	movl	$1, %ecx
	movq	-8(%rbp), %rax
	movq	272(%rax), %rdi
	movl	-232(%rbp), %edx
	callq	gimp_text_buffer_get_iter_at_index
	leaq	-112(%rbp), %rdi
	movl	-236(%rbp), %esi
	callq	gtk_text_iter_forward_chars
	movl	%eax, -548(%rbp)        # 4-byte Spill
	jmp	.LBB23_20
.LBB23_36:                              # %while.end
	jmp	.LBB23_37
.LBB23_37:                              # %if.end.62
	jmp	.LBB23_92
.LBB23_38:                              # %sw.bb.63
	cmpl	$0, -16(%rbp)
	jge	.LBB23_40
# BB#39:                                # %if.then.65
	leaq	-112(%rbp), %rdi
	xorl	%eax, %eax
	subl	-16(%rbp), %eax
	movl	%eax, %esi
	callq	gtk_text_iter_backward_visible_word_starts
	movl	%eax, -552(%rbp)        # 4-byte Spill
	jmp	.LBB23_45
.LBB23_40:                              # %if.else.67
	cmpl	$0, -16(%rbp)
	jle	.LBB23_44
# BB#41:                                # %if.then.69
	leaq	-112(%rbp), %rdi
	movl	-16(%rbp), %esi
	callq	gtk_text_iter_forward_visible_word_ends
	cmpl	$0, %eax
	jne	.LBB23_43
# BB#42:                                # %if.then.72
	leaq	-112(%rbp), %rdi
	callq	gtk_text_iter_forward_to_line_end
	movl	%eax, -556(%rbp)        # 4-byte Spill
.LBB23_43:                              # %if.end.74
	jmp	.LBB23_44
.LBB23_44:                              # %if.end.75
	jmp	.LBB23_45
.LBB23_45:                              # %if.end.76
	jmp	.LBB23_92
.LBB23_46:                              # %sw.bb.77
	leaq	-320(%rbp), %rsi
	leaq	-400(%rbp), %rdx
	movq	-32(%rbp), %rdi
	callq	gtk_text_buffer_get_bounds
	leaq	-112(%rbp), %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	272(%rdi), %rdi
	callq	gimp_text_buffer_get_iter_index
	movl	%eax, -404(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_text_tool_ensure_layout
	cmpl	$0, %eax
	jne	.LBB23_48
# BB#47:                                # %if.then.84
	jmp	.LBB23_92
.LBB23_48:                              # %if.end.85
	movq	-8(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gimp_text_layout_get_pango_layout
	xorl	%edx, %edx
	leaq	-452(%rbp), %rcx
	leaq	-208(%rbp), %r8
	movq	%rax, -416(%rbp)
	movq	-416(%rbp), %rdi
	movl	-404(%rbp), %esi
	callq	pango_layout_index_to_line_x
	movq	-416(%rbp), %rdi
	callq	pango_layout_get_iter
	movq	%rax, -432(%rbp)
	movl	$0, -460(%rbp)
.LBB23_49:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-460(%rbp), %eax
	cmpl	-452(%rbp), %eax
	jge	.LBB23_52
# BB#50:                                # %for.body
                                        #   in Loop: Header=BB23_49 Depth=1
	movq	-432(%rbp), %rdi
	callq	pango_layout_iter_next_line
	movl	%eax, -560(%rbp)        # 4-byte Spill
# BB#51:                                # %for.inc
                                        #   in Loop: Header=BB23_49 Depth=1
	movl	-460(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -460(%rbp)
	jmp	.LBB23_49
.LBB23_52:                              # %for.end
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-448(%rbp), %rdx
	movq	-432(%rbp), %rdi
	callq	pango_layout_iter_get_line_extents
	movl	-448(%rbp), %eax
	addl	-208(%rbp), %eax
	movl	%eax, -208(%rbp)
	movq	-432(%rbp), %rdi
	callq	pango_layout_iter_free
	movq	-8(%rbp), %rdx
	cmpl	$-1, 504(%rdx)
	je	.LBB23_56
# BB#53:                                # %land.lhs.true.94
	movl	-208(%rbp), %eax
	cmpl	-448(%rbp), %eax
	jle	.LBB23_55
# BB#54:                                # %lor.lhs.false
	movl	-208(%rbp), %eax
	movl	-448(%rbp), %ecx
	addl	-440(%rbp), %ecx
	cmpl	%ecx, %eax
	jl	.LBB23_56
.LBB23_55:                              # %if.then.100
	movq	-8(%rbp), %rax
	movl	504(%rax), %ecx
	movl	%ecx, -208(%rbp)
.LBB23_56:                              # %if.end.102
	movl	-16(%rbp), %eax
	addl	-452(%rbp), %eax
	movl	%eax, -452(%rbp)
	cmpl	$0, -452(%rbp)
	jge	.LBB23_58
# BB#57:                                # %if.then.105
	movl	$80, %eax
	movl	%eax, %edx
	leaq	-320(%rbp), %rcx
	leaq	-112(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	jmp	.LBB23_92
.LBB23_58:                              # %if.else.106
	movl	-452(%rbp), %eax
	movq	-416(%rbp), %rdi
	movl	%eax, -564(%rbp)        # 4-byte Spill
	callq	pango_layout_get_line_count
	movl	-564(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB23_60
# BB#59:                                # %if.then.109
	movl	$80, %eax
	movl	%eax, %edx
	leaq	-400(%rbp), %rcx
	leaq	-112(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	jmp	.LBB23_92
.LBB23_60:                              # %if.end.110
	jmp	.LBB23_61
.LBB23_61:                              # %if.end.111
	movq	-416(%rbp), %rdi
	callq	pango_layout_get_iter
	movq	%rax, -432(%rbp)
	movl	$0, -460(%rbp)
.LBB23_62:                              # %for.cond.113
                                        # =>This Inner Loop Header: Depth=1
	movl	-460(%rbp), %eax
	cmpl	-452(%rbp), %eax
	jge	.LBB23_65
# BB#63:                                # %for.body.115
                                        #   in Loop: Header=BB23_62 Depth=1
	movq	-432(%rbp), %rdi
	callq	pango_layout_iter_next_line
	movl	%eax, -568(%rbp)        # 4-byte Spill
# BB#64:                                # %for.inc.117
                                        #   in Loop: Header=BB23_62 Depth=1
	movl	-460(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -460(%rbp)
	jmp	.LBB23_62
.LBB23_65:                              # %for.end.119
	movq	-432(%rbp), %rdi
	callq	pango_layout_iter_get_line_readonly
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-448(%rbp), %rdx
	movq	%rax, -424(%rbp)
	movq	-432(%rbp), %rdi
	callq	pango_layout_iter_get_line_extents
	movq	-432(%rbp), %rdi
	callq	pango_layout_iter_free
	leaq	-404(%rbp), %rdx
	leaq	-456(%rbp), %rcx
	movq	-424(%rbp), %rdi
	movl	-208(%rbp), %r8d
	subl	-448(%rbp), %r8d
	movl	%r8d, %esi
	callq	pango_layout_line_x_to_index
	leaq	-112(%rbp), %rsi
	movl	$1, %ecx
	movq	-8(%rbp), %rdx
	movq	272(%rdx), %rdi
	movl	-404(%rbp), %edx
	movl	%eax, -572(%rbp)        # 4-byte Spill
	callq	gimp_text_buffer_get_iter_at_index
.LBB23_66:                              # %while.cond.125
                                        # =>This Inner Loop Header: Depth=1
	movl	-456(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -456(%rbp)
	cmpl	$0, %eax
	je	.LBB23_68
# BB#67:                                # %while.body.128
                                        #   in Loop: Header=BB23_66 Depth=1
	leaq	-112(%rbp), %rdi
	callq	gtk_text_iter_forward_char
	movl	%eax, -576(%rbp)        # 4-byte Spill
	jmp	.LBB23_66
.LBB23_68:                              # %while.end.130
	jmp	.LBB23_92
.LBB23_69:                              # %sw.bb.131
	cmpl	$0, -16(%rbp)
	jge	.LBB23_71
# BB#70:                                # %if.then.133
	leaq	-112(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gtk_text_buffer_get_start_iter
	jmp	.LBB23_74
.LBB23_71:                              # %if.else.134
	cmpl	$0, -16(%rbp)
	jle	.LBB23_73
# BB#72:                                # %if.then.136
	leaq	-112(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gtk_text_buffer_get_end_iter
.LBB23_73:                              # %if.end.137
	jmp	.LBB23_74
.LBB23_74:                              # %if.end.138
	jmp	.LBB23_92
.LBB23_75:                              # %sw.bb.139
	cmpl	$0, -16(%rbp)
	jge	.LBB23_77
# BB#76:                                # %if.then.141
	leaq	-112(%rbp), %rdi
	xorl	%esi, %esi
	callq	gtk_text_iter_set_line_offset
	jmp	.LBB23_82
.LBB23_77:                              # %if.else.142
	cmpl	$0, -16(%rbp)
	jle	.LBB23_81
# BB#78:                                # %if.then.144
	leaq	-112(%rbp), %rdi
	callq	gtk_text_iter_ends_line
	cmpl	$0, %eax
	jne	.LBB23_80
# BB#79:                                # %if.then.147
	leaq	-112(%rbp), %rdi
	callq	gtk_text_iter_forward_to_line_end
	movl	%eax, -580(%rbp)        # 4-byte Spill
.LBB23_80:                              # %if.end.149
	jmp	.LBB23_81
.LBB23_81:                              # %if.end.150
	jmp	.LBB23_82
.LBB23_82:                              # %if.end.151
	jmp	.LBB23_92
.LBB23_83:                              # %sw.bb.152
	cmpl	$0, -16(%rbp)
	jge	.LBB23_85
# BB#84:                                # %if.then.154
	leaq	-112(%rbp), %rdi
	xorl	%esi, %esi
	callq	gtk_text_iter_set_line_offset
	jmp	.LBB23_90
.LBB23_85:                              # %if.else.155
	cmpl	$0, -16(%rbp)
	jle	.LBB23_89
# BB#86:                                # %if.then.157
	leaq	-112(%rbp), %rdi
	callq	gtk_text_iter_ends_line
	cmpl	$0, %eax
	jne	.LBB23_88
# BB#87:                                # %if.then.160
	leaq	-112(%rbp), %rdi
	callq	gtk_text_iter_forward_to_line_end
	movl	%eax, -584(%rbp)        # 4-byte Spill
.LBB23_88:                              # %if.end.162
	jmp	.LBB23_89
.LBB23_89:                              # %if.end.163
	jmp	.LBB23_90
.LBB23_90:                              # %if.end.164
	jmp	.LBB23_92
.LBB23_91:                              # %sw.default
	jmp	.LBB23_93
.LBB23_92:                              # %sw.epilog
	movl	-208(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 504(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, -592(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movq	-8(%rbp), %rdi
	callq	gimp_text_tool_reset_im_context
	leaq	-112(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	-200(%rbp), %rdx
	callq	gtk_text_buffer_select_range
	movq	-8(%rbp), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
.LBB23_93:                              # %return
	addq	$608, %rsp              # imm = 0x260
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_text_tool_move_cursor, .Lfunc_end23-gimp_text_tool_move_cursor
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI23_0:
	.quad	.LBB23_13
	.quad	.LBB23_16
	.quad	.LBB23_38
	.quad	.LBB23_46
	.quad	.LBB23_83
	.quad	.LBB23_91
	.quad	.LBB23_75
	.quad	.LBB23_69
	.quad	.LBB23_69

	.text
	.align	16, 0x90
	.type	gimp_text_tool_insert_at_cursor,@function
gimp_text_tool_insert_at_cursor:        # @gimp_text_tool_insert_at_cursor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	272(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_text_buffer_insert
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_text_tool_insert_at_cursor, .Lfunc_end24-gimp_text_tool_insert_at_cursor
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_delete_from_cursor,@function
gimp_text_tool_delete_from_cursor:      # @gimp_text_tool_delete_from_cursor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	272(%rdi), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$8192, %eax             # imm = 0x2000
	cmpl	$0, %eax
	je	.LBB25_3
# BB#2:                                 # %if.then
	callq	gtk_delete_type_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	callq	g_enum_get_value
	movl	$8192, %edi             # imm = 0x2000
	movabsq	$.L__func__.gimp_text_tool_delete_from_cursor, %rsi
	movl	$987, %edx              # imm = 0x3DB
	movabsq	$.L.str.30, %rcx
	movq	8(%rax), %r8
	movl	-16(%rbp), %r9d
	movb	$0, %al
	callq	gimp_log
.LBB25_3:                               # %if.end
	jmp	.LBB25_4
.LBB25_4:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_text_tool_reset_im_context
	movq	-24(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_insert
	leaq	-104(%rbp), %rsi
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_text_buffer_get_iter_at_mark
	movups	-40(%rbp), %xmm0
	movaps	%xmm0, -128(%rbp)
	movups	-104(%rbp), %xmm0
	movups	-88(%rbp), %xmm1
	movups	-72(%rbp), %xmm2
	movups	-56(%rbp), %xmm3
	movaps	%xmm3, -144(%rbp)
	movaps	%xmm2, -160(%rbp)
	movaps	%xmm1, -176(%rbp)
	movaps	%xmm0, -192(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$7, %rdx
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	ja	.LBB25_39
# BB#42:                                # %do.end
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	.LJTI25_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB25_5:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	gtk_text_buffer_get_has_selection
	cmpl	$0, %eax
	je	.LBB25_7
# BB#6:                                 # %if.then.9
	movl	$1, %eax
	movq	-24(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	gtk_text_buffer_delete_selection
	movl	%eax, -228(%rbp)        # 4-byte Spill
	jmp	.LBB25_41
.LBB25_7:                               # %if.else
	leaq	-192(%rbp), %rdi
	movl	-16(%rbp), %esi
	callq	gtk_text_iter_forward_cursor_positions
	movl	%eax, -232(%rbp)        # 4-byte Spill
# BB#8:                                 # %if.end.12
	jmp	.LBB25_39
.LBB25_9:                               # %sw.bb.13
	cmpl	$0, -16(%rbp)
	jge	.LBB25_13
# BB#10:                                # %if.then.14
	leaq	-104(%rbp), %rdi
	callq	gtk_text_iter_starts_word
	cmpl	$0, %eax
	jne	.LBB25_12
# BB#11:                                # %if.then.17
	leaq	-104(%rbp), %rdi
	movl	$1, %esi
	callq	gtk_text_iter_backward_visible_word_starts
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB25_12:                              # %if.end.19
	jmp	.LBB25_19
.LBB25_13:                              # %if.else.20
	cmpl	$0, -16(%rbp)
	jle	.LBB25_18
# BB#14:                                # %if.then.22
	leaq	-192(%rbp), %rdi
	callq	gtk_text_iter_ends_word
	cmpl	$0, %eax
	jne	.LBB25_17
# BB#15:                                # %land.lhs.true
	leaq	-192(%rbp), %rdi
	movl	$1, %esi
	callq	gtk_text_iter_forward_visible_word_ends
	cmpl	$0, %eax
	jne	.LBB25_17
# BB#16:                                # %if.then.27
	leaq	-192(%rbp), %rdi
	callq	gtk_text_iter_forward_to_line_end
	movl	%eax, -240(%rbp)        # 4-byte Spill
.LBB25_17:                              # %if.end.29
	jmp	.LBB25_18
.LBB25_18:                              # %if.end.30
	jmp	.LBB25_19
.LBB25_19:                              # %if.end.31
	jmp	.LBB25_39
.LBB25_20:                              # %sw.bb.32
	leaq	-104(%rbp), %rdi
	callq	gtk_text_iter_starts_word
	cmpl	$0, %eax
	jne	.LBB25_22
# BB#21:                                # %if.then.35
	leaq	-104(%rbp), %rdi
	movl	$1, %esi
	callq	gtk_text_iter_backward_visible_word_starts
	movl	%eax, -244(%rbp)        # 4-byte Spill
.LBB25_22:                              # %if.end.37
	leaq	-192(%rbp), %rdi
	callq	gtk_text_iter_ends_word
	cmpl	$0, %eax
	jne	.LBB25_25
# BB#23:                                # %land.lhs.true.40
	leaq	-192(%rbp), %rdi
	movl	$1, %esi
	callq	gtk_text_iter_forward_visible_word_ends
	cmpl	$0, %eax
	jne	.LBB25_25
# BB#24:                                # %if.then.43
	leaq	-192(%rbp), %rdi
	callq	gtk_text_iter_forward_to_line_end
	movl	%eax, -248(%rbp)        # 4-byte Spill
.LBB25_25:                              # %if.end.45
	jmp	.LBB25_39
.LBB25_26:                              # %sw.bb.46
	jmp	.LBB25_39
.LBB25_27:                              # %sw.bb.47
	jmp	.LBB25_39
.LBB25_28:                              # %sw.bb.48
	cmpl	$0, -16(%rbp)
	jge	.LBB25_30
# BB#29:                                # %if.then.50
	leaq	-104(%rbp), %rdi
	xorl	%esi, %esi
	callq	gtk_text_iter_set_line_offset
	jmp	.LBB25_36
.LBB25_30:                              # %if.else.51
	cmpl	$0, -16(%rbp)
	jle	.LBB25_35
# BB#31:                                # %if.then.53
	leaq	-192(%rbp), %rdi
	callq	gtk_text_iter_ends_line
	cmpl	$0, %eax
	jne	.LBB25_33
# BB#32:                                # %if.then.56
	leaq	-192(%rbp), %rdi
	callq	gtk_text_iter_forward_to_line_end
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jmp	.LBB25_34
.LBB25_33:                              # %if.else.58
	leaq	-192(%rbp), %rdi
	movl	$1, %esi
	callq	gtk_text_iter_forward_cursor_positions
	movl	%eax, -256(%rbp)        # 4-byte Spill
.LBB25_34:                              # %if.end.60
	jmp	.LBB25_35
.LBB25_35:                              # %if.end.61
	jmp	.LBB25_36
.LBB25_36:                              # %if.end.62
	jmp	.LBB25_39
.LBB25_37:                              # %sw.bb.63
	jmp	.LBB25_39
.LBB25_38:                              # %sw.bb.64
	leaq	-104(%rbp), %rax
	leaq	-192(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	find_whitepace_region
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB25_39:                              # %sw.epilog
	leaq	-104(%rbp), %rdi
	leaq	-192(%rbp), %rsi
	callq	gtk_text_iter_equal
	cmpl	$0, %eax
	jne	.LBB25_41
# BB#40:                                # %if.then.68
	leaq	-104(%rbp), %rsi
	leaq	-192(%rbp), %rdx
	movl	$1, %ecx
	movq	-24(%rbp), %rdi
	callq	gtk_text_buffer_delete_interactive
	movl	%eax, -264(%rbp)        # 4-byte Spill
.LBB25_41:                              # %if.end.70
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_text_tool_delete_from_cursor, .Lfunc_end25-gimp_text_tool_delete_from_cursor
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI25_0:
	.quad	.LBB25_5
	.quad	.LBB25_9
	.quad	.LBB25_20
	.quad	.LBB25_26
	.quad	.LBB25_27
	.quad	.LBB25_28
	.quad	.LBB25_37
	.quad	.LBB25_38

	.text
	.align	16, 0x90
	.type	gimp_text_tool_backspace,@function
gimp_text_tool_backspace:               # @gimp_text_tool_backspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	272(%rdi), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_text_tool_reset_im_context
	movq	-16(%rbp), %rdi
	callq	gtk_text_buffer_get_has_selection
	cmpl	$0, %eax
	je	.LBB26_2
# BB#1:                                 # %if.then
	movl	$1, %eax
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	gtk_text_buffer_delete_selection
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB26_3
.LBB26_2:                               # %if.else
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_text_buffer_get_insert
	leaq	-96(%rbp), %rsi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_text_buffer_get_iter_at_mark
	leaq	-96(%rbp), %rsi
	movl	$1, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	callq	gtk_text_buffer_backspace
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB26_3:                               # %if.end
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_text_tool_backspace, .Lfunc_end26-gimp_text_tool_backspace
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_toggle_overwrite,@function
gimp_text_tool_toggle_overwrite:        # @gimp_text_tool_toggle_overwrite
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movq	-8(%rbp), %rax
	cmpl	$0, 500(%rax)
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 500(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_text_tool_toggle_overwrite, .Lfunc_end27-gimp_text_tool_toggle_overwrite
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_select_all,@function
gimp_text_tool_select_all:              # @gimp_text_tool_select_all
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	subq	$304, %rsp              # imm = 0x130
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	272(%rdi), %rdi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	cmpl	$0, -12(%rbp)
	je	.LBB28_2
# BB#1:                                 # %if.then
	leaq	-104(%rbp), %rsi
	leaq	-184(%rbp), %rdx
	movq	-24(%rbp), %rdi
	callq	gtk_text_buffer_get_bounds
	leaq	-104(%rbp), %rsi
	leaq	-184(%rbp), %rdx
	movq	-24(%rbp), %rdi
	callq	gtk_text_buffer_select_range
	jmp	.LBB28_3
.LBB28_2:                               # %if.else
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_text_buffer_get_insert
	leaq	-264(%rbp), %rsi
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_text_buffer_get_iter_at_mark
	movabsq	$.L.str.31, %rsi
	leaq	-264(%rbp), %rdx
	movq	-24(%rbp), %rdi
	callq	gtk_text_buffer_move_mark_by_name
.LBB28_3:                               # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_text_tool_select_all, .Lfunc_end28-gimp_text_tool_select_all
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI29_0:
	.quad	4652218415073722368     # double 1024
	.text
	.align	16, 0x90
	.type	gimp_text_tool_change_size,@function
gimp_text_tool_change_size:             # @gimp_text_tool_change_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	272(%rdi), %rdi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-104(%rbp), %rsi
	leaq	-184(%rbp), %rdx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_text_buffer_get_selection_bounds
	cmpl	$0, %eax
	jne	.LBB29_2
# BB#1:                                 # %if.then
	jmp	.LBB29_3
.LBB29_2:                               # %if.end
	leaq	-104(%rbp), %rdi
	leaq	-184(%rbp), %rsi
	callq	gtk_text_iter_order
	leaq	-104(%rbp), %rsi
	leaq	-184(%rbp), %rdx
	movsd	.LCPI29_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movq	272(%rdi), %rdi
	mulsd	-16(%rbp), %xmm0
	cvttsd2si	%xmm0, %ecx
	callq	gimp_text_buffer_change_size
.LBB29_3:                               # %return
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_text_tool_change_size, .Lfunc_end29-gimp_text_tool_change_size
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI30_0:
	.quad	4652218415073722368     # double 1024
	.text
	.align	16, 0x90
	.type	gimp_text_tool_change_baseline,@function
gimp_text_tool_change_baseline:         # @gimp_text_tool_change_baseline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	272(%rdi), %rdi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-104(%rbp), %rsi
	leaq	-184(%rbp), %rdx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_text_buffer_get_selection_bounds
	cmpl	$0, %eax
	jne	.LBB30_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_text_buffer_get_insert
	leaq	-104(%rbp), %rsi
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_text_buffer_get_iter_at_mark
	leaq	-184(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gtk_text_buffer_get_end_iter
.LBB30_2:                               # %if.end
	leaq	-104(%rbp), %rdi
	leaq	-184(%rbp), %rsi
	callq	gtk_text_iter_order
	leaq	-104(%rbp), %rsi
	leaq	-184(%rbp), %rdx
	movsd	.LCPI30_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movq	272(%rdi), %rdi
	mulsd	-16(%rbp), %xmm0
	cvttsd2si	%xmm0, %ecx
	callq	gimp_text_buffer_change_baseline
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_text_tool_change_baseline, .Lfunc_end30-gimp_text_tool_change_baseline
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI31_0:
	.quad	4652218415073722368     # double 1024
	.text
	.align	16, 0x90
	.type	gimp_text_tool_change_kerning,@function
gimp_text_tool_change_kerning:          # @gimp_text_tool_change_kerning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp95:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	272(%rdi), %rdi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-104(%rbp), %rsi
	leaq	-184(%rbp), %rdx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_text_buffer_get_selection_bounds
	cmpl	$0, %eax
	jne	.LBB31_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_text_buffer_get_insert
	leaq	-104(%rbp), %rsi
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_text_buffer_get_iter_at_mark
	leaq	-184(%rbp), %rax
	movl	$80, %ecx
	movl	%ecx, %edx
	leaq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-208(%rbp), %rdi        # 8-byte Reload
	callq	gtk_text_iter_forward_char
	movl	%eax, -212(%rbp)        # 4-byte Spill
.LBB31_2:                               # %if.end
	leaq	-104(%rbp), %rdi
	leaq	-184(%rbp), %rsi
	callq	gtk_text_iter_order
	leaq	-104(%rbp), %rsi
	leaq	-184(%rbp), %rdx
	movsd	.LCPI31_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movq	272(%rdi), %rdi
	mulsd	-16(%rbp), %xmm0
	cvttsd2si	%xmm0, %ecx
	callq	gimp_text_buffer_change_kerning
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_text_tool_change_kerning, .Lfunc_end31-gimp_text_tool_change_kerning
	.cfi_endproc

	.align	16, 0x90
	.type	find_whitepace_region,@function
find_whitepace_region:                  # @find_whitepace_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movabsq	$is_not_whitespace, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$80, %ecx
	movl	%ecx, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%r9, %rdx
	movq	%r8, -32(%rbp)          # 8-byte Spill
	movq	%r9, -40(%rbp)          # 8-byte Spill
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	memcpy
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	-40(%rbp), %rdx         # 8-byte Reload
	callq	memcpy
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-32(%rbp), %rdx         # 8-byte Reload
	movq	-32(%rbp), %rcx         # 8-byte Reload
	callq	gtk_text_iter_backward_find_char
	cmpl	$0, %eax
	je	.LBB32_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gtk_text_iter_forward_char
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB32_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gtk_text_iter_get_char
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	%eax, %edi
	callq	is_whitespace
	cmpl	$0, %eax
	je	.LBB32_4
# BB#3:                                 # %if.then.5
	movabsq	$is_not_whitespace, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	movq	%rcx, %rdx
	callq	gtk_text_iter_forward_find_char
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB32_4:                               # %if.end.7
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_text_iter_equal
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	find_whitepace_region, .Lfunc_end32-find_whitepace_region
	.cfi_endproc

	.align	16, 0x90
	.type	is_not_whitespace,@function
is_not_whitespace:                      # @is_not_whitespace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp101:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	is_whitespace
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	is_not_whitespace, .Lfunc_end33-is_not_whitespace
	.cfi_endproc

	.align	16, 0x90
	.type	is_whitespace,@function
is_whitespace:                          # @is_whitespace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp104:
	.cfi_def_cfa_register %rbp
	movb	$1, %al
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$32, -4(%rbp)
	movb	%al, -17(%rbp)          # 1-byte Spill
	je	.LBB34_2
# BB#1:                                 # %lor.rhs
	cmpl	$9, -4(%rbp)
	sete	%al
	movb	%al, -17(%rbp)          # 1-byte Spill
.LBB34_2:                               # %lor.end
	movb	-17(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end34:
	.size	is_whitespace, .Lfunc_end34-is_whitespace
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"commit"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"preedit-start"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"preedit-end"
	.size	.L.str.2, 12

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"preedit-changed"
	.size	.L.str.3, 16

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"notify::use-editor"
	.size	.L.str.4, 19

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"x1"
	.size	.L.str.5, 3

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"y1"
	.size	.L.str.6, 3

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"resolution-x"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"resolution-y"
	.size	.L.str.8, 13

	.type	.L__func__.gimp_text_tool_editor_key_press,@object # @__func__.gimp_text_tool_editor_key_press
.L__func__.gimp_text_tool_editor_key_press:
	.asciz	"gimp_text_tool_editor_key_press"
	.size	.L__func__.gimp_text_tool_editor_key_press, 32

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"binding handled event"
	.size	.L.str.9, 22

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"\n"
	.size	.L.str.10, 2

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"\t"
	.size	.L.str.11, 2

	.type	.L__func__.gimp_text_tool_editor_key_release,@object # @__func__.gimp_text_tool_editor_key_release
.L__func__.gimp_text_tool_editor_key_release:
	.asciz	"gimp_text_tool_editor_key_release"
	.size	.L__func__.gimp_text_tool_editor_key_release, 34

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Gimp-Tools"
	.size	.L.str.12, 11

	.type	.L__func__.gimp_text_tool_editor_get_cursor_rect,@object # @__func__.gimp_text_tool_editor_get_cursor_rect
.L__func__.gimp_text_tool_editor_get_cursor_rect:
	.asciz	"gimp_text_tool_editor_get_cursor_rect"
	.size	.L__func__.gimp_text_tool_editor_get_cursor_rect, 38

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"GIMP_IS_TEXT_TOOL (text_tool)"
	.size	.L.str.13, 30

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"cursor_rect != NULL"
	.size	.L.str.14, 20

	.type	.L__func__.gimp_text_tool_editor_update_im_rect,@object # @__func__.gimp_text_tool_editor_update_im_rect
.L__func__.gimp_text_tool_editor_update_im_rect:
	.asciz	"gimp_text_tool_editor_update_im_rect"
	.size	.L__func__.gimp_text_tool_editor_update_im_rect, 37

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"move-cursor"
	.size	.L.str.15, 12

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"insert-at-cursor"
	.size	.L.str.16, 17

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"delete-from-cursor"
	.size	.L.str.17, 19

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"backspace"
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"cut-clipboard"
	.size	.L.str.19, 14

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"copy-clipboard"
	.size	.L.str.20, 15

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"paste-clipboard"
	.size	.L.str.21, 16

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"toggle-overwrite"
	.size	.L.str.22, 17

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"select-all"
	.size	.L.str.23, 11

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"change-size"
	.size	.L.str.24, 12

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"change-baseline"
	.size	.L.str.25, 16

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"change-kerning"
	.size	.L.str.26, 15

	.type	.L__func__.gimp_text_tool_move_cursor,@object # @__func__.gimp_text_tool_move_cursor
.L__func__.gimp_text_tool_move_cursor:
	.asciz	"gimp_text_tool_move_cursor"
	.size	.L__func__.gimp_text_tool_move_cursor, 27

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"%s count = %d, select = %s"
	.size	.L.str.27, 27

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"TRUE"
	.size	.L.str.28, 5

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"FALSE"
	.size	.L.str.29, 6

	.type	.L__func__.gimp_text_tool_delete_from_cursor,@object # @__func__.gimp_text_tool_delete_from_cursor
.L__func__.gimp_text_tool_delete_from_cursor:
	.asciz	"gimp_text_tool_delete_from_cursor"
	.size	.L__func__.gimp_text_tool_delete_from_cursor, 34

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"%s count = %d"
	.size	.L.str.30, 14

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"selection_bound"
	.size	.L.str.31, 16

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"use-editor"
	.size	.L.str.32, 11

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"GIMP Text Editor"
	.size	.L.str.33, 17

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"gimp-text-tool-dialog"
	.size	.L.str.34, 22

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"destroy"
	.size	.L.str.35, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
