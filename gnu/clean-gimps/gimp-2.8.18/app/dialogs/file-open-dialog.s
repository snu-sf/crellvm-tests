	.text
	.file	"file-open-dialog.bc"
	.globl	file_open_dialog_new
	.align	16, 0x90
	.type	file_open_dialog_new,@function
file_open_dialog_new:                   # @file_open_dialog_new
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_open_dialog_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_15
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movabsq	$.L.str.2, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movabsq	$.L.str.3, %rdi
	movabsq	$.L.str.4, %r8
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	-72(%rbp), %r9          # 8-byte Reload
	callq	gimp_file_dialog_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_select_multiple
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB0_14
# BB#13:                                # %if.then.18
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_file_dialog_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_file_dialog_set_state
.LBB0_14:                               # %if.end.21
	movabsq	$.L.str.6, %rsi
	movabsq	$file_open_dialog_response, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-24(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB0_15:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	file_open_dialog_new, .Lfunc_end0-file_open_dialog_new
	.cfi_endproc

	.align	16, 0x90
	.type	file_open_dialog_response,@function
file_open_dialog_response:              # @file_open_dialog_response
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gimp_file_dialog_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -32(%rbp)
	movl	$0, -52(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_file_dialog_get_state
	movabsq	$.L.str.5, %rsi
	movabsq	$gimp_file_dialog_state_destroy, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	callq	g_object_set_data_full
	cmpl	$-5, -12(%rbp)
	je	.LBB1_4
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	cmpl	$0, 344(%rax)
	jne	.LBB1_3
# BB#2:                                 # %if.then.4
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
.LBB1_3:                                # %if.end
	jmp	.LBB1_36
.LBB1_4:                                # %if.end.5
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_file_chooser_get_uris
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB1_6
# BB#5:                                 # %if.then.10
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_strdup
	movabsq	$.L.str.7, %rsi
	movabsq	$g_free, %rcx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data_full
.LBB1_6:                                # %if.end.13
	xorl	%esi, %esi
	movq	-32(%rbp), %rdi
	callq	gimp_file_dialog_set_sensitive
	movq	-32(%rbp), %rdi
	cmpl	$0, 288(%rdi)
	jne	.LBB1_8
# BB#7:                                 # %if.then.15
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_transient_for
.LBB1_8:                                # %if.end.18
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB1_9:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB1_29
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	-32(%rbp), %rax
	cmpl	$0, 288(%rax)
	je	.LBB1_19
# BB#11:                                # %if.then.22
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, 280(%rax)
	jne	.LBB1_15
# BB#12:                                # %if.then.24
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	272(%rax), %r8
	callq	file_open_dialog_open_image
	movq	-32(%rbp), %rcx
	movq	%rax, 280(%rcx)
	movq	-32(%rbp), %rax
	cmpq	$0, 280(%rax)
	je	.LBB1_14
# BB#13:                                # %if.then.31
                                        #   in Loop: Header=BB1_9 Depth=1
	movl	$1, -52(%rbp)
.LBB1_14:                               # %if.end.32
                                        #   in Loop: Header=BB1_9 Depth=1
	jmp	.LBB1_18
.LBB1_15:                               # %if.else
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	280(%rax), %rsi
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	272(%rax), %r8
	callq	file_open_dialog_open_layers
	cmpl	$0, %eax
	je	.LBB1_17
# BB#16:                                # %if.then.39
                                        #   in Loop: Header=BB1_9 Depth=1
	movl	$1, -52(%rbp)
.LBB1_17:                               # %if.end.40
                                        #   in Loop: Header=BB1_9 Depth=1
	jmp	.LBB1_18
.LBB1_18:                               # %if.end.41
                                        #   in Loop: Header=BB1_9 Depth=1
	jmp	.LBB1_22
.LBB1_19:                               # %if.else.42
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	272(%rax), %r8
	callq	file_open_dialog_open_image
	cmpq	$0, %rax
	je	.LBB1_21
# BB#20:                                # %if.then.48
                                        #   in Loop: Header=BB1_9 Depth=1
	movl	$1, -52(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_window_raise
.LBB1_21:                               # %if.end.50
                                        #   in Loop: Header=BB1_9 Depth=1
	jmp	.LBB1_22
.LBB1_22:                               # %if.end.51
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	-32(%rbp), %rax
	cmpl	$0, 348(%rax)
	je	.LBB1_24
# BB#23:                                # %if.then.53
	jmp	.LBB1_29
.LBB1_24:                               # %if.end.54
                                        #   in Loop: Header=BB1_9 Depth=1
	jmp	.LBB1_25
.LBB1_25:                               # %for.inc
                                        #   in Loop: Header=BB1_9 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB1_27
# BB#26:                                # %cond.true
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB1_28
.LBB1_27:                               # %cond.false
                                        #   in Loop: Header=BB1_9 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB1_28
.LBB1_28:                               # %cond.end
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB1_9
.LBB1_29:                               # %for.end
	cmpl	$0, -52(%rbp)
	je	.LBB1_34
# BB#30:                                # %if.then.57
	movq	-32(%rbp), %rax
	cmpl	$0, 288(%rax)
	je	.LBB1_33
# BB#31:                                # %land.lhs.true
	movq	-32(%rbp), %rax
	cmpq	$0, 280(%rax)
	je	.LBB1_33
# BB#32:                                # %if.then.62
	movq	-32(%rbp), %rax
	movq	280(%rax), %rdi
	callq	gimp_image_flush
.LBB1_33:                               # %if.end.64
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
	jmp	.LBB1_35
.LBB1_34:                               # %if.else.65
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	callq	gimp_file_dialog_set_sensitive
.LBB1_35:                               # %if.end.66
	movabsq	$g_free, %rsi
	movq	-40(%rbp), %rdi
	callq	g_slist_free_full
.LBB1_36:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	file_open_dialog_response, .Lfunc_end1-file_open_dialog_response
	.cfi_endproc

	.align	16, 0x90
	.type	file_open_dialog_open_image,@function
file_open_dialog_open_image:            # @file_open_dialog_open_image
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
	pushq	%r14
	pushq	%rbx
	subq	$176, %rsp
.Ltmp9:
	.cfi_offset %rbx, -32
.Ltmp10:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	$0, -80(%rbp)
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	gimp_get_user_context
	movq	-24(%rbp), %rcx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	leaq	-68(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %r8
	movq	-56(%rbp), %rdi
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-120(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	-144(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 8(%rsp)
	movq	-136(%rbp), %r14        # 8-byte Reload
	movq	%r14, 16(%rsp)
	callq	file_open_with_proc_and_display
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB2_3
# BB#1:                                 # %land.lhs.true
	cmpl	$4, -68(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then
	movq	-40(%rbp), %rdi
	callq	file_utils_uri_display_name
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -88(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$2, %edx
	movq	-88(%rbp), %r8
	movq	-80(%rbp), %rsi
	movq	8(%rsi), %r9
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	-160(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gimp_message
	leaq	-80(%rbp), %rdi
	callq	g_clear_error
	movq	-88(%rbp), %rdi
	callq	g_free
.LBB2_3:                                # %if.end
	movq	-64(%rbp), %rax
	addq	$176, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	file_open_dialog_open_image, .Lfunc_end2-file_open_dialog_open_image
	.cfi_endproc

	.align	16, 0x90
	.type	file_open_dialog_open_layers,@function
file_open_dialog_open_layers:           # @file_open_dialog_open_layers
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
	pushq	%r14
	pushq	%rbx
	subq	$224, %rsp
.Ltmp14:
	.cfi_offset %rbx, -32
.Ltmp15:
	.cfi_offset %r14, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	$0, -88(%rbp)
	movq	-40(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-40(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	gimp_get_user_context
	movq	-32(%rbp), %rcx
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	leaq	-76(%rbp), %rcx
	leaq	-88(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %r9
	movq	-64(%rbp), %rdi
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	-112(%rbp), %r11        # 8-byte Reload
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movl	$0, (%rsp)
	movq	-128(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 8(%rsp)
	movq	-152(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 16(%rsp)
	movq	-144(%rbp), %r14        # 8-byte Reload
	movq	%r14, 24(%rsp)
	callq	file_open_layers
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	callq	gimp_image_get_width
	movq	-40(%rbp), %rdi
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	movabsq	$.L.str.9, %rdi
	movl	%eax, -176(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$1, %ecx
	movl	%ecx, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	xorl	%r8d, %r8d
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	-168(%rbp), %rsi        # 8-byte Reload
	movl	%r8d, -180(%rbp)        # 4-byte Spill
	movl	-180(%rbp), %r9d        # 4-byte Reload
	movl	-172(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	movl	-176(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, 8(%rsp)
	movq	%rax, 16(%rsp)
	callq	gimp_image_add_layers
	movq	-72(%rbp), %rdi
	callq	g_list_free
	movl	$1, -20(%rbp)
	jmp	.LBB3_6
.LBB3_2:                                # %if.else
	cmpl	$4, -76(%rbp)
	je	.LBB3_4
# BB#3:                                 # %if.then.8
	movq	-48(%rbp), %rdi
	callq	file_utils_uri_display_name
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -96(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$2, %edx
	movq	-96(%rbp), %r8
	movq	-88(%rbp), %rsi
	movq	8(%rsi), %r9
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	-200(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gimp_message
	leaq	-88(%rbp), %rdi
	callq	g_clear_error
	movq	-96(%rbp), %rdi
	callq	g_free
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %if.end.13
	movl	$0, -20(%rbp)
.LBB3_6:                                # %return
	movl	-20(%rbp), %eax
	addq	$224, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	file_open_dialog_open_layers, .Lfunc_end3-file_open_dialog_open_layers
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Dialogs"
	.size	.L.str, 13

	.type	.L__func__.file_open_dialog_new,@object # @__func__.file_open_dialog_new
.L__func__.file_open_dialog_new:
	.asciz	"file_open_dialog_new"
	.size	.L__func__.file_open_dialog_new, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Open Image"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-file-open"
	.size	.L.str.3, 15

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gtk-open"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-file-open-dialog-state"
	.size	.L.str.5, 28

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"response"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-file-open-last-uri"
	.size	.L.str.7, 24

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Opening '%s' failed:\n\n%s"
	.size	.L.str.8, 25

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Open layers"
	.size	.L.str.9, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
