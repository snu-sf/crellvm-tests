	.text
	.file	"file-save-dialog.bc"
	.globl	file_save_dialog_new
	.align	16, 0x90
	.type	file_save_dialog_new,@function
file_save_dialog_new:                   # @file_save_dialog_new
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$1, %esi
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.2, %r8
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	-80(%rbp), %r9          # 8-byte Reload
	callq	gimp_file_dialog_new
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -40(%rbp)
	jmp	.LBB0_3
.LBB0_2:                                # %if.else
	movabsq	$.L.str.4, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.6, %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$2, %esi
	movabsq	$.L.str.5, %rdi
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movq	-104(%rbp), %r9         # 8-byte Reload
	callq	gimp_file_dialog_new
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -40(%rbp)
.LBB0_3:                                # %if.end
	jmp	.LBB0_4
.LBB0_4:                                # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB0_6
# BB#5:                                 # %if.then.11
	movl	$0, -60(%rbp)
	jmp	.LBB0_11
.LBB0_6:                                # %if.else.12
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_9
# BB#7:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB0_9
# BB#8:                                 # %if.then.15
	movl	$1, -60(%rbp)
	jmp	.LBB0_10
.LBB0_9:                                # %if.else.16
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB0_10:                               # %if.end.18
	jmp	.LBB0_11
.LBB0_11:                               # %if.end.19
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB0_13
# BB#12:                                # %if.then.21
	jmp	.LBB0_14
.LBB0_13:                               # %if.else.22
	movabsq	$.L.str.8, %rdi
	movabsq	$.L__func__.file_save_dialog_new, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_18
.LBB0_14:                               # %if.end.23
	jmp	.LBB0_15
.LBB0_15:                               # %do.end
	cmpq	$0, -40(%rbp)
	je	.LBB0_17
