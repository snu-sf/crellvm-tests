	.text
	.file	"gimpview-popup.bc"
	.globl	gimp_view_popup_show
	.align	16, 0x90
	.type	gimp_view_popup_show,@function
gimp_view_popup_show:                   # @gimp_view_popup_show
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
	subq	$208, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
	movl	%eax, -52(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_view_popup_show, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_45
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB0_15
# BB#14:                                # %if.then.13
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_view_popup_show, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_45
.LBB0_16:                               # %if.end.15
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.16
	jmp	.LBB0_18
.LBB0_18:                               # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB0_27
# BB#19:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB0_21
# BB#20:                                # %if.then.27
	movl	$0, -116(%rbp)
	jmp	.LBB0_26
.LBB0_21:                               # %if.else.28
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_24
# BB#22:                                # %land.lhs.true.31
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB0_24
# BB#23:                                # %if.then.35
	movl	$1, -116(%rbp)
	jmp	.LBB0_25
.LBB0_24:                               # %if.else.36
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB0_25:                               # %if.end.38
	jmp	.LBB0_26
.LBB0_26:                               # %if.end.39
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB0_28
.LBB0_27:                               # %if.then.42
	jmp	.LBB0_29
.LBB0_28:                               # %if.else.43
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_view_popup_show, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_45
.LBB0_29:                               # %if.end.44
	jmp	.LBB0_30
.LBB0_30:                               # %do.end.45
	jmp	.LBB0_31
.LBB0_31:                               # %do.body.46
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB0_33
# BB#32:                                # %if.then.55
	movl	$0, -140(%rbp)
	jmp	.LBB0_38
.LBB0_33:                               # %if.else.56
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_36
# BB#34:                                # %land.lhs.true.59
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB0_36
# BB#35:                                # %if.then.63
	movl	$1, -140(%rbp)
	jmp	.LBB0_37
.LBB0_36:                               # %if.else.64
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB0_37:                               # %if.end.66
	jmp	.LBB0_38
.LBB0_38:                               # %if.end.67
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB0_40
# BB#39:                                # %if.then.70
	jmp	.LBB0_41
.LBB0_40:                               # %if.else.71
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_view_popup_show, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_45
.LBB0_41:                               # %if.end.72
	jmp	.LBB0_42
.LBB0_42:                               # %do.end.73
	leaq	-68(%rbp), %r8
	leaq	-72(%rbp), %r9
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	movl	-48(%rbp), %edx
	movl	-52(%rbp), %ecx
	callq	gimp_viewable_get_popup_size
	cmpl	$0, %eax
	jne	.LBB0_44
# BB#43:                                # %if.then.76
	movl	$0, -4(%rbp)
	jmp	.LBB0_45
.LBB0_44:                               # %if.end.77
	movl	$64, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movabsq	$.L.str.5, %rsi
	movabsq	$gimp_view_popup_button_release, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movl	-68(%rbp), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, 24(%rax)
	movl	-72(%rbp), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, 28(%rax)
	movl	-52(%rbp), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, 32(%rax)
	movq	-24(%rbp), %rax
	movl	52(%rax), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, 36(%rax)
	movq	-24(%rbp), %rax
	cvttsd2si	64(%rax), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, 40(%rax)
	movq	-24(%rbp), %rax
	cvttsd2si	72(%rax), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, 44(%rax)
	movq	-16(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-160(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.6, %rsi
	movabsq	$gimp_view_popup_unmap, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.7, %rsi
	movabsq	$gimp_view_popup_drag_begin, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movl	$150, %edi
	movabsq	$gimp_view_popup_timeout, %rcx
	movq	-64(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	g_timeout_add
	movl	$80, %edi
	movl	%edi, %esi
	movq	-64(%rbp), %rcx
	movl	%eax, 48(%rcx)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rsi
	movabsq	$gimp_view_popup_hide, %rcx
	movq	-64(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data_full
	movq	-16(%rbp), %rdi
	callq	gtk_grab_add
	movl	$1, -4(%rbp)
.LBB0_45:                               # %return
	movl	-4(%rbp), %eax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_view_popup_show, .Lfunc_end0-gimp_view_popup_show
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_popup_button_release,@function
gimp_view_popup_button_release:         # @gimp_view_popup_button_release
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
	movq	-16(%rbp), %rdx
	movl	52(%rdx), %eax
	movq	-24(%rbp), %rdx
	cmpl	36(%rdx), %eax
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rsi
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	callq	g_object_set_data
.LBB1_2:                                # %if.end
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_view_popup_button_release, .Lfunc_end1-gimp_view_popup_button_release
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_popup_unmap,@function
gimp_view_popup_unmap:                  # @gimp_view_popup_unmap
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
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rsi
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	callq	g_object_set_data
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_view_popup_unmap, .Lfunc_end2-gimp_view_popup_unmap
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_popup_drag_begin,@function
gimp_view_popup_drag_begin:             # @gimp_view_popup_drag_begin
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
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_view_popup_drag_begin, .Lfunc_end3-gimp_view_popup_drag_begin
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_popup_timeout,@function
gimp_view_popup_timeout:                # @gimp_view_popup_timeout
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$0, 48(%rdi)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	gtk_widget_get_screen
	movl	$1, %edi
	movq	%rax, -40(%rbp)
	callq	gtk_window_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_resizable
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_window_set_screen
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_toplevel
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_window_set_transient_for
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_frame_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-8(%rbp), %rax
	movl	24(%rax), %edx
	movq	-8(%rbp), %rax
	movl	28(%rax), %ecx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_view_new_full
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	112(%rax), %rdi
	movq	-8(%rbp), %rax
	movl	32(%rax), %esi
	callq	gimp_view_renderer_set_dot_for_dot
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movl	$2, %ecx
	movq	-8(%rbp), %rax
	movl	40(%rax), %edx
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	movl	%edx, -148(%rbp)        # 4-byte Spill
	cltd
	idivl	%ecx
	movl	-148(%rbp), %r8d        # 4-byte Reload
	subl	%eax, %r8d
	movl	%r8d, -64(%rbp)
	movq	-8(%rbp), %rsi
	movl	44(%rsi), %eax
	movq	-8(%rbp), %rsi
	movl	28(%rsi), %r8d
	movl	%eax, -152(%rbp)        # 4-byte Spill
	movl	%r8d, %eax
	cltd
	idivl	%ecx
	movl	-152(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movl	%ecx, -68(%rbp)
	movq	-40(%rbp), %rdi
	movl	-64(%rbp), %esi
	movl	-68(%rbp), %eax
	movl	%eax, %edx
	callq	gdk_screen_get_monitor_at_point
	leaq	-56(%rbp), %rdx
	movl	%eax, -60(%rbp)
	movq	-40(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	gdk_screen_get_monitor_geometry
	movl	-64(%rbp), %eax
	movl	-56(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movq	-8(%rbp), %rdx
	subl	24(%rdx), %ecx
	cmpl	%ecx, %eax
	jle	.LBB4_2
# BB#1:                                 # %cond.true
	movl	-56(%rbp), %eax
	addl	-48(%rbp), %eax
	movq	-8(%rbp), %rcx
	subl	24(%rcx), %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jmp	.LBB4_6
.LBB4_2:                                # %cond.false
	movl	-64(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB4_4
# BB#3:                                 # %cond.true.37
	movl	-56(%rbp), %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
	jmp	.LBB4_5
.LBB4_4:                                # %cond.false.39
	movl	-64(%rbp), %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
.LBB4_5:                                # %cond.end
	movl	-160(%rbp), %eax        # 4-byte Reload
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB4_6:                                # %cond.end.40
	movl	-156(%rbp), %eax        # 4-byte Reload
	movl	%eax, -64(%rbp)
	movl	-68(%rbp), %eax
	movl	-52(%rbp), %ecx
	addl	-44(%rbp), %ecx
	movq	-8(%rbp), %rdx
	subl	28(%rdx), %ecx
	cmpl	%ecx, %eax
	jle	.LBB4_8
# BB#7:                                 # %cond.true.47
	movl	-52(%rbp), %eax
	addl	-44(%rbp), %eax
	movq	-8(%rbp), %rcx
	subl	28(%rcx), %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB4_12
.LBB4_8:                                # %cond.false.53
	movl	-68(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB4_10
# BB#9:                                 # %cond.true.56
	movl	-52(%rbp), %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	jmp	.LBB4_11
.LBB4_10:                               # %cond.false.58
	movl	-68(%rbp), %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
.LBB4_11:                               # %cond.end.59
	movl	-168(%rbp), %eax        # 4-byte Reload
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB4_12:                               # %cond.end.61
	movl	-164(%rbp), %eax        # 4-byte Reload
	movl	%eax, -68(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-64(%rbp), %esi
	movl	-68(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_window_move
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movq	%rcx, 56(%rdi)
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_view_popup_timeout, .Lfunc_end4-gimp_view_popup_timeout
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_popup_hide,@function
gimp_view_popup_hide:                   # @gimp_view_popup_hide
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 48(%rdi)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	48(%rax), %edi
	callq	g_source_remove
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB5_2:                                # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB5_4
# BB#3:                                 # %if.then.4
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gtk_widget_destroy
.LBB5_4:                                # %if.end.6
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_view_popup_button_release, %rdx
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-24(%rbp), %r10         # 8-byte Reload
	movq	%r9, -32(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-32(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_view_popup_unmap, %rdi
	movq	-8(%rbp), %r9
	movq	(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_view_popup_drag_begin, %rdi
	movq	-8(%rbp), %r9
	movq	(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	gtk_grab_remove
# BB#5:                                 # %do.body
	movl	$64, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#6:                                 # %do.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_view_popup_hide, .Lfunc_end5-gimp_view_popup_hide
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Widgets"
	.size	.L.str, 13

	.type	.L__func__.gimp_view_popup_show,@object # @__func__.gimp_view_popup_show
.L__func__.gimp_view_popup_show:
	.asciz	"gimp_view_popup_show"
	.size	.L__func__.gimp_view_popup_show, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GTK_IS_WIDGET (widget)"
	.size	.L.str.1, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"bevent != NULL"
	.size	.L.str.2, 15

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"context == NULL || GIMP_IS_CONTEXT (context)"
	.size	.L.str.3, 45

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_VIEWABLE (viewable)"
	.size	.L.str.4, 28

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"button-release-event"
	.size	.L.str.5, 21

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"unmap"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"drag-begin"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-view-popup"
	.size	.L.str.8, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
