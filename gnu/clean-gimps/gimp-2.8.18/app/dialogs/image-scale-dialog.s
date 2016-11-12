	.text
	.file	"image-scale-dialog.bc"
	.globl	image_scale_dialog_new
	.align	16, 0x90
	.type	image_scale_dialog_new,@function
image_scale_dialog_new:                 # @image_scale_dialog_new
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$208, %rsp
.Ltmp3:
	.cfi_offset %rbx, -48
.Ltmp4:
	.cfi_offset %r12, -40
.Ltmp5:
	.cfi_offset %r14, -32
.Ltmp6:
	.cfi_offset %r15, -24
	movq	16(%rbp), %rax
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movl	%r8d, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	%rax, -88(%rbp)
# BB#1:                                 # %do.body
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -116(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -116(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.image_scale_dialog_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB0_30
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB0_15
# BB#14:                                # %if.then.20
	movl	$0, -140(%rbp)
	jmp	.LBB0_20
.LBB0_15:                               # %if.else.21
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_18
# BB#16:                                # %land.lhs.true.24
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB0_18
# BB#17:                                # %if.then.28
	movl	$1, -140(%rbp)
	jmp	.LBB0_19
.LBB0_18:                               # %if.else.29
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB0_19:                               # %if.end.31
	jmp	.LBB0_20
.LBB0_20:                               # %if.end.32
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB0_22
# BB#21:                                # %if.then.35
	jmp	.LBB0_23
.LBB0_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.image_scale_dialog_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB0_30
.LBB0_23:                               # %if.end.37
	jmp	.LBB0_24
.LBB0_24:                               # %do.end.38
	jmp	.LBB0_25
.LBB0_25:                               # %do.body.39
	cmpq	$0, -80(%rbp)
	je	.LBB0_27
# BB#26:                                # %if.then.41
	jmp	.LBB0_28
.LBB0_27:                               # %if.else.42
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.image_scale_dialog_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB0_30
.LBB0_28:                               # %if.end.43
	jmp	.LBB0_29
.LBB0_29:                               # %do.end.44
	movl	$72, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movq	%rax, -96(%rbp)
	movq	-48(%rbp), %rax
	movq	-96(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.4, %rsi
	movl	$13, %ecx
	movl	%ecx, %edx
	movq	-56(%rbp), %r8
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%r8, -168(%rbp)         # 8-byte Spill
	callq	g_dpgettext
	movabsq	$.L.str.5, %rdx
	movabsq	$gimp_standard_help_func, %r9
	movabsq	$image_scale_callback, %rsi
	movq	-64(%rbp), %r8
	movl	-68(%rbp), %ecx
	movl	-72(%rbp), %r10d
	movq	-96(%rbp), %rdi
	movq	-160(%rbp), %r11        # 8-byte Reload
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	-168(%rbp), %rbx        # 8-byte Reload
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%rbx, %rsi
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-192(%rbp), %rax        # 8-byte Reload
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movq	%rax, (%rsp)
	movl	-196(%rbp), %r14d       # 4-byte Reload
	movl	%r14d, 8(%rsp)
	movl	%r10d, 16(%rsp)
	movq	-184(%rbp), %r15        # 8-byte Reload
	movq	%r15, 24(%rsp)
	movq	-176(%rbp), %r12        # 8-byte Reload
	movq	%r12, 32(%rsp)
	callq	scale_dialog_new
	movl	$80, %r10d
	movl	%r10d, %esi
	movq	-96(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$image_scale_dialog_free, %rcx
	movq	-96(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_object_weak_ref
	movq	-80(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-88(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	%rax, 64(%rcx)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB0_30:                               # %return
	movq	-40(%rbp), %rax
	addq	$208, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	image_scale_dialog_new, .Lfunc_end0-image_scale_dialog_new
	.cfi_endproc

	.align	16, 0x90
	.type	image_scale_callback,@function
image_scale_callback:                   # @image_scale_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp9:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	24(%rbp), %rax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm1, -48(%rbp)
	movl	%r10d, -52(%rbp)
	movq	%rax, -64(%rbp)
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_image_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -80(%rbp)
	movl	-20(%rbp), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, 16(%rax)
	movl	-24(%rbp), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, 20(%rax)
	movl	-28(%rbp), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, 24(%rax)
	movl	-32(%rbp), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, 28(%rax)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-72(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-72(%rbp), %rax
	movsd	%xmm0, 40(%rax)
	movl	-52(%rbp), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, 48(%rax)
	movq	-8(%rbp), %rdi
	xorl	%esi, %esi
	callq	gtk_widget_set_sensitive
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	624(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	leaq	-104(%rbp), %r8
	movq	%rax, %rcx
	callq	gimp_image_scale_check
	movl	%eax, -84(%rbp)
	movl	%eax, %edx
	testl	%eax, %eax
	movl	%edx, -124(%rbp)        # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_5
.LBB1_5:                                # %entry
	movl	-124(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB1_2
	jmp	.LBB1_6
.LBB1_6:                                # %entry
	movl	-124(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jne	.LBB1_4
	jmp	.LBB1_1
.LBB1_1:                                # %sw.bb
	movq	-72(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movq	-96(%rbp), %rdx
	callq	image_scale_confirm_large
	jmp	.LBB1_4
.LBB1_2:                                # %sw.bb.12
	movq	-72(%rbp), %rdi
	callq	image_scale_confirm_small
	jmp	.LBB1_4
.LBB1_3:                                # %sw.bb.13
	movq	-8(%rbp), %rdi
	callq	gtk_widget_hide
	movq	-72(%rbp), %rdi
	movq	56(%rdi), %rdi
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rcx
	movl	16(%rcx), %edx
	movq	-72(%rbp), %rcx
	movl	20(%rcx), %ecx
	movq	-72(%rbp), %rsi
	movl	24(%rsi), %r8d
	movq	-72(%rbp), %rsi
	movl	28(%rsi), %r9d
	movq	-72(%rbp), %rsi
	movsd	32(%rsi), %xmm0         # xmm0 = mem[0],zero
	movq	-72(%rbp), %rsi
	movsd	40(%rsi), %xmm1         # xmm1 = mem[0],zero
	movq	-72(%rbp), %rsi
	movl	48(%rsi), %r10d
	movq	-72(%rbp), %rsi
	movq	64(%rsi), %rsi
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%r10d, (%rsp)
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-144(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rsi
	movl	-28(%rbp), %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
.LBB1_4:                                # %sw.epilog
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	image_scale_callback, .Lfunc_end1-image_scale_callback
	.cfi_endproc

	.align	16, 0x90
	.type	image_scale_dialog_free,@function
image_scale_dialog_free:                # @image_scale_dialog_free
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movl	$72, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#2:                                 # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	image_scale_dialog_free, .Lfunc_end2-image_scale_dialog_free
	.cfi_endproc

	.align	16, 0x90
	.type	image_scale_confirm_large,@function
image_scale_confirm_large:              # @image_scale_confirm_large
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp15:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	image_scale_confirm_dialog
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_format_size
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_message_dialog_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rdi
	movq	264(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_message_box_set_primary_text
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_format_size
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_message_dialog_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rdi
	movq	264(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-40(%rbp), %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_message_box_set_text
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	image_scale_confirm_large, .Lfunc_end3-image_scale_confirm_large
	.cfi_endproc

	.align	16, 0x90
	.type	image_scale_confirm_small,@function
image_scale_confirm_small:              # @image_scale_confirm_small
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	image_scale_confirm_dialog
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_message_dialog_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.15, %rdi
	movq	264(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_message_box_set_primary_text
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_message_dialog_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.16, %rdi
	movq	264(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_message_box_set_text
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	image_scale_confirm_small, .Lfunc_end4-image_scale_confirm_small
	.cfi_endproc

	.align	16, 0x90
	.type	image_scale_confirm_dialog,@function
image_scale_confirm_dialog:             # @image_scale_confirm_dialog
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$120, %rsp
.Ltmp22:
	.cfi_offset %rbx, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
	movabsq	$.L.str.9, %rax
	movq	%rdi, -32(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movabsq	$.L.str.10, %rsi
	movl	$2, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.11, %r9
	movabsq	$.L.str.12, %rdi
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movabsq	$.L.str.13, %r10
	movl	$4294967291, %r11d      # imm = 0xFFFFFFFB
	xorl	%ebx, %ebx
	movl	%ebx, %r14d
	movq	-32(%rbp), %r15
	movq	(%r15), %r15
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movq	%r15, %rdx
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r10, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movq	%r14, -64(%rbp)         # 8-byte Spill
	movl	%r11d, -68(%rbp)        # 4-byte Spill
	callq	gimp_message_dialog_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movabsq	$.L.str.14, %rsi
	movabsq	$image_scale_confirm_response, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %r10
	movq	-32(%rbp), %r14
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	%r14, %rcx
	callq	g_signal_connect_data
	movq	-40(%rbp), %rcx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rax
	addq	$120, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	image_scale_confirm_dialog, .Lfunc_end5-image_scale_confirm_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	image_scale_confirm_response,@function
image_scale_confirm_response:           # @image_scale_confirm_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
	cmpl	$-5, -12(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_hide
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rcx
	movl	16(%rcx), %edx
	movq	-24(%rbp), %rcx
	movl	20(%rcx), %ecx
	movq	-24(%rbp), %rsi
	movl	24(%rsi), %r8d
	movq	-24(%rbp), %rsi
	movl	28(%rsi), %r9d
	movq	-24(%rbp), %rsi
	movsd	32(%rsi), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rsi
	movsd	40(%rsi), %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rsi
	movl	48(%rsi), %r10d
	movq	-24(%rbp), %rsi
	movq	64(%rsi), %rsi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movl	%r10d, (%rsp)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_destroy
	jmp	.LBB6_3
.LBB6_2:                                # %if.else
	movl	$1, %esi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_set_sensitive
.LBB6_3:                                # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	image_scale_confirm_response, .Lfunc_end6-image_scale_confirm_response
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Dialogs"
	.size	.L.str, 13

	.type	.L__func__.image_scale_dialog_new,@object # @__func__.image_scale_dialog_new
.L__func__.image_scale_dialog_new:
	.asciz	"image_scale_dialog_new"
	.size	.L__func__.image_scale_dialog_new, 23

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"callback != NULL"
	.size	.L.str.3, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"dialog-title\004Scale Image"
	.size	.L.str.4, 25

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-image-scale"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"scale-dialog-unit"
	.size	.L.str.6, 18

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"You are trying to create an image with a size of %s."
	.size	.L.str.7, 53

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Scaling the image to the chosen size will make it use more memory than what is configured as \"Maximum Image Size\" in the Preferences dialog (currently %s)."
	.size	.L.str.8, 156

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Confirm Scaling"
	.size	.L.str.9, 16

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-warning"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-image-scale-warning"
	.size	.L.str.11, 25

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gtk-cancel"
	.size	.L.str.12, 11

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp-scale"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"response"
	.size	.L.str.14, 9

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Scaling the image to the chosen size will shrink some layers completely away."
	.size	.L.str.15, 78

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Is this what you want to do?"
	.size	.L.str.16, 29


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