# BB#16:                                # %if.then.25
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_file_dialog_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_file_dialog_set_state
.LBB0_17:                               # %if.end.28
	movabsq	$.L.str.10, %rsi
	movabsq	$file_save_dialog_confirm_overwrite, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-120(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.11, %rsi
	movabsq	$file_save_dialog_response, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-32(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB0_18:                               # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	file_save_dialog_new, .Lfunc_end0-file_save_dialog_new
	.cfi_endproc

	.align	16, 0x90
	.type	file_save_dialog_confirm_overwrite,@function
file_save_dialog_confirm_overwrite:     # @file_save_dialog_confirm_overwrite
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_file_dialog_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	file_save_dialog_no_overwrite_confirmation
	cmpl	$0, %eax
	je	.LBB1_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB1_3
.LBB1_2:                                # %if.else
	movl	$0, -4(%rbp)
.LBB1_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	file_save_dialog_confirm_overwrite, .Lfunc_end1-file_save_dialog_confirm_overwrite
	.cfi_endproc

	.align	16, 0x90
	.type	file_save_dialog_response,@function
file_save_dialog_response:              # @file_save_dialog_response
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	callq	gimp_file_dialog_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 296(%rax)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_file_dialog_get_state
	movabsq	$.L.str.3, %rsi
	movabsq	$gimp_file_dialog_state_destroy, %rcx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data_full
	jmp	.LBB2_3
.LBB2_2:                                # %if.else
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_file_dialog_get_state
	movabsq	$.L.str.7, %rsi
	movabsq	$gimp_file_dialog_state_destroy, %rcx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data_full
.LBB2_3:                                # %if.end
	cmpl	$-5, -12(%rbp)
	je	.LBB2_7
# BB#4:                                 # %if.then.6
	movq	-32(%rbp), %rax
	cmpl	$0, 344(%rax)
	jne	.LBB2_6
# BB#5:                                 # %if.then.8
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
.LBB2_6:                                # %if.end.9
	jmp	.LBB2_27
.LBB2_7:                                # %if.end.10
	movq	-32(%rbp), %rdi
	callq	g_object_ref
	movq	-32(%rbp), %rdi
	movq	280(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_object_ref
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-56(%rbp), %r8
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	file_save_dialog_check_uri
	movl	%eax, %r9d
	testl	%eax, %eax
	movl	%r9d, -108(%rbp)        # 4-byte Spill
	je	.LBB2_8
	jmp	.LBB2_28
.LBB2_28:                               # %if.end.10
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB2_9
	jmp	.LBB2_29
.LBB2_29:                               # %if.end.10
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB2_25
	jmp	.LBB2_26
.LBB2_8:                                # %sw.bb
	jmp	.LBB2_26
.LBB2_9:                                # %sw.bb.14
	xorl	%esi, %esi
	movq	-32(%rbp), %rdi
	callq	gimp_file_dialog_set_sensitive
	movq	-8(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	280(%rdi), %rdi
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %r8
	movq	-32(%rbp), %r9
	cmpl	$0, 292(%r9)
	movq	%r8, -136(%rbp)         # 8-byte Spill
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	movb	%dl, -169(%rbp)         # 1-byte Spill
	jne	.LBB2_11
# BB#10:                                # %land.rhs
	movq	-32(%rbp), %rax
	cmpl	$0, 296(%rax)
	setne	%cl
	xorb	$-1, %cl
	movb	%cl, -169(%rbp)         # 1-byte Spill
.LBB2_11:                               # %land.end
	movb	-169(%rbp), %al         # 1-byte Reload
	xorl	%r9d, %r9d
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-32(%rbp), %rdx
	movl	296(%rdx), %esi
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movl	%esi, -176(%rbp)        # 4-byte Spill
	movq	%rdx, %rsi
	movq	-160(%rbp), %rdx        # 8-byte Reload
	movq	-168(%rbp), %r8         # 8-byte Reload
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	movq	%r8, %rcx
	movq	-136(%rbp), %r8         # 8-byte Reload
	movl	-180(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	movl	$0, 8(%rsp)
	movl	-176(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	file_save_dialog_save_image
	cmpl	$0, %eax
	je	.LBB2_24
# BB#12:                                # %if.then.24
	movq	-32(%rbp), %rax
	cmpl	$0, 292(%rax)
	je	.LBB2_14
# BB#13:                                # %if.then.27
	movq	-32(%rbp), %rax
	movq	280(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_image_set_save_a_copy_uri
.LBB2_14:                               # %if.end.29
	movq	-32(%rbp), %rax
	cmpl	$0, 296(%rax)
	jne	.LBB2_16
# BB#15:                                # %if.then.32
	movl	$80, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	280(%rcx), %rcx
	movq	32(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	g_strdup
	movabsq	$.L.str.16, %rsi
	movabsq	$g_free, %rcx
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data_full
	jmp	.LBB2_17
.LBB2_16:                               # %if.else.37
	movl	$80, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	280(%rcx), %rcx
	movq	32(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	g_strdup
	movabsq	$.L.str.17, %rsi
	movabsq	$g_free, %rcx
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data_full
.LBB2_17:                               # %if.end.42
	movq	-32(%rbp), %rax
	movq	280(%rax), %rdi
	callq	gimp_image_flush
	movq	-32(%rbp), %rax
	cmpl	$0, 300(%rax)
	je	.LBB2_23
# BB#18:                                # %land.lhs.true
	movq	-32(%rbp), %rax
	cmpq	$0, 304(%rax)
	je	.LBB2_23
# BB#19:                                # %if.then.46
	movq	-32(%rbp), %rax
	movq	304(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_display_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB2_22
# BB#20:                                # %land.lhs.true.51
	movq	-64(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, %rdi
	callq	gimp_image_is_dirty
	cmpl	$0, %eax
	jne	.LBB2_22
# BB#21:                                # %if.then.55
	movq	-64(%rbp), %rdi
	callq	gimp_display_close
.LBB2_22:                               # %if.end.56
	jmp	.LBB2_23
.LBB2_23:                               # %if.end.57
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
.LBB2_24:                               # %if.end.58
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-48(%rbp), %rdi
	callq	g_free
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	callq	gimp_file_dialog_set_sensitive
	jmp	.LBB2_26
.LBB2_25:                               # %sw.bb.59
	movq	-32(%rbp), %rax
	movl	$1, 344(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967273, %esi       # imm = 0xFFFFFFE9
	movq	%rax, %rdi
	callq	gtk_dialog_response
	movq	-32(%rbp), %rax
	movl	$0, 344(%rax)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
.LBB2_26:                               # %sw.epilog
	movq	-32(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB2_27:                               # %return
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end2:
	.size	file_save_dialog_response, .Lfunc_end2-file_save_dialog_response
	.cfi_endproc

	.globl	file_save_dialog_save_image
	.align	16, 0x90
	.type	file_save_dialog_save_image,@function
file_save_dialog_save_image:            # @file_save_dialog_save_image
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
	pushq	%r14
	pushq	%rbx
	subq	$192, %rsp
.Ltmp12:
	.cfi_offset %rbx, -32
.Ltmp13:
	.cfi_offset %r14, -24
	movl	40(%rbp), %eax
	movl	32(%rbp), %r10d
	movl	24(%rbp), %r11d
	movl	16(%rbp), %ebx
	movabsq	$.L.str.12, %r14
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movl	%r9d, -60(%rbp)
	movl	%ebx, -64(%rbp)
	movl	%r11d, -68(%rbp)
	movl	%r10d, -72(%rbp)
	movl	%eax, -76(%rbp)
	movq	$0, -88(%rbp)
	movl	$0, -100(%rbp)
	movq	%r14, %rdi
	callq	gimp_action_groups_from_name
	movq	%rax, -96(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB3_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movabsq	$.L.str.13, %rsi
	xorl	%edx, %edx
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	gimp_action_group_set_action_sensitive
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB3_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB3_6
.LBB3_5:                                # %cond.false
                                        #   in Loop: Header=BB3_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB3_6
.LBB3_6:                                # %cond.end
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -96(%rbp)
	jmp	.LBB3_1
.LBB3_7:                                # %for.end
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %r8
	movl	-60(%rbp), %r9d
	movl	-64(%rbp), %eax
	movl	-68(%rbp), %r10d
	movl	-72(%rbp), %r11d
	movq	%rsp, %rbx
	leaq	-88(%rbp), %r14
	movq	%r14, 24(%rbx)
	movl	%r11d, 16(%rbx)
	movl	%r10d, 8(%rbx)
	movl	%eax, (%rbx)
	callq	file_save
	movl	%eax, -80(%rbp)
	movl	%eax, %r9d
	subl	$3, %eax
	movl	%r9d, -124(%rbp)        # 4-byte Spill
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB3_8
	jmp	.LBB3_21
.LBB3_21:                               # %for.end
	movl	-124(%rbp), %eax        # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	je	.LBB3_9
	jmp	.LBB3_12
.LBB3_8:                                # %sw.bb
	movl	$1, -100(%rbp)
	jmp	.LBB3_13
.LBB3_9:                                # %sw.bb.3
	cmpl	$0, -76(%rbp)
	je	.LBB3_11
# BB#10:                                # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.14, %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_message_literal
.LBB3_11:                               # %if.end
	jmp	.LBB3_13
.LBB3_12:                               # %sw.default
	movq	-48(%rbp), %rdi
	callq	file_utils_uri_display_name
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -112(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.15, %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$2, %edx
	movq	-112(%rbp), %r8
	movq	-88(%rbp), %rsi
	movq	8(%rsi), %r9
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	-168(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gimp_message
	leaq	-88(%rbp), %rdi
	callq	g_clear_error
	movq	-112(%rbp), %rdi
	callq	g_free
.LBB3_13:                               # %sw.epilog
	movabsq	$.L.str.12, %rdi
	callq	gimp_action_groups_from_name
	movq	%rax, -96(%rbp)
.LBB3_14:                               # %for.cond.11
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB3_20
# BB#15:                                # %for.body.13
                                        #   in Loop: Header=BB3_14 Depth=1
	movabsq	$.L.str.13, %rsi
	movl	$1, %edx
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	gimp_action_group_set_action_sensitive
# BB#16:                                # %for.inc.15
                                        #   in Loop: Header=BB3_14 Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB3_18
# BB#17:                                # %cond.true.17
                                        #   in Loop: Header=BB3_14 Depth=1
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB3_19
.LBB3_18:                               # %cond.false.19
                                        #   in Loop: Header=BB3_14 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB3_19
.LBB3_19:                               # %cond.end.20
                                        #   in Loop: Header=BB3_14 Depth=1
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -96(%rbp)
	jmp	.LBB3_14
.LBB3_20:                               # %for.end.22
	movl	-100(%rbp), %eax
	addq	$192, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	file_save_dialog_save_image, .Lfunc_end3-file_save_dialog_save_image
	.cfi_endproc

	.align	16, 0x90
	.type	file_save_dialog_no_overwrite_confirmation,@function
file_save_dialog_no_overwrite_confirmation: # @file_save_dialog_no_overwrite_confirmation
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	-16(%rbp), %rdi
	callq	file_save_dialog_get_uri
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB4_12
.LBB4_2:                                # %if.end
	movq	-40(%rbp), %rdi
	callq	file_utils_uri_display_basename
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	file_save_dialog_get_procs
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	file_procedure_find
	xorl	%ecx, %ecx
	movb	%cl, %r8b
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	movb	%r8b, -65(%rbp)         # 1-byte Spill
	jne	.LBB4_7
# BB#3:                                 # %land.lhs.true
	movl	$46, %esi
	movq	-48(%rbp), %rdi
	callq	strchr
	xorl	%esi, %esi
	movb	%sil, %cl
	cmpq	$0, %rax
	movb	%cl, -65(%rbp)          # 1-byte Spill
	jne	.LBB4_7
# BB#4:                                 # %land.rhs
	movb	$1, %al
	cmpq	$0, -64(%rbp)
	movb	%al, -66(%rbp)          # 1-byte Spill
	je	.LBB4_6
# BB#5:                                 # %lor.rhs
	movq	-64(%rbp), %rax
	cmpq	$0, 256(%rax)
	setne	%cl
	movb	%cl, -66(%rbp)          # 1-byte Spill
.LBB4_6:                                # %lor.end
	movb	-66(%rbp), %al          # 1-byte Reload
	movb	%al, -65(%rbp)          # 1-byte Spill
.LBB4_7:                                # %land.end
	movb	-65(%rbp), %al          # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -28(%rbp)
	cmpq	$0, -64(%rbp)
	movb	%dl, -67(%rbp)          # 1-byte Spill
	jne	.LBB4_9
# BB#8:                                 # %land.rhs.10
	cmpq	$0, -56(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -67(%rbp)          # 1-byte Spill
.LBB4_9:                                # %land.end.12
	movb	-67(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -32(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rdi
	callq	g_free
	movb	$1, %al
	cmpl	$0, -28(%rbp)
	movb	%al, -68(%rbp)          # 1-byte Spill
	jne	.LBB4_11
# BB#10:                                # %lor.rhs.15
	cmpl	$0, -32(%rbp)
	setne	%al
	movb	%al, -68(%rbp)          # 1-byte Spill
.LBB4_11:                               # %lor.end.17
	movb	-68(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
.LBB4_12:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	file_save_dialog_no_overwrite_confirmation, .Lfunc_end4-file_save_dialog_no_overwrite_confirmation
	.cfi_endproc

	.align	16, 0x90
	.type	file_save_dialog_get_uri,@function
file_save_dialog_get_uri:               # @file_save_dialog_get_uri
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_file_chooser_get_uri
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB5_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	g_free
	movq	$0, -16(%rbp)
.LBB5_3:                                # %if.end
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	file_save_dialog_get_uri, .Lfunc_end5-file_save_dialog_get_uri
	.cfi_endproc

	.align	16, 0x90
	.type	file_save_dialog_get_procs,@function
file_save_dialog_get_procs:             # @file_save_dialog_get_procs
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	cmpl	$0, 296(%rsi)
	jne	.LBB6_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	72(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB6_3
.LBB6_2:                                # %cond.false
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	80(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB6_3:                                # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	popq	%rbp
	retq
.Lfunc_end6:
	.size	file_save_dialog_get_procs, .Lfunc_end6-file_save_dialog_get_procs
	.cfi_endproc

	.align	16, 0x90
	.type	file_save_dialog_check_uri,@function
file_save_dialog_check_uri:             # @file_save_dialog_check_uri
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
	subq	$224, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	gimp_file_dialog_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	file_save_dialog_get_uri
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB7_151
.LBB7_2:                                # %if.end
	movq	-64(%rbp), %rdi
	callq	file_utils_uri_display_basename
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	file_save_dialog_get_procs
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	file_procedure_find
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	file_save_dialog_get_procs
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	file_procedure_find
	movq	%rax, -96(%rbp)
# BB#3:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB7_5
# BB#4:                                 # %if.then.9
	movl	$64, %edi
	movabsq	$.L__func__.file_save_dialog_check_uri, %rsi
	movl	$294, %edx              # imm = 0x126
	movabsq	$.L.str.18, %rcx
	movq	-64(%rbp), %r8
	movb	$0, %al
	callq	gimp_log
.LBB7_5:                                # %if.end.10
	jmp	.LBB7_6
.LBB7_6:                                # %do.end
	jmp	.LBB7_7
.LBB7_7:                                # %do.body.11
	movl	gimp_log_flags, %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB7_9
# BB#8:                                 # %if.then.14
	movl	$64, %edi
	movabsq	$.L__func__.file_save_dialog_check_uri, %rsi
	movl	$295, %edx              # imm = 0x127
	movabsq	$.L.str.19, %rcx
	movq	-72(%rbp), %r8
	movb	$0, %al
	callq	gimp_log
.LBB7_9:                                # %if.end.15
	jmp	.LBB7_10
.LBB7_10:                               # %do.end.16
	jmp	.LBB7_11
.LBB7_11:                               # %do.body.17
	movl	gimp_log_flags, %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB7_17
# BB#12:                                # %if.then.20
	cmpq	$0, -80(%rbp)
	je	.LBB7_15
# BB#13:                                # %land.lhs.true
	movq	-80(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB7_15
# BB#14:                                # %cond.true
	movq	-80(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB7_16
.LBB7_15:                               # %cond.false
	movabsq	$.L.str.21, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB7_16
.LBB7_16:                               # %cond.end
	movq	-136(%rbp), %rax        # 8-byte Reload
	movl	$64, %edi
	movabsq	$.L__func__.file_save_dialog_check_uri, %rsi
	movl	$298, %edx              # imm = 0x12A
	movabsq	$.L.str.20, %rcx
	movq	%rax, %r8
	movb	$0, %al
	callq	gimp_log
.LBB7_17:                               # %if.end.24
	jmp	.LBB7_18
.LBB7_18:                               # %do.end.25
	jmp	.LBB7_19
.LBB7_19:                               # %do.body.26
	movl	gimp_log_flags, %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB7_24
# BB#20:                                # %if.then.29
	cmpq	$0, -88(%rbp)
	je	.LBB7_22
# BB#21:                                # %cond.true.31
	movq	-88(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB7_23
.LBB7_22:                               # %cond.false.33
	movabsq	$.L.str.21, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB7_23
.LBB7_23:                               # %cond.end.34
	movq	-144(%rbp), %rax        # 8-byte Reload
	movl	$64, %edi
	movabsq	$.L__func__.file_save_dialog_check_uri, %rsi
	movl	$300, %edx              # imm = 0x12C
	movabsq	$.L.str.22, %rcx
	movq	%rax, %r8
	movb	$0, %al
	callq	gimp_log
.LBB7_24:                               # %if.end.36
	jmp	.LBB7_25
.LBB7_25:                               # %do.end.37
	jmp	.LBB7_26
.LBB7_26:                               # %do.body.38
	movl	gimp_log_flags, %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB7_32
# BB#27:                                # %if.then.41
	cmpq	$0, -96(%rbp)
	je	.LBB7_30
# BB#28:                                # %land.lhs.true.43
	movq	-96(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB7_30
# BB#29:                                # %cond.true.46
	movq	-96(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB7_31
.LBB7_30:                               # %cond.false.48
	movabsq	$.L.str.21, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB7_31
.LBB7_31:                               # %cond.end.49
	movq	-152(%rbp), %rax        # 8-byte Reload
	movl	$64, %edi
	movabsq	$.L__func__.file_save_dialog_check_uri, %rsi
	movl	$303, %edx              # imm = 0x12F
	movabsq	$.L.str.23, %rcx
	movq	%rax, %r8
	movb	$0, %al
	callq	gimp_log
.LBB7_32:                               # %if.end.51
	jmp	.LBB7_33
.LBB7_33:                               # %do.end.52
	cmpq	$0, -96(%rbp)
	jne	.LBB7_87
# BB#34:                                # %if.then.54
	jmp	.LBB7_35
.LBB7_35:                               # %do.body.55
	movl	gimp_log_flags, %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB7_37
# BB#36:                                # %if.then.58
	movl	$64, %edi
	movabsq	$.L__func__.file_save_dialog_check_uri, %rsi
	movl	$308, %edx              # imm = 0x134
	movabsq	$.L.str.24, %rcx
	movb	$0, %al
	callq	gimp_log
.LBB7_37:                               # %if.end.59
	jmp	.LBB7_38
.LBB7_38:                               # %do.end.60
	movl	$46, %esi
	movq	-72(%rbp), %rdi
	callq	strchr
	cmpq	$0, %rax
	jne	.LBB7_76
# BB#39:                                # %if.then.63
	movq	$0, -104(%rbp)
# BB#40:                                # %do.body.64
	movl	gimp_log_flags, %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB7_42
# BB#41:                                # %if.then.67
	movl	$64, %edi
	movabsq	$.L__func__.file_save_dialog_check_uri, %rsi
	movl	$314, %edx              # imm = 0x13A
	movabsq	$.L.str.25, %rcx
	movb	$0, %al
	callq	gimp_log
.LBB7_42:                               # %if.end.68
	jmp	.LBB7_43
.LBB7_43:                               # %do.end.69
	cmpq	$0, -80(%rbp)
	jne	.LBB7_46
# BB#44:                                # %land.lhs.true.71
	movq	-56(%rbp), %rax
	cmpl	$0, 296(%rax)
	jne	.LBB7_46
# BB#45:                                # %if.then.73
	movabsq	$.L.str.26, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB7_50
.LBB7_46:                               # %if.else
	cmpq	$0, -80(%rbp)
	je	.LBB7_49
# BB#47:                                # %land.lhs.true.75
	movq	-80(%rbp), %rax
	cmpq	$0, 256(%rax)
	je	.LBB7_49
# BB#48:                                # %if.then.77
	movq	-80(%rbp), %rax
	movq	256(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
.LBB7_49:                               # %if.end.79
	jmp	.LBB7_50
.LBB7_50:                               # %if.end.80
	cmpq	$0, -104(%rbp)
	je	.LBB7_60
# BB#51:                                # %if.then.82
	jmp	.LBB7_52
.LBB7_52:                               # %do.body.83
	movl	gimp_log_flags, %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB7_54
# BB#53:                                # %if.then.86
	movl	$64, %edi
	movabsq	$.L__func__.file_save_dialog_check_uri, %rsi
	movl	$330, %edx              # imm = 0x14A
	movabsq	$.L.str.27, %rcx
	movq	-104(%rbp), %r8
	movb	$0, %al
	callq	gimp_log
.LBB7_54:                               # %if.end.87
	jmp	.LBB7_55
.LBB7_55:                               # %do.end.88
	movabsq	$.L.str.28, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-72(%rbp), %rdi
	movq	-104(%rbp), %rdx
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, -112(%rbp)
	movq	-64(%rbp), %rdi
	callq	g_free
	movq	-72(%rbp), %rdi
	callq	g_free
	movq	$-1, %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	movq	-112(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	%rax, %r8
	callq	g_filename_to_utf8
	movq	%rax, -120(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_current_name
	movq	-120(%rbp), %rdi
	callq	g_free
# BB#56:                                # %do.body.93
	movl	gimp_log_flags, %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB7_58
# BB#57:                                # %if.then.96
	movl	$64, %edi
	movabsq	$.L__func__.file_save_dialog_check_uri, %rsi
	movl	$346, %edx              # imm = 0x15A
	movabsq	$.L.str.29, %rcx
	movq	-72(%rbp), %r8
	movb	$0, %al
	callq	gimp_log
.LBB7_58:                               # %if.end.97
	jmp	.LBB7_59
.LBB7_59:                               # %do.end.98
	movq	-16(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movq	%rax, %rdi
	callq	gtk_dialog_response
	movq	-72(%rbp), %rdi
	callq	g_free
	movl	$0, -4(%rbp)
	jmp	.LBB7_151
.LBB7_60:                               # %if.else.101
	jmp	.LBB7_61
.LBB7_61:                               # %do.body.102
	movl	gimp_log_flags, %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB7_63
# BB#62:                                # %if.then.105
	movl	$64, %edi
	movabsq	$.L__func__.file_save_dialog_check_uri, %rsi
	movl	$360, %edx              # imm = 0x168
	movabsq	$.L.str.30, %rcx
	movb	$0, %al
	callq	gimp_log
.LBB7_63:                               # %if.end.106
	jmp	.LBB7_64
.LBB7_64:                               # %do.end.107
	movq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB7_66
# BB#65:                                # %if.then.109
	movq	-96(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB7_66:                               # %if.end.110
	jmp	.LBB7_67
.LBB7_67:                               # %if.end.111
	cmpq	$0, -96(%rbp)
	jne	.LBB7_75
# BB#68:                                # %if.then.113
	jmp	.LBB7_69
.LBB7_69:                               # %do.body.114
	movl	gimp_log_flags, %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB7_71
# BB#70:                                # %if.then.117
	movl	$64, %edi
	movabsq	$.L__func__.file_save_dialog_check_uri, %rsi
	movl	$374, %edx              # imm = 0x176
	movabsq	$.L.str.31, %rcx
	movb	$0, %al
	callq	gimp_log
.LBB7_71:                               # %if.end.118
	jmp	.LBB7_72
.LBB7_72:                               # %do.end.119
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rdx
	callq	file_save_dialog_switch_dialogs
	cmpl	$0, %eax
	je	.LBB7_74
# BB#73:                                # %if.then.122
	movq	-64(%rbp), %rdi
	callq	g_free
	movq	-72(%rbp), %rdi
	callq	g_free
	movl	$2, -4(%rbp)
	jmp	.LBB7_151
.LBB7_74:                               # %if.end.123
	movq	-64(%rbp), %rdi
	callq	g_free
	movq	-72(%rbp), %rdi
	callq	g_free
	movl	$0, -4(%rbp)
	jmp	.LBB7_151
.LBB7_75:                               # %if.end.124
	jmp	.LBB7_86
.LBB7_76:                               # %if.else.125
	cmpq	$0, -80(%rbp)
	je	.LBB7_85
# BB#77:                                # %land.lhs.true.127
	movq	-80(%rbp), %rax
	cmpq	$0, 256(%rax)
	jne	.LBB7_85
# BB#78:                                # %if.then.130
	jmp	.LBB7_79
.LBB7_79:                               # %do.body.131
	movl	gimp_log_flags, %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB7_81
# BB#80:                                # %if.then.134
	movl	$64, %edi
	movabsq	$.L__func__.file_save_dialog_check_uri, %rsi
	movl	$394, %edx              # imm = 0x18A
	movabsq	$.L.str.32, %rcx
	movb	$0, %al
	callq	gimp_log
.LBB7_81:                               # %if.end.135
	jmp	.LBB7_82
.LBB7_82:                               # %do.end.136
	movq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB7_84
# BB#83:                                # %if.then.138
	movq	-96(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB7_84:                               # %if.end.139
	jmp	.LBB7_85
.LBB7_85:                               # %if.end.140
	jmp	.LBB7_86
.LBB7_86:                               # %if.end.141
	jmp	.LBB7_87
.LBB7_87:                               # %if.end.142
	cmpq	$0, -80(%rbp)
	jne	.LBB7_108
# BB#88:                                # %if.then.144
	jmp	.LBB7_89
.LBB7_89:                               # %do.body.145
	movl	gimp_log_flags, %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB7_91
# BB#90:                                # %if.then.148
	movl	$64, %edi
	movabsq	$.L__func__.file_save_dialog_check_uri, %rsi
	movl	$409, %edx              # imm = 0x199
	movabsq	$.L.str.33, %rcx
	movb	$0, %al
	callq	gimp_log
.LBB7_91:                               # %if.end.149
	jmp	.LBB7_92
.LBB7_92:                               # %do.end.150
	cmpq	$0, -96(%rbp)
	jne	.LBB7_100
# BB#93:                                # %if.then.152
	jmp	.LBB7_94
.LBB7_94:                               # %do.body.153
	movl	gimp_log_flags, %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB7_96
# BB#95:                                # %if.then.156
	movl	$64, %edi
	movabsq	$.L__func__.file_save_dialog_check_uri, %rsi
	movl	$414, %edx              # imm = 0x19E
	movabsq	$.L.str.34, %rcx
	movb	$0, %al
	callq	gimp_log
.LBB7_96:                               # %if.end.157
	jmp	.LBB7_97
.LBB7_97:                               # %do.end.158
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rdx
	callq	file_save_dialog_switch_dialogs
	cmpl	$0, %eax
	je	.LBB7_99
# BB#98:                                # %if.then.161
	movq	-64(%rbp), %rdi
	callq	g_free
	movq	-72(%rbp), %rdi
	callq	g_free
	movl	$2, -4(%rbp)
	jmp	.LBB7_151
.LBB7_99:                               # %if.end.162
	movq	-64(%rbp), %rdi
	callq	g_free
	movq	-72(%rbp), %rdi
	callq	g_free
	movl	$0, -4(%rbp)
	jmp	.LBB7_151
.LBB7_100:                              # %if.end.163
	jmp	.LBB7_101
.LBB7_101:                              # %do.body.164
	movl	gimp_log_flags, %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB7_106
# BB#102:                               # %if.then.167
	movq	-88(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB7_104
# BB#103:                               # %cond.true.170
	movq	-88(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB7_105
.LBB7_104:                              # %cond.false.172
	movabsq	$.L.str.36, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB7_105
.LBB7_105:                              # %cond.end.173
	movq	-176(%rbp), %rax        # 8-byte Reload
	movl	$64, %edi
	movabsq	$.L__func__.file_save_dialog_check_uri, %rsi
	movl	$431, %edx              # imm = 0x1AF
	movabsq	$.L.str.35, %rcx
	movq	%rax, %r8
	movb	$0, %al
	callq	gimp_log
.LBB7_106:                              # %if.end.175
	jmp	.LBB7_107
.LBB7_107:                              # %do.end.176
	movq	-88(%rbp), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB7_148
.LBB7_108:                              # %if.else.177
	jmp	.LBB7_109
.LBB7_109:                              # %do.body.178
	movl	gimp_log_flags, %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB7_114
# BB#110:                               # %if.then.181
	movq	-80(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB7_112
# BB#111:                               # %cond.true.184
	movq	-80(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB7_113
.LBB7_112:                              # %cond.false.186
	movabsq	$.L.str.36, %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB7_113
.LBB7_113:                              # %cond.end.187
	movq	-184(%rbp), %rax        # 8-byte Reload
	movl	$64, %edi
	movabsq	$.L__func__.file_save_dialog_check_uri, %rsi
	movl	$439, %edx              # imm = 0x1B7
	movabsq	$.L.str.37, %rcx
	movq	%rax, %r8
	movb	$0, %al
	callq	gimp_log
.LBB7_114:                              # %if.end.189
	jmp	.LBB7_115
.LBB7_115:                              # %do.end.190
	movq	-80(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.LBB7_137
# BB#116:                               # %if.then.191
	jmp	.LBB7_117
.LBB7_117:                              # %do.body.192
	movl	gimp_log_flags, %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB7_122
# BB#118:                               # %if.then.195
	cmpq	$0, -96(%rbp)
	je	.LBB7_120
# BB#119:                               # %cond.true.197
	movq	-96(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB7_121
.LBB7_120:                              # %cond.false.199
	movabsq	$.L.str.21, %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB7_121
.LBB7_121:                              # %cond.end.200
	movq	-192(%rbp), %rax        # 8-byte Reload
	movl	$64, %edi
	movabsq	$.L__func__.file_save_dialog_check_uri, %rsi
	movl	$444, %edx              # imm = 0x1BC
	movabsq	$.L.str.38, %rcx
	movq	%rax, %r8
	movb	$0, %al
	callq	gimp_log
.LBB7_122:                              # %if.end.202
	jmp	.LBB7_123
.LBB7_123:                              # %do.end.203
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.LBB7_129
# BB#124:                               # %if.then.205
	jmp	.LBB7_125
.LBB7_125:                              # %do.body.206
	movl	gimp_log_flags, %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB7_127
# BB#126:                               # %if.then.209
	movl	$64, %edi
	movabsq	$.L__func__.file_save_dialog_check_uri, %rsi
	movl	$449, %edx              # imm = 0x1C1
	movabsq	$.L.str.39, %rcx
	movb	$0, %al
	callq	gimp_log
.LBB7_127:                              # %if.end.210
	jmp	.LBB7_128
.LBB7_128:                              # %do.end.211
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.40, %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	-208(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gimp_message
	movq	-64(%rbp), %rdi
	callq	g_free
	movq	-72(%rbp), %rdi
	callq	g_free
	movl	$0, -4(%rbp)
	jmp	.LBB7_151
.LBB7_129:                              # %if.else.214
	jmp	.LBB7_130
.LBB7_130:                              # %do.body.215
	movl	gimp_log_flags, %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB7_132
# BB#131:                               # %if.then.218
	movl	$64, %edi
	movabsq	$.L__func__.file_save_dialog_check_uri, %rsi
	movl	$467, %edx              # imm = 0x1D3
	movabsq	$.L.str.41, %rcx
	movb	$0, %al
	callq	gimp_log
.LBB7_132:                              # %if.end.219
	jmp	.LBB7_133
.LBB7_133:                              # %do.end.220
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	file_save_dialog_use_extension
	cmpl	$0, %eax
	jne	.LBB7_135
# BB#134:                               # %if.then.223
	movq	-64(%rbp), %rdi
	callq	g_free
	movq	-72(%rbp), %rdi
	callq	g_free
	movl	$0, -4(%rbp)
	jmp	.LBB7_151
.LBB7_135:                              # %if.end.224
	jmp	.LBB7_136
.LBB7_136:                              # %if.end.225
	jmp	.LBB7_147
.LBB7_137:                              # %if.else.226
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	je	.LBB7_146
# BB#138:                               # %if.then.228
	jmp	.LBB7_139
.LBB7_139:                              # %do.body.229
	movl	gimp_log_flags, %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB7_144
# BB#140:                               # %if.then.232
	movq	-88(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB7_142
# BB#141:                               # %cond.true.235
	movq	-88(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB7_143
.LBB7_142:                              # %cond.false.237
	movabsq	$.L.str.36, %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB7_143
.LBB7_143:                              # %cond.end.238
	movq	-216(%rbp), %rax        # 8-byte Reload
	movl	$64, %edi
	movabsq	$.L__func__.file_save_dialog_check_uri, %rsi
	movl	$484, %edx              # imm = 0x1E4
	movabsq	$.L.str.35, %rcx
	movq	%rax, %r8
	movb	$0, %al
	callq	gimp_log
.LBB7_144:                              # %if.end.240
	jmp	.LBB7_145
.LBB7_145:                              # %do.end.241
	movq	-88(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB7_146:                              # %if.end.242
	jmp	.LBB7_147
.LBB7_147:                              # %if.end.243
	jmp	.LBB7_148
.LBB7_148:                              # %if.end.244
	cmpq	$0, -80(%rbp)
	jne	.LBB7_150
# BB#149:                               # %if.then.246
	movabsq	$.L.str.42, %rdi
	movabsq	$.L__func__.file_save_dialog_check_uri, %rsi
	movb	$0, %al
	callq	g_warning
	movl	$0, -4(%rbp)
	jmp	.LBB7_151
.LBB7_150:                              # %if.end.247
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-80(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$1, -4(%rbp)
.LBB7_151:                              # %return
	movl	-4(%rbp), %eax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	file_save_dialog_check_uri, .Lfunc_end7-file_save_dialog_check_uri
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI8_0:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	file_save_dialog_switch_dialogs,@function
file_save_dialog_switch_dialogs:        # @file_save_dialog_switch_dialogs
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -36(%rbp)
	movq	-8(%rbp), %rdx
	cmpl	$0, 296(%rdx)
	je	.LBB8_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	72(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB8_3
.LBB8_2:                                # %cond.false
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	80(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB8_3:                                # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	file_procedure_find
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB8_13
# BB#4:                                 # %if.then
	movq	-8(%rbp), %rax
	cmpl	$0, 296(%rax)
	je	.LBB8_6
# BB#5:                                 # %if.then.5
	movabsq	$.L.str.43, %rdi
	callq	gettext
	movabsq	$.L.str.44, %rdi
	movq	%rax, -56(%rbp)
	callq	gettext
	movabsq	$.L.str.45, %rdi
	movq	%rax, -64(%rbp)
	callq	gettext
	movq	%rax, -72(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else
	movabsq	$.L.str.46, %rdi
	callq	gettext
	movabsq	$.L.str.47, %rdi
	movq	%rax, -56(%rbp)
	callq	gettext
	movabsq	$.L.str.48, %rdi
	movq	%rax, -64(%rbp)
	callq	gettext
	movq	%rax, -72(%rbp)
.LBB8_7:                                # %if.end
	movabsq	$.L.str.49, %rdi
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.50, %rsi
	movl	$2, %ecx
	movabsq	$gimp_standard_help_func, %r8
	xorl	%edx, %edx
	movl	%edx, %r9d
	movabsq	$.L.str.51, %rdi
	movl	$4294967291, %edx       # imm = 0xFFFFFFFB
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movl	%edx, -124(%rbp)        # 4-byte Spill
	movq	%rax, %rdx
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-5, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, %al
	callq	gimp_message_dialog_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_message_dialog_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.52, %rsi
	movq	264(%rax), %rdi
	movq	-56(%rbp), %rdx
	movb	$0, %al
	callq	gimp_message_box_set_primary_text
	movq	-48(%rbp), %rdx
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	callq	gimp_message_dialog_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.52, %rsi
	movq	264(%rax), %rdi
	movq	-64(%rbp), %rdx
	movb	$0, %al
	callq	gimp_message_box_set_text
	movq	-8(%rbp), %rdx
	cmpl	$0, 292(%rdx)
	jne	.LBB8_10
# BB#8:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpl	$0, 300(%rax)
	jne	.LBB8_10
# BB#9:                                 # %if.then.23
	movabsq	$.L.str.53, %rdi
	movq	-72(%rbp), %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	gtk_label_new
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rdi
	callq	g_free
	movq	-80(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_use_markup
	movq	-80(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-48(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_message_dialog_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	264(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	movl	-180(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.54, %rsi
	movabsq	$file_save_other_dialog_activated, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %rdi
	movq	-48(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB8_10:                               # %if.end.36
	movq	-8(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967290, %esi       # imm = 0xFFFFFFFA
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gtk_dialog_set_response_sensitive
	movq	-8(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gtk_dialog_set_response_sensitive
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-48(%rbp), %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-23, %eax
	jne	.LBB8_12
# BB#11:                                # %if.then.45
	movl	$1, -36(%rbp)
.LBB8_12:                               # %if.end.46
	movq	-48(%rbp), %rdi
	callq	gtk_widget_destroy
	movq	-48(%rbp), %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rdi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967290, %esi       # imm = 0xFFFFFFFA
	movl	$1, %edx
	movq	%rax, %rdi
	callq	gtk_dialog_set_response_sensitive
	movq	-8(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$1, %edx
	movq	%rax, %rdi
	callq	gtk_dialog_set_response_sensitive
	jmp	.LBB8_14
.LBB8_13:                               # %if.else.51
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.55, %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	-256(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gimp_message
.LBB8_14:                               # %if.end.54
	movl	-36(%rbp), %eax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end8:
	.size	file_save_dialog_switch_dialogs, .Lfunc_end8-file_save_dialog_switch_dialogs
	.cfi_endproc

	.align	16, 0x90
	.type	file_save_dialog_use_extension,@function
file_save_dialog_use_extension:         # @file_save_dialog_use_extension
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
	pushq	%r14
	pushq	%rbx
	subq	$176, %rsp
.Ltmp32:
	.cfi_offset %rbx, -32
.Ltmp33:
	.cfi_offset %r14, -24
	movabsq	$.L.str.49, %rax
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -44(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movabsq	$.L.str.56, %rsi
	movl	$2, %ecx
	movabsq	$gimp_standard_help_func, %r8
	xorl	%edx, %edx
	movl	%edx, %r9d
	movabsq	$.L.str.57, %rdi
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movabsq	$.L.str.2, %r10
	movl	$4294967291, %r11d      # imm = 0xFFFFFFFB
	movq	-24(%rbp), %rbx
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
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
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
	movq	-40(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_message_dialog_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.58, %rdi
	movq	264(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_message_box_set_primary_text
	movq	-40(%rbp), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_message_dialog_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.59, %rdi
	movq	264(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_message_box_set_text
	movq	-24(%rbp), %rsi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967290, %esi       # imm = 0xFFFFFFFA
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gtk_dialog_set_response_sensitive
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gtk_dialog_set_response_sensitive
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-40(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %eax
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_widget_destroy
	movq	-40(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_object_unref
	movq	-24(%rbp), %rsi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967290, %esi       # imm = 0xFFFFFFFA
	movl	$1, %edx
	movq	%rax, %rdi
	callq	gtk_dialog_set_response_sensitive
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$1, %edx
	movq	%rax, %rdi
	callq	gtk_dialog_set_response_sensitive
	movl	-44(%rbp), %eax
	addq	$176, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end9:
	.size	file_save_dialog_use_extension, .Lfunc_end9-file_save_dialog_use_extension
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB10_2
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
.LBB10_2:                               # %entry
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
	movl	$.L.str.8, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end10:
	.size	g_warning, .Lfunc_end10-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	file_save_other_dialog_activated,@function
file_save_other_dialog_activated:       # @file_save_other_dialog_activated
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
	subq	$32, %rsp
	movl	$4294967273, %eax       # imm = 0xFFFFFFE9
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	%eax, %esi
	callq	gtk_dialog_response
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	file_save_other_dialog_activated, .Lfunc_end11-file_save_other_dialog_activated
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Save Image"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-file-save"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gtk-save"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-file-save-dialog-state"
	.size	.L.str.3, 28

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Export Image"
	.size	.L.str.4, 13

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-file-export"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"_Export"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-file-export-dialog-state"
	.size	.L.str.7, 30

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Gimp-Dialogs"
	.size	.L.str.8, 13

	.type	.L__func__.file_save_dialog_new,@object # @__func__.file_save_dialog_new
.L__func__.file_save_dialog_new:
	.asciz	"file_save_dialog_new"
	.size	.L__func__.file_save_dialog_new, 21

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.9, 20

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"confirm-overwrite"
	.size	.L.str.10, 18

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"response"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"file"
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"file-quit"
	.size	.L.str.13, 10

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Saving canceled"
	.size	.L.str.14, 16

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Saving '%s' failed:\n\n%s"
	.size	.L.str.15, 24

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp-file-save-last-uri"
	.size	.L.str.16, 24

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gimp-file-export-last-uri"
	.size	.L.str.17, 26

	.type	.L__func__.file_save_dialog_check_uri,@object # @__func__.file_save_dialog_check_uri
.L__func__.file_save_dialog_check_uri:
	.asciz	"file_save_dialog_check_uri"
	.size	.L__func__.file_save_dialog_check_uri, 27

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"URI = %s"
	.size	.L.str.18, 9

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"basename = %s"
	.size	.L.str.19, 14

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"selected save_proc: %s"
	.size	.L.str.20, 23

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"NULL"
	.size	.L.str.21, 5

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"URI save_proc: %s"
	.size	.L.str.22, 18

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"basename save_proc: %s"
	.size	.L.str.23, 23

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"basename has no valid extension"
	.size	.L.str.24, 32

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"basename has no '.', trying to add extension"
	.size	.L.str.25, 45

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"xcf"
	.size	.L.str.26, 4

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"appending .%s to basename"
	.size	.L.str.27, 26

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"."
	.size	.L.str.28, 2

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"set basename to %s, rerunning response and bailing out"
	.size	.L.str.29, 55

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"save_proc has no extensions, continuing without"
	.size	.L.str.30, 48

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"unable to figure save_proc, bailing out"
	.size	.L.str.31, 40

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"basename has '.', but save_proc has no extensions, accepting random extension"
	.size	.L.str.32, 78

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"no save_proc was selected from the list"
	.size	.L.str.33, 40

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"basename has no useful extension, bailing out"
	.size	.L.str.34, 46

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"use URI's proc '%s' so indirect saving works"
	.size	.L.str.35, 45

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"<unnamed>"
	.size	.L.str.36, 10

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"save_proc '%s' was selected from the list"
	.size	.L.str.37, 42

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"however the basename's proc is '%s'"
	.size	.L.str.38, 36

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"that's impossible for remote URIs, bailing out"
	.size	.L.str.39, 47

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Saving remote files needs to determine the file format from the file extension. Please enter a file extension that matches the selected file format or enter no file extension at all."
	.size	.L.str.40, 183

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"ask the user if she really wants that filename"
	.size	.L.str.41, 47

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"%s: EEEEEEK"
	.size	.L.str.42, 12

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"The given filename cannot be used for exporting"
	.size	.L.str.43, 48

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"You can use this dialog to export to various file formats. If you want to save the image to the GIMP XCF format, use File\342\206\222Save instead."
	.size	.L.str.44, 138

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Take me to the Save dialog"
	.size	.L.str.45, 27

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"The given filename cannot be used for saving"
	.size	.L.str.46, 45

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"You can use this dialog to save to the GIMP XCF format. Use File\342\206\222Export to export to other file formats."
	.size	.L.str.47, 107

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Take me to the Export dialog"
	.size	.L.str.48, 29

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Extension Mismatch"
	.size	.L.str.49, 19

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"gimp-warning"
	.size	.L.str.50, 13

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"gtk-ok"
	.size	.L.str.51, 7

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"%s"
	.size	.L.str.52, 3

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"<a href=\"other-dialog\">%s</a>"
	.size	.L.str.53, 30

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"activate-link"
	.size	.L.str.54, 14

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"The given filename does not have any known file extension. Please enter a known file extension or select a file format from the file format list."
	.size	.L.str.55, 146

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"gimp-question"
	.size	.L.str.56, 14

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"gtk-cancel"
	.size	.L.str.57, 11

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"The given file extension does not match the chosen file type."
	.size	.L.str.58, 62

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Do you want to save the image using this name anyway?"
	.size	.L.str.59, 54


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
