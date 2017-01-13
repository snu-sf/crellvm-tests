	.text
	.file	"gimp-edit.bc"
	.globl	gimp_edit_cut
	.align	16, 0x90
	.type	gimp_edit_cut,@function
gimp_edit_cut:                          # @gimp_edit_cut
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
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_edit_cut, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_50
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB0_15
# BB#14:                                # %if.then.20
	movl	$0, -92(%rbp)
	jmp	.LBB0_20
.LBB0_15:                               # %if.else.21
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_18
# BB#16:                                # %land.lhs.true.24
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB0_18
# BB#17:                                # %if.then.28
	movl	$1, -92(%rbp)
	jmp	.LBB0_19
.LBB0_18:                               # %if.else.29
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB0_19:                               # %if.end.31
	jmp	.LBB0_20
.LBB0_20:                               # %if.end.32
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB0_22
# BB#21:                                # %if.then.35
	jmp	.LBB0_23
.LBB0_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_edit_cut, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_50
.LBB0_23:                               # %if.end.37
	jmp	.LBB0_24
.LBB0_24:                               # %do.end.38
	jmp	.LBB0_25
.LBB0_25:                               # %do.body.39
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB0_27
# BB#26:                                # %if.then.44
	jmp	.LBB0_28
.LBB0_27:                               # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_edit_cut, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_50
.LBB0_28:                               # %if.end.46
	jmp	.LBB0_29
.LBB0_29:                               # %do.end.47
	jmp	.LBB0_30
.LBB0_30:                               # %do.body.48
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB0_32
# BB#31:                                # %if.then.57
	movl	$0, -116(%rbp)
	jmp	.LBB0_37
.LBB0_32:                               # %if.else.58
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_35
# BB#33:                                # %land.lhs.true.61
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB0_35
# BB#34:                                # %if.then.65
	movl	$1, -116(%rbp)
	jmp	.LBB0_36
.LBB0_35:                               # %if.else.66
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB0_36:                               # %if.end.68
	jmp	.LBB0_37
.LBB0_37:                               # %if.end.69
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB0_39
# BB#38:                                # %if.then.72
	jmp	.LBB0_40
.LBB0_39:                               # %if.else.73
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_edit_cut, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_50
.LBB0_40:                               # %if.end.74
	jmp	.LBB0_41
.LBB0_41:                               # %do.end.75
	jmp	.LBB0_42
.LBB0_42:                               # %do.body.76
	cmpq	$0, -40(%rbp)
	je	.LBB0_44
# BB#43:                                # %lor.lhs.false
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_45
.LBB0_44:                               # %if.then.79
	jmp	.LBB0_46
.LBB0_45:                               # %if.else.80
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_edit_cut, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_50
.LBB0_46:                               # %if.end.81
	jmp	.LBB0_47
.LBB0_47:                               # %do.end.82
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %r8
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_edit_extract
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB0_49
# BB#48:                                # %if.then.87
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_set_global_buffer
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	440(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_50
.LBB0_49:                               # %if.end.89
	movq	$0, -8(%rbp)
.LBB0_50:                               # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_edit_cut, .Lfunc_end0-gimp_edit_cut
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_edit_extract,@function
gimp_edit_extract:                      # @gimp_edit_extract
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
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB1_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.19, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	g_dpgettext
	movl	$30, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB1_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_selection_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %r8
	movl	-36(%rbp), %r9d
	movq	-48(%rbp), %r10
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	%r8, %rdx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	-116(%rbp), %r8d        # 4-byte Reload
	movl	-116(%rbp), %r9d        # 4-byte Reload
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	movq	%r10, 16(%rsp)
	callq	gimp_selection_extract
	movq	%rax, -56(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB1_4
# BB#3:                                 # %if.then.7
	movq	-16(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB1_4:                                # %if.end.9
	cmpq	$0, -56(%rbp)
	je	.LBB1_6
# BB#5:                                 # %if.then.11
	movabsq	$.L.str.20, %rdi
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r8d, %r8d
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %ecx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_buffer_new
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rdi
	callq	tile_manager_unref
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.end.14
	movq	$0, -8(%rbp)
.LBB1_7:                                # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_edit_extract, .Lfunc_end1-gimp_edit_extract
	.cfi_endproc

	.globl	gimp_edit_copy
	.align	16, 0x90
	.type	gimp_edit_copy,@function
gimp_edit_copy:                         # @gimp_edit_copy
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_edit_copy, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_50
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	jmp	.LBB2_13
.LBB2_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB2_15
# BB#14:                                # %if.then.20
	movl	$0, -92(%rbp)
	jmp	.LBB2_20
.LBB2_15:                               # %if.else.21
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_18
# BB#16:                                # %land.lhs.true.24
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB2_18
# BB#17:                                # %if.then.28
	movl	$1, -92(%rbp)
	jmp	.LBB2_19
.LBB2_18:                               # %if.else.29
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB2_19:                               # %if.end.31
	jmp	.LBB2_20
.LBB2_20:                               # %if.end.32
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB2_22
# BB#21:                                # %if.then.35
	jmp	.LBB2_23
.LBB2_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_edit_copy, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_50
.LBB2_23:                               # %if.end.37
	jmp	.LBB2_24
.LBB2_24:                               # %do.end.38
	jmp	.LBB2_25
.LBB2_25:                               # %do.body.39
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB2_27
# BB#26:                                # %if.then.44
	jmp	.LBB2_28
.LBB2_27:                               # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_edit_copy, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_50
.LBB2_28:                               # %if.end.46
	jmp	.LBB2_29
.LBB2_29:                               # %do.end.47
	jmp	.LBB2_30
.LBB2_30:                               # %do.body.48
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB2_32
# BB#31:                                # %if.then.57
	movl	$0, -116(%rbp)
	jmp	.LBB2_37
.LBB2_32:                               # %if.else.58
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_35
# BB#33:                                # %land.lhs.true.61
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB2_35
# BB#34:                                # %if.then.65
	movl	$1, -116(%rbp)
	jmp	.LBB2_36
.LBB2_35:                               # %if.else.66
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB2_36:                               # %if.end.68
	jmp	.LBB2_37
.LBB2_37:                               # %if.end.69
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB2_39
# BB#38:                                # %if.then.72
	jmp	.LBB2_40
.LBB2_39:                               # %if.else.73
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_edit_copy, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_50
.LBB2_40:                               # %if.end.74
	jmp	.LBB2_41
.LBB2_41:                               # %do.end.75
	jmp	.LBB2_42
.LBB2_42:                               # %do.body.76
	cmpq	$0, -40(%rbp)
	je	.LBB2_44
# BB#43:                                # %lor.lhs.false
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB2_45
.LBB2_44:                               # %if.then.79
	jmp	.LBB2_46
.LBB2_45:                               # %if.else.80
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_edit_copy, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_50
.LBB2_46:                               # %if.end.81
	jmp	.LBB2_47
.LBB2_47:                               # %do.end.82
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %r8
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_edit_extract
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB2_49
# BB#48:                                # %if.then.87
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_set_global_buffer
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	440(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB2_50
.LBB2_49:                               # %if.end.89
	movq	$0, -8(%rbp)
.LBB2_50:                               # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_edit_copy, .Lfunc_end2-gimp_edit_copy
	.cfi_endproc

	.globl	gimp_edit_copy_visible
	.align	16, 0x90
	.type	gimp_edit_copy_visible,@function
gimp_edit_copy_visible:                 # @gimp_edit_copy_visible
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_edit_copy_visible, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_33
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB3_15
# BB#14:                                # %if.then.20
	movl	$0, -92(%rbp)
	jmp	.LBB3_20
.LBB3_15:                               # %if.else.21
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_18
# BB#16:                                # %land.lhs.true.24
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB3_18
# BB#17:                                # %if.then.28
	movl	$1, -92(%rbp)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.29
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB3_19:                               # %if.end.31
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.32
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.35
	jmp	.LBB3_23
.LBB3_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_edit_copy_visible, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_33
.LBB3_23:                               # %if.end.37
	jmp	.LBB3_24
.LBB3_24:                               # %do.end.38
	jmp	.LBB3_25
.LBB3_25:                               # %do.body.39
	cmpq	$0, -32(%rbp)
	je	.LBB3_27
# BB#26:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB3_28
.LBB3_27:                               # %if.then.42
	jmp	.LBB3_29
.LBB3_28:                               # %if.else.43
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_edit_copy_visible, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_33
.LBB3_29:                               # %if.end.44
	jmp	.LBB3_30
.LBB3_30:                               # %do.end.45
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_projection
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %r8
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_edit_extract
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB3_32
# BB#31:                                # %if.then.51
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_set_global_buffer
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	440(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_33
.LBB3_32:                               # %if.end.53
	movq	$0, -8(%rbp)
.LBB3_33:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_edit_copy_visible, .Lfunc_end3-gimp_edit_copy_visible
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_edit_paste
	.align	16, 0x90
	.type	gimp_edit_paste,@function
gimp_edit_paste:                        # @gimp_edit_paste
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$440, %rsp              # imm = 0x1B8
.Ltmp15:
	.cfi_offset %rbx, -56
.Ltmp16:
	.cfi_offset %r12, -48
.Ltmp17:
	.cfi_offset %r13, -40
.Ltmp18:
	.cfi_offset %r14, -32
.Ltmp19:
	.cfi_offset %r15, -24
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	%ecx, -76(%rbp)
	movl	%r8d, -80(%rbp)
	movl	%r9d, -84(%rbp)
	movl	%r10d, -88(%rbp)
	movl	%eax, -92(%rbp)
	movl	$1, -136(%rbp)
# BB#1:                                 # %do.body
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -156(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-144(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -156(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -156(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_edit_paste, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB4_89
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	cmpq	$0, -64(%rbp)
	je	.LBB4_22
# BB#14:                                # %lor.lhs.false
	movq	-64(%rbp), %rax
	movq	%rax, -168(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -176(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB4_16
# BB#15:                                # %if.then.21
	movl	$0, -180(%rbp)
	jmp	.LBB4_21
.LBB4_16:                               # %if.else.22
	movq	-168(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_19
# BB#17:                                # %land.lhs.true.25
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-176(%rbp), %rax
	jne	.LBB4_19
# BB#18:                                # %if.then.29
	movl	$1, -180(%rbp)
	jmp	.LBB4_20
.LBB4_19:                               # %if.else.30
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -180(%rbp)
.LBB4_20:                               # %if.end.32
	jmp	.LBB4_21
.LBB4_21:                               # %if.end.33
	movl	-180(%rbp), %eax
	movl	%eax, -184(%rbp)
	cmpl	$0, -184(%rbp)
	je	.LBB4_23
.LBB4_22:                               # %if.then.36
	jmp	.LBB4_24
.LBB4_23:                               # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_edit_paste, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB4_89
.LBB4_24:                               # %if.end.38
	jmp	.LBB4_25
.LBB4_25:                               # %do.end.39
	jmp	.LBB4_26
.LBB4_26:                               # %do.body.40
	cmpq	$0, -64(%rbp)
	je	.LBB4_28
# BB#27:                                # %lor.lhs.false.42
	movq	-64(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB4_29
.LBB4_28:                               # %if.then.47
	jmp	.LBB4_30
.LBB4_29:                               # %if.else.48
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_edit_paste, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB4_89
.LBB4_30:                               # %if.end.49
	jmp	.LBB4_31
.LBB4_31:                               # %do.end.50
	jmp	.LBB4_32
.LBB4_32:                               # %do.body.51
	movq	-72(%rbp), %rax
	movq	%rax, -192(%rbp)
	callq	gimp_buffer_get_type
	movq	%rax, -200(%rbp)
	cmpq	$0, -192(%rbp)
	jne	.LBB4_34
# BB#33:                                # %if.then.60
	movl	$0, -204(%rbp)
	jmp	.LBB4_39
.LBB4_34:                               # %if.else.61
	movq	-192(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_37
# BB#35:                                # %land.lhs.true.64
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-200(%rbp), %rax
	jne	.LBB4_37
# BB#36:                                # %if.then.68
	movl	$1, -204(%rbp)
	jmp	.LBB4_38
.LBB4_37:                               # %if.else.69
	movq	-192(%rbp), %rdi
	movq	-200(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -204(%rbp)
.LBB4_38:                               # %if.end.71
	jmp	.LBB4_39
.LBB4_39:                               # %if.end.72
	movl	-204(%rbp), %eax
	movl	%eax, -208(%rbp)
	cmpl	$0, -208(%rbp)
	je	.LBB4_41
# BB#40:                                # %if.then.75
	jmp	.LBB4_42
.LBB4_41:                               # %if.else.76
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_edit_paste, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB4_89
.LBB4_42:                               # %if.end.77
	jmp	.LBB4_43
.LBB4_43:                               # %do.end.78
	cmpq	$0, -64(%rbp)
	je	.LBB4_45
# BB#44:                                # %if.then.80
	movq	-64(%rbp), %rdi
	callq	gimp_drawable_type_with_alpha
	movl	%eax, -108(%rbp)
	jmp	.LBB4_46
.LBB4_45:                               # %if.else.82
	movq	-56(%rbp), %rdi
	callq	gimp_image_base_type_with_alpha
	movl	%eax, -108(%rbp)
.LBB4_46:                               # %if.end.84
	movabsq	$.L.str.9, %rdi
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	-56(%rbp), %rsi
	movl	-108(%rbp), %edx
	movl	%edx, -268(%rbp)        # 4-byte Spill
	movq	%rax, -280(%rbp)        # 8-byte Spill
	movq	%rsi, -288(%rbp)        # 8-byte Spill
	callq	gettext
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%r8d, %r8d
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	-288(%rbp), %rsi        # 8-byte Reload
	movl	-268(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	callq	gimp_layer_new_from_tiles
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB4_48
# BB#47:                                # %if.then.88
	movq	$0, -48(%rbp)
	jmp	.LBB4_89
.LBB4_48:                               # %if.end.89
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_width
	movl	%eax, -112(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_height
	movl	%eax, -116(%rbp)
	movq	-104(%rbp), %rdi
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	%eax, -120(%rbp)
	movq	-104(%rbp), %rsi
	movq	%rsi, -304(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	%eax, -124(%rbp)
	movl	-88(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jne	.LBB4_51
# BB#49:                                # %land.lhs.true.99
	movl	-92(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jne	.LBB4_51
# BB#50:                                # %if.then.101
	movl	$0, -80(%rbp)
	movl	$0, -84(%rbp)
	movl	$0, -88(%rbp)
	movl	$0, -92(%rbp)
.LBB4_51:                               # %if.end.102
	cmpq	$0, -64(%rbp)
	je	.LBB4_61
# BB#52:                                # %if.then.104
	movq	-64(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-212(%rbp), %rsi
	leaq	-216(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movq	-64(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-220(%rbp), %rsi
	leaq	-224(%rbp), %rdx
	leaq	-228(%rbp), %rcx
	leaq	-232(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_item_mask_bounds
	movl	%eax, -252(%rbp)
	cmpl	$0, -252(%rbp)
	jne	.LBB4_59
# BB#53:                                # %land.lhs.true.122
	cmpl	$0, -88(%rbp)
	jle	.LBB4_59
# BB#54:                                # %land.lhs.true.124
	cmpl	$0, -92(%rbp)
	jle	.LBB4_59
# BB#55:                                # %land.lhs.true.126
	movl	-120(%rbp), %eax
	movl	-228(%rbp), %ecx
	subl	-220(%rbp), %ecx
	cmpl	%ecx, %eax
	jl	.LBB4_57
# BB#56:                                # %lor.lhs.false.128
	movl	-124(%rbp), %eax
	movl	-232(%rbp), %ecx
	subl	-224(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_59
.LBB4_57:                               # %land.lhs.true.131
	leaq	-236(%rbp), %rax
	leaq	-240(%rbp), %rcx
	leaq	-244(%rbp), %rdx
	leaq	-248(%rbp), %rsi
	movl	-80(%rbp), %edi
	movl	-84(%rbp), %r8d
	movl	-88(%rbp), %r9d
	movl	-92(%rbp), %r10d
	movl	-212(%rbp), %r11d
	movl	-216(%rbp), %ebx
	movl	-228(%rbp), %r14d
	subl	-220(%rbp), %r14d
	movl	-232(%rbp), %r15d
	subl	-224(%rbp), %r15d
	movq	%rsi, -328(%rbp)        # 8-byte Spill
	movl	%r8d, %esi
	movq	%rdx, -336(%rbp)        # 8-byte Spill
	movl	%r9d, %edx
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r11d, %r8d
	movl	%ebx, %r9d
	movl	%r14d, (%rsp)
	movl	%r15d, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	-344(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	movq	-336(%rbp), %r12        # 8-byte Reload
	movq	%r12, 32(%rsp)
	movq	-328(%rbp), %r13        # 8-byte Reload
	movq	%r13, 40(%rsp)
	callq	gimp_rectangle_intersect
	cmpl	$0, %eax
	je	.LBB4_59
# BB#58:                                # %if.then.136
	movl	$2, %eax
	movl	-236(%rbp), %ecx
	movl	-244(%rbp), %edx
	subl	-120(%rbp), %edx
	movl	%eax, -348(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-348(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	movl	%ecx, -128(%rbp)
	movl	-240(%rbp), %eax
	movl	-248(%rbp), %ecx
	subl	-124(%rbp), %ecx
	movl	%eax, -352(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	%esi
	movl	-352(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -132(%rbp)
	jmp	.LBB4_60
.LBB4_59:                               # %if.else.141
	movl	$2, %eax
	movl	-212(%rbp), %ecx
	movl	-220(%rbp), %edx
	addl	-228(%rbp), %edx
	subl	-120(%rbp), %edx
	movl	%eax, -356(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-356(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	movl	%ecx, -128(%rbp)
	movl	-216(%rbp), %eax
	movl	-224(%rbp), %ecx
	addl	-232(%rbp), %ecx
	subl	-124(%rbp), %ecx
	movl	%eax, -360(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	%esi
	movl	-360(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -132(%rbp)
	movl	$0, -136(%rbp)
.LBB4_60:                               # %if.end.150
	jmp	.LBB4_68
.LBB4_61:                               # %if.else.151
	cmpl	$0, -88(%rbp)
	jle	.LBB4_66
# BB#62:                                # %land.lhs.true.153
	cmpl	$0, -92(%rbp)
	jle	.LBB4_66
# BB#63:                                # %land.lhs.true.155
	movl	-120(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jl	.LBB4_65
# BB#64:                                # %lor.lhs.false.157
	movl	-124(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jge	.LBB4_66
.LBB4_65:                               # %if.then.159
	movl	$2, %eax
	movl	-80(%rbp), %ecx
	movl	-88(%rbp), %edx
	subl	-120(%rbp), %edx
	movl	%eax, -364(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-364(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	movl	%ecx, -128(%rbp)
	movl	-84(%rbp), %eax
	movl	-92(%rbp), %ecx
	subl	-124(%rbp), %ecx
	movl	%eax, -368(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	%esi
	movl	-368(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -132(%rbp)
	jmp	.LBB4_67
.LBB4_66:                               # %if.else.166
	movl	$2, %eax
	movl	-112(%rbp), %ecx
	subl	-120(%rbp), %ecx
	movl	%eax, -372(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-372(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -128(%rbp)
	movl	-116(%rbp), %eax
	subl	-124(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -132(%rbp)
	movl	$0, -136(%rbp)
.LBB4_67:                               # %if.end.171
	jmp	.LBB4_68
.LBB4_68:                               # %if.end.172
	cmpl	$0, -136(%rbp)
	je	.LBB4_82
# BB#69:                                # %if.then.174
	movl	-128(%rbp), %eax
	movl	-112(%rbp), %ecx
	subl	-120(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_71
# BB#70:                                # %cond.true
	movl	-128(%rbp), %eax
	movl	%eax, -376(%rbp)        # 4-byte Spill
	jmp	.LBB4_72
.LBB4_71:                               # %cond.false
	movl	-112(%rbp), %eax
	subl	-120(%rbp), %eax
	movl	%eax, -376(%rbp)        # 4-byte Spill
.LBB4_72:                               # %cond.end
	movl	-376(%rbp), %eax        # 4-byte Reload
	movl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	movl	-116(%rbp), %ecx
	subl	-124(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_74
# BB#73:                                # %cond.true.180
	movl	-132(%rbp), %eax
	movl	%eax, -380(%rbp)        # 4-byte Spill
	jmp	.LBB4_75
.LBB4_74:                               # %cond.false.181
	movl	-116(%rbp), %eax
	subl	-124(%rbp), %eax
	movl	%eax, -380(%rbp)        # 4-byte Spill
.LBB4_75:                               # %cond.end.183
	movl	-380(%rbp), %eax        # 4-byte Reload
	movl	%eax, -132(%rbp)
	cmpl	$0, -128(%rbp)
	jle	.LBB4_77
# BB#76:                                # %cond.true.186
	movl	-128(%rbp), %eax
	movl	%eax, -384(%rbp)        # 4-byte Spill
	jmp	.LBB4_78
.LBB4_77:                               # %cond.false.187
	xorl	%eax, %eax
	movl	%eax, -384(%rbp)        # 4-byte Spill
	jmp	.LBB4_78
.LBB4_78:                               # %cond.end.188
	movl	-384(%rbp), %eax        # 4-byte Reload
	movl	%eax, -128(%rbp)
	cmpl	$0, -132(%rbp)
	jle	.LBB4_80
# BB#79:                                # %cond.true.191
	movl	-132(%rbp), %eax
	movl	%eax, -388(%rbp)        # 4-byte Spill
	jmp	.LBB4_81
.LBB4_80:                               # %cond.false.192
	xorl	%eax, %eax
	movl	%eax, -388(%rbp)        # 4-byte Spill
	jmp	.LBB4_81
.LBB4_81:                               # %cond.end.193
	movl	-388(%rbp), %eax        # 4-byte Reload
	movl	%eax, -132(%rbp)
.LBB4_82:                               # %if.end.195
	movq	-104(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-128(%rbp), %esi
	movl	-132(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_item_set_offset
	xorl	%edx, %edx
	movl	%edx, %edi
	movabsq	$.L.str.10, %rsi
	movl	$10, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-56(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movl	$29, %esi
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	movq	-56(%rbp), %rdi
	movl	%eax, -412(%rbp)        # 4-byte Spill
	callq	gimp_image_get_mask
	movq	%rax, %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	jne	.LBB4_85
# BB#83:                                # %land.lhs.true.203
	cmpl	$0, -76(%rbp)
	jne	.LBB4_85
# BB#84:                                # %if.then.205
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_mask
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	gimp_channel_clear
.LBB4_85:                               # %if.end.207
	cmpq	$0, -64(%rbp)
	je	.LBB4_87
# BB#86:                                # %if.then.209
	movq	-104(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	floating_sel_attach
	jmp	.LBB4_88
.LBB4_87:                               # %if.else.210
	xorl	%eax, %eax
	movl	%eax, %edx
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	-56(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	gimp_image_add_layer
	movl	%eax, -416(%rbp)        # 4-byte Spill
.LBB4_88:                               # %if.end.212
	movq	-56(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movq	-104(%rbp), %rdi
	movq	%rdi, -48(%rbp)
	movl	%eax, -420(%rbp)        # 4-byte Spill
.LBB4_89:                               # %return
	movq	-48(%rbp), %rax
	addq	$440, %rsp              # imm = 0x1B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_edit_paste, .Lfunc_end4-gimp_edit_paste
	.cfi_endproc

	.globl	gimp_edit_named_cut
	.align	16, 0x90
	.type	gimp_edit_named_cut,@function
gimp_edit_named_cut:                    # @gimp_edit_named_cut
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
	subq	$192, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_edit_named_cut, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_55
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB5_15
# BB#14:                                # %if.then.13
	jmp	.LBB5_16
.LBB5_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_edit_named_cut, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_55
.LBB5_16:                               # %if.end.15
	jmp	.LBB5_17
.LBB5_17:                               # %do.end.16
	jmp	.LBB5_18
.LBB5_18:                               # %do.body.17
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB5_20
# BB#19:                                # %if.then.26
	movl	$0, -100(%rbp)
	jmp	.LBB5_25
.LBB5_20:                               # %if.else.27
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_23
# BB#21:                                # %land.lhs.true.30
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB5_23
# BB#22:                                # %if.then.34
	movl	$1, -100(%rbp)
	jmp	.LBB5_24
.LBB5_23:                               # %if.else.35
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB5_24:                               # %if.end.37
	jmp	.LBB5_25
.LBB5_25:                               # %if.end.38
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB5_27
# BB#26:                                # %if.then.41
	jmp	.LBB5_28
.LBB5_27:                               # %if.else.42
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_edit_named_cut, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_55
.LBB5_28:                               # %if.end.43
	jmp	.LBB5_29
.LBB5_29:                               # %do.end.44
	jmp	.LBB5_30
.LBB5_30:                               # %do.body.45
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB5_32
# BB#31:                                # %if.then.50
	jmp	.LBB5_33
.LBB5_32:                               # %if.else.51
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_edit_named_cut, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_55
.LBB5_33:                               # %if.end.52
	jmp	.LBB5_34
.LBB5_34:                               # %do.end.53
	jmp	.LBB5_35
.LBB5_35:                               # %do.body.54
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB5_37
# BB#36:                                # %if.then.63
	movl	$0, -124(%rbp)
	jmp	.LBB5_42
.LBB5_37:                               # %if.else.64
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_40
# BB#38:                                # %land.lhs.true.67
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB5_40
# BB#39:                                # %if.then.71
	movl	$1, -124(%rbp)
	jmp	.LBB5_41
.LBB5_40:                               # %if.else.72
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB5_41:                               # %if.end.74
	jmp	.LBB5_42
.LBB5_42:                               # %if.end.75
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB5_44
# BB#43:                                # %if.then.78
	jmp	.LBB5_45
.LBB5_44:                               # %if.else.79
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_edit_named_cut, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_55
.LBB5_45:                               # %if.end.80
	jmp	.LBB5_46
.LBB5_46:                               # %do.end.81
	jmp	.LBB5_47
.LBB5_47:                               # %do.body.82
	cmpq	$0, -48(%rbp)
	je	.LBB5_49
# BB#48:                                # %lor.lhs.false
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB5_50
.LBB5_49:                               # %if.then.85
	jmp	.LBB5_51
.LBB5_50:                               # %if.else.86
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_edit_named_cut, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_55
.LBB5_51:                               # %if.end.87
	jmp	.LBB5_52
.LBB5_52:                               # %do.end.88
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %r8
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_edit_extract
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB5_54
# BB#53:                                # %if.then.93
	movq	-56(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_name
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	448(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_add
	movq	-56(%rbp), %rsi
	movq	%rsi, %rdi
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	g_object_unref
	movq	-56(%rbp), %rsi
	movq	%rsi, %rdi
	callq	gimp_object_get_name
	movq	%rax, -8(%rbp)
	jmp	.LBB5_55
.LBB5_54:                               # %if.end.100
	movq	$0, -8(%rbp)
.LBB5_55:                               # %return
	movq	-8(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_edit_named_cut, .Lfunc_end5-gimp_edit_named_cut
	.cfi_endproc

	.globl	gimp_edit_named_copy
	.align	16, 0x90
	.type	gimp_edit_named_copy,@function
gimp_edit_named_copy:                   # @gimp_edit_named_copy
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
	subq	$192, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_edit_named_copy, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_55
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB6_15
# BB#14:                                # %if.then.13
	jmp	.LBB6_16
.LBB6_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_edit_named_copy, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_55
.LBB6_16:                               # %if.end.15
	jmp	.LBB6_17
.LBB6_17:                               # %do.end.16
	jmp	.LBB6_18
.LBB6_18:                               # %do.body.17
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB6_20
# BB#19:                                # %if.then.26
	movl	$0, -100(%rbp)
	jmp	.LBB6_25
.LBB6_20:                               # %if.else.27
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_23
# BB#21:                                # %land.lhs.true.30
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB6_23
# BB#22:                                # %if.then.34
	movl	$1, -100(%rbp)
	jmp	.LBB6_24
.LBB6_23:                               # %if.else.35
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB6_24:                               # %if.end.37
	jmp	.LBB6_25
.LBB6_25:                               # %if.end.38
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB6_27
# BB#26:                                # %if.then.41
	jmp	.LBB6_28
.LBB6_27:                               # %if.else.42
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_edit_named_copy, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_55
.LBB6_28:                               # %if.end.43
	jmp	.LBB6_29
.LBB6_29:                               # %do.end.44
	jmp	.LBB6_30
.LBB6_30:                               # %do.body.45
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB6_32
# BB#31:                                # %if.then.50
	jmp	.LBB6_33
.LBB6_32:                               # %if.else.51
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_edit_named_copy, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_55
.LBB6_33:                               # %if.end.52
	jmp	.LBB6_34
.LBB6_34:                               # %do.end.53
	jmp	.LBB6_35
.LBB6_35:                               # %do.body.54
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB6_37
# BB#36:                                # %if.then.63
	movl	$0, -124(%rbp)
	jmp	.LBB6_42
.LBB6_37:                               # %if.else.64
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_40
# BB#38:                                # %land.lhs.true.67
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB6_40
# BB#39:                                # %if.then.71
	movl	$1, -124(%rbp)
	jmp	.LBB6_41
.LBB6_40:                               # %if.else.72
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB6_41:                               # %if.end.74
	jmp	.LBB6_42
.LBB6_42:                               # %if.end.75
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB6_44
# BB#43:                                # %if.then.78
	jmp	.LBB6_45
.LBB6_44:                               # %if.else.79
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_edit_named_copy, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_55
.LBB6_45:                               # %if.end.80
	jmp	.LBB6_46
.LBB6_46:                               # %do.end.81
	jmp	.LBB6_47
.LBB6_47:                               # %do.body.82
	cmpq	$0, -48(%rbp)
	je	.LBB6_49
# BB#48:                                # %lor.lhs.false
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB6_50
.LBB6_49:                               # %if.then.85
	jmp	.LBB6_51
.LBB6_50:                               # %if.else.86
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_edit_named_copy, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_55
.LBB6_51:                               # %if.end.87
	jmp	.LBB6_52
.LBB6_52:                               # %do.end.88
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %r8
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_edit_extract
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB6_54
# BB#53:                                # %if.then.93
	movq	-56(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_name
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	448(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_add
	movq	-56(%rbp), %rsi
	movq	%rsi, %rdi
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	g_object_unref
	movq	-56(%rbp), %rsi
	movq	%rsi, %rdi
	callq	gimp_object_get_name
	movq	%rax, -8(%rbp)
	jmp	.LBB6_55
.LBB6_54:                               # %if.end.100
	movq	$0, -8(%rbp)
.LBB6_55:                               # %return
	movq	-8(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_edit_named_copy, .Lfunc_end6-gimp_edit_named_copy
	.cfi_endproc

	.globl	gimp_edit_named_copy_visible
	.align	16, 0x90
	.type	gimp_edit_named_copy_visible,@function
gimp_edit_named_copy_visible:           # @gimp_edit_named_copy_visible
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
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_edit_named_copy_visible, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_38
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB7_15
# BB#14:                                # %if.then.13
	jmp	.LBB7_16
.LBB7_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_edit_named_copy_visible, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_38
.LBB7_16:                               # %if.end.15
	jmp	.LBB7_17
.LBB7_17:                               # %do.end.16
	jmp	.LBB7_18
.LBB7_18:                               # %do.body.17
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB7_20
# BB#19:                                # %if.then.26
	movl	$0, -100(%rbp)
	jmp	.LBB7_25
.LBB7_20:                               # %if.else.27
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_23
# BB#21:                                # %land.lhs.true.30
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB7_23
# BB#22:                                # %if.then.34
	movl	$1, -100(%rbp)
	jmp	.LBB7_24
.LBB7_23:                               # %if.else.35
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB7_24:                               # %if.end.37
	jmp	.LBB7_25
.LBB7_25:                               # %if.end.38
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB7_27
# BB#26:                                # %if.then.41
	jmp	.LBB7_28
.LBB7_27:                               # %if.else.42
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_edit_named_copy_visible, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_38
.LBB7_28:                               # %if.end.43
	jmp	.LBB7_29
.LBB7_29:                               # %do.end.44
	jmp	.LBB7_30
.LBB7_30:                               # %do.body.45
	cmpq	$0, -40(%rbp)
	je	.LBB7_32
# BB#31:                                # %lor.lhs.false
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB7_33
.LBB7_32:                               # %if.then.48
	jmp	.LBB7_34
.LBB7_33:                               # %if.else.49
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_edit_named_copy_visible, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_38
.LBB7_34:                               # %if.end.50
	jmp	.LBB7_35
.LBB7_35:                               # %do.end.51
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_projection
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %r8
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_edit_extract
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB7_37
# BB#36:                                # %if.then.57
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_name
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	448(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_add
	movq	-56(%rbp), %rsi
	movq	%rsi, %rdi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	g_object_unref
	movq	-56(%rbp), %rsi
	movq	%rsi, %rdi
	callq	gimp_object_get_name
	movq	%rax, -8(%rbp)
	jmp	.LBB7_38
.LBB7_37:                               # %if.end.64
	movq	$0, -8(%rbp)
.LBB7_38:                               # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_edit_named_copy_visible, .Lfunc_end7-gimp_edit_named_copy_visible
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_edit_clear
	.align	16, 0x90
	.type	gimp_edit_clear,@function
gimp_edit_clear:                        # @gimp_edit_clear
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_edit_clear, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB8_42
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB8_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB8_20
.LBB8_15:                               # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB8_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB8_19
.LBB8_18:                               # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB8_19:                               # %if.end.31
	jmp	.LBB8_20
.LBB8_20:                               # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB8_22
# BB#21:                                # %if.then.35
	jmp	.LBB8_23
.LBB8_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_edit_clear, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB8_42
.LBB8_23:                               # %if.end.37
	jmp	.LBB8_24
.LBB8_24:                               # %do.end.38
	jmp	.LBB8_25
.LBB8_25:                               # %do.body.39
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB8_27
# BB#26:                                # %if.then.44
	jmp	.LBB8_28
.LBB8_27:                               # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_edit_clear, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB8_42
.LBB8_28:                               # %if.end.46
	jmp	.LBB8_29
.LBB8_29:                               # %do.end.47
	jmp	.LBB8_30
.LBB8_30:                               # %do.body.48
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB8_32
# BB#31:                                # %if.then.57
	movl	$0, -100(%rbp)
	jmp	.LBB8_37
.LBB8_32:                               # %if.else.58
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_35
# BB#33:                                # %land.lhs.true.61
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB8_35
# BB#34:                                # %if.then.65
	movl	$1, -100(%rbp)
	jmp	.LBB8_36
.LBB8_35:                               # %if.else.66
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB8_36:                               # %if.end.68
	jmp	.LBB8_37
.LBB8_37:                               # %if.end.69
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB8_39
# BB#38:                                # %if.then.72
	jmp	.LBB8_40
.LBB8_39:                               # %if.else.73
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_edit_clear, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB8_42
.LBB8_40:                               # %if.end.74
	jmp	.LBB8_41
.LBB8_41:                               # %do.end.75
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.12, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %r8
	movq	-32(%rbp), %r9
	movq	%r9, -120(%rbp)         # 8-byte Spill
	movq	%r8, -128(%rbp)         # 8-byte Spill
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movl	$3, %ecx
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movl	$23, %r8d
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %r9
	callq	gimp_edit_fill_internal
	movl	%eax, -4(%rbp)
.LBB8_42:                               # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_edit_clear, .Lfunc_end8-gimp_edit_clear
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_edit_fill_internal,@function
gimp_edit_fill_internal:                # @gimp_edit_fill_internal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movsd	%xmm0, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movq	%r9, -64(%rbp)
	movq	$0, -176(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-140(%rbp), %rsi
	leaq	-144(%rbp), %rdx
	leaq	-148(%rbp), %rcx
	leaq	-152(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_item_mask_intersect
	cmpl	$0, %eax
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB9_20
.LBB9_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_type
	movl	%eax, -156(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_bytes
	movl	%eax, -160(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	movq	%rdi, %rcx
	subq	$5, %rcx
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	ja	.LBB9_12
# BB#21:                                # %if.end
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	.LJTI9_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB9_3:                                # %sw.bb
	leaq	-164(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-156(%rbp), %edx
	callq	gimp_image_get_foreground
	jmp	.LBB9_12
.LBB9_4:                                # %sw.bb.5
	leaq	-164(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-156(%rbp), %edx
	callq	gimp_image_get_background
	jmp	.LBB9_12
.LBB9_5:                                # %sw.bb.7
	xorl	%ecx, %ecx
	leaq	-184(%rbp), %r8
	leaq	-164(%rbp), %rdx
	movb	$-1, -184(%rbp)
	movb	$-1, -183(%rbp)
	movb	$-1, -182(%rbp)
	movq	-16(%rbp), %rdi
	movl	-156(%rbp), %esi
	callq	gimp_image_transform_color
	jmp	.LBB9_12
.LBB9_6:                                # %sw.bb.12
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_pattern
	leaq	-180(%rbp), %rcx
	movq	%rax, -192(%rbp)
	movq	-16(%rbp), %rdi
	movl	-156(%rbp), %esi
	movq	-192(%rbp), %rax
	movq	32(%rax), %rdx
	callq	gimp_image_transform_temp_buf
	movq	%rax, -176(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	jne	.LBB9_10
# BB#7:                                 # %land.lhs.true
	movq	-176(%rbp), %rax
	cmpl	$2, (%rax)
	je	.LBB9_9
# BB#8:                                 # %lor.lhs.false
	movq	-176(%rbp), %rax
	cmpl	$4, (%rax)
	jne	.LBB9_10
.LBB9_9:                                # %if.then.19
	movl	-160(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -160(%rbp)
.LBB9_10:                               # %if.end.20
	jmp	.LBB9_12
.LBB9_11:                               # %sw.bb.21
	movl	$1, -4(%rbp)
	jmp	.LBB9_20
.LBB9_12:                               # %sw.epilog
	movl	-148(%rbp), %edi
	movl	-152(%rbp), %esi
	movl	-160(%rbp), %edx
	callq	tile_manager_new
	leaq	-136(%rbp), %rdi
	xorl	%edx, %edx
	movl	$1, %esi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	-148(%rbp), %r8d
	movl	-152(%rbp), %r9d
	movl	%esi, -220(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	%edx, -224(%rbp)        # 4-byte Spill
	movl	-224(%rbp), %ecx        # 4-byte Reload
	movl	$1, (%rsp)
	callq	pixel_region_init
	cmpq	$0, -176(%rbp)
	je	.LBB9_16
# BB#13:                                # %if.then.24
	leaq	-136(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	xorl	%eax, %eax
	movq	-176(%rbp), %rdx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	pattern_region
	cmpl	$0, -180(%rbp)
	je	.LBB9_15
# BB#14:                                # %if.then.26
	movq	-176(%rbp), %rdi
	callq	temp_buf_free
.LBB9_15:                               # %if.end.27
	jmp	.LBB9_19
.LBB9_16:                               # %if.else
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB9_18
# BB#17:                                # %if.then.30
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_bytes
	subl	$1, %eax
	movslq	%eax, %rdi
	movb	$-1, -164(%rbp,%rdi)
.LBB9_18:                               # %if.end.33
	leaq	-136(%rbp), %rdi
	leaq	-164(%rbp), %rsi
	callq	color_region
.LBB9_19:                               # %if.end.35
	leaq	-136(%rbp), %rdi
	xorl	%eax, %eax
	movq	-72(%rbp), %rsi
	movl	-148(%rbp), %r8d
	movl	-152(%rbp), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	$0, (%rsp)
	callq	pixel_region_init
	leaq	-136(%rbp), %rsi
	movl	$1, %edx
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-52(%rbp), %r8d
	movl	-140(%rbp), %eax
	movl	-144(%rbp), %r10d
	movq	$0, (%rsp)
	movl	%eax, 8(%rsp)
	movl	%r10d, 16(%rsp)
	callq	gimp_drawable_apply_region
	movq	-72(%rbp), %rdi
	callq	tile_manager_unref
	movq	-24(%rbp), %rdi
	movl	-140(%rbp), %esi
	movl	-144(%rbp), %edx
	movl	-148(%rbp), %ecx
	movl	-152(%rbp), %r8d
	callq	gimp_drawable_update
	movl	$1, -4(%rbp)
.LBB9_20:                               # %return
	movl	-4(%rbp), %eax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_edit_fill_internal, .Lfunc_end9-gimp_edit_fill_internal
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI9_0:
	.quad	.LBB9_3
	.quad	.LBB9_4
	.quad	.LBB9_5
	.quad	.LBB9_4
	.quad	.LBB9_6
	.quad	.LBB9_11

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_edit_fill
	.align	16, 0x90
	.type	gimp_edit_fill,@function
gimp_edit_fill:                         # @gimp_edit_fill
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp37:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_edit_fill, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB10_50
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	jmp	.LBB10_13
.LBB10_13:                              # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB10_15
# BB#14:                                # %if.then.20
	movl	$0, -92(%rbp)
	jmp	.LBB10_20
.LBB10_15:                              # %if.else.21
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_18
# BB#16:                                # %land.lhs.true.24
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB10_18
# BB#17:                                # %if.then.28
	movl	$1, -92(%rbp)
	jmp	.LBB10_19
.LBB10_18:                              # %if.else.29
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB10_19:                              # %if.end.31
	jmp	.LBB10_20
.LBB10_20:                              # %if.end.32
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB10_22
# BB#21:                                # %if.then.35
	jmp	.LBB10_23
.LBB10_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_edit_fill, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB10_50
.LBB10_23:                              # %if.end.37
	jmp	.LBB10_24
.LBB10_24:                              # %do.end.38
	jmp	.LBB10_25
.LBB10_25:                              # %do.body.39
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB10_27
# BB#26:                                # %if.then.44
	jmp	.LBB10_28
.LBB10_27:                              # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_edit_fill, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB10_50
.LBB10_28:                              # %if.end.46
	jmp	.LBB10_29
.LBB10_29:                              # %do.end.47
	jmp	.LBB10_30
.LBB10_30:                              # %do.body.48
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB10_32
# BB#31:                                # %if.then.57
	movl	$0, -116(%rbp)
	jmp	.LBB10_37
.LBB10_32:                              # %if.else.58
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_35
# BB#33:                                # %land.lhs.true.61
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB10_35
# BB#34:                                # %if.then.65
	movl	$1, -116(%rbp)
	jmp	.LBB10_36
.LBB10_35:                              # %if.else.66
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB10_36:                              # %if.end.68
	jmp	.LBB10_37
.LBB10_37:                              # %if.end.69
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB10_39
# BB#38:                                # %if.then.72
	jmp	.LBB10_40
.LBB10_39:                              # %if.else.73
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_edit_fill, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB10_50
.LBB10_40:                              # %if.end.74
	jmp	.LBB10_41
.LBB10_41:                              # %do.end.75
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$5, %rdx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	ja	.LBB10_48
# BB#51:                                # %do.end.75
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	.LJTI10_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB10_42:                              # %sw.bb
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.13, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	callq	g_dpgettext
	movq	%rax, -48(%rbp)
	jmp	.LBB10_49
.LBB10_43:                              # %sw.bb.77
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.14, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	callq	g_dpgettext
	movq	%rax, -48(%rbp)
	jmp	.LBB10_49
.LBB10_44:                              # %sw.bb.79
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.15, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	callq	g_dpgettext
	movq	%rax, -48(%rbp)
	jmp	.LBB10_49
.LBB10_45:                              # %sw.bb.81
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.16, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	callq	g_dpgettext
	movq	%rax, -48(%rbp)
	jmp	.LBB10_49
.LBB10_46:                              # %sw.bb.83
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.17, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	callq	g_dpgettext
	movq	%rax, -48(%rbp)
	jmp	.LBB10_49
.LBB10_47:                              # %sw.bb.85
	movl	$1, -4(%rbp)
	jmp	.LBB10_50
.LBB10_48:                              # %sw.default
	movabsq	$.L.str.18, %rdi
	movabsq	$.L__func__.gimp_edit_fill, %rsi
	movb	$0, %al
	callq	g_warning
	movl	$1, %ecx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	gimp_edit_fill
	movl	%eax, -4(%rbp)
	jmp	.LBB10_50
.LBB10_49:                              # %sw.epilog
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	movq	-48(%rbp), %r9
	callq	gimp_edit_fill_internal
	movl	%eax, -4(%rbp)
.LBB10_50:                              # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_edit_fill, .Lfunc_end10-gimp_edit_fill
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI10_0:
	.quad	.LBB10_42
	.quad	.LBB10_43
	.quad	.LBB10_44
	.quad	.LBB10_45
	.quad	.LBB10_46
	.quad	.LBB10_47

	.text
	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB11_2
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
.LBB11_2:                               # %entry
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
	movl	$.L.str, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end11:
	.size	g_warning, .Lfunc_end11-g_warning
	.cfi_endproc

	.globl	gimp_edit_fade
	.align	16, 0x90
	.type	gimp_edit_fade,@function
gimp_edit_fade:                         # @gimp_edit_fade
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_edit_fade, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB12_28
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	jmp	.LBB12_13
.LBB12_13:                              # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB12_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB12_20
.LBB12_15:                              # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB12_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB12_19
.LBB12_18:                              # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB12_19:                              # %if.end.31
	jmp	.LBB12_20
.LBB12_20:                              # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB12_22
# BB#21:                                # %if.then.35
	jmp	.LBB12_23
.LBB12_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_edit_fade, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB12_28
.LBB12_23:                              # %if.end.37
	jmp	.LBB12_24
.LBB12_24:                              # %do.end.38
	movq	-16(%rbp), %rdi
	callq	gimp_image_undo_get_fadeable
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_drawable_undo_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB12_27
# BB#25:                                # %land.lhs.true.43
	movq	-32(%rbp), %rax
	cmpq	$0, 112(%rax)
	je	.LBB12_27
# BB#26:                                # %if.then.45
	movq	-32(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_item_undo_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	72(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -88(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-32(%rbp), %rsi
	movq	112(%rsi), %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	tile_manager_ref
	movq	%rax, -96(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_undo
	leaq	-160(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-96(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	100(%rdx), %r8d
	movq	-32(%rbp), %rdx
	movl	104(%rdx), %r9d
	movl	%ecx, %edx
	movl	$0, (%rsp)
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	pixel_region_init
	movq	-88(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	callq	gimp_object_get_name
	movq	-24(%rbp), %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_context_get_opacity
	movq	-24(%rbp), %rdi
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	callq	gimp_context_get_paint_mode
	leaq	-160(%rbp), %rsi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	movq	-32(%rbp), %rdi
	movl	92(%rdi), %ecx
	movq	-32(%rbp), %rdi
	movl	96(%rdi), %r8d
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	-216(%rbp), %r10        # 8-byte Reload
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	movq	%r10, %rcx
	movsd	-224(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	%r8d, -232(%rbp)        # 4-byte Spill
	movl	%eax, %r8d
	movq	$0, (%rsp)
	movl	-228(%rbp), %eax        # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	-232(%rbp), %eax        # 4-byte Reload
	movl	%eax, 16(%rsp)
	callq	gimp_drawable_apply_region
	movq	-96(%rbp), %rdi
	callq	tile_manager_unref
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
	movl	$1, -4(%rbp)
	jmp	.LBB12_28
.LBB12_27:                              # %if.end.61
	movl	$0, -4(%rbp)
.LBB12_28:                              # %return
	movl	-4(%rbp), %eax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_edit_fade, .Lfunc_end12-gimp_edit_fade
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_edit_cut,@object # @__func__.gimp_edit_cut
.L__func__.gimp_edit_cut:
	.asciz	"gimp_edit_cut"
	.size	.L__func__.gimp_edit_cut, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_DRAWABLE (drawable)"
	.size	.L.str.2, 28

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp_item_is_attached (GIMP_ITEM (drawable))"
	.size	.L.str.3, 45

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.4, 26

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.5, 32

	.type	.L__func__.gimp_edit_copy,@object # @__func__.gimp_edit_copy
.L__func__.gimp_edit_copy:
	.asciz	"gimp_edit_copy"
	.size	.L__func__.gimp_edit_copy, 15

	.type	.L__func__.gimp_edit_copy_visible,@object # @__func__.gimp_edit_copy_visible
.L__func__.gimp_edit_copy_visible:
	.asciz	"gimp_edit_copy_visible"
	.size	.L__func__.gimp_edit_copy_visible, 23

	.type	.L__func__.gimp_edit_paste,@object # @__func__.gimp_edit_paste
.L__func__.gimp_edit_paste:
	.asciz	"gimp_edit_paste"
	.size	.L__func__.gimp_edit_paste, 16

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"drawable == NULL || GIMP_IS_DRAWABLE (drawable)"
	.size	.L.str.6, 48

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"drawable == NULL || gimp_item_is_attached (GIMP_ITEM (drawable))"
	.size	.L.str.7, 65

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_IS_BUFFER (paste)"
	.size	.L.str.8, 23

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Pasted Layer"
	.size	.L.str.9, 13

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"undo-type\004Paste"
	.size	.L.str.10, 16

	.type	.L__func__.gimp_edit_named_cut,@object # @__func__.gimp_edit_named_cut
.L__func__.gimp_edit_named_cut:
	.asciz	"gimp_edit_named_cut"
	.size	.L__func__.gimp_edit_named_cut, 20

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"name != NULL"
	.size	.L.str.11, 13

	.type	.L__func__.gimp_edit_named_copy,@object # @__func__.gimp_edit_named_copy
.L__func__.gimp_edit_named_copy:
	.asciz	"gimp_edit_named_copy"
	.size	.L__func__.gimp_edit_named_copy, 21

	.type	.L__func__.gimp_edit_named_copy_visible,@object # @__func__.gimp_edit_named_copy_visible
.L__func__.gimp_edit_named_copy_visible:
	.asciz	"gimp_edit_named_copy_visible"
	.size	.L__func__.gimp_edit_named_copy_visible, 29

	.type	.L__func__.gimp_edit_clear,@object # @__func__.gimp_edit_clear
.L__func__.gimp_edit_clear:
	.asciz	"gimp_edit_clear"
	.size	.L__func__.gimp_edit_clear, 16

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"undo-type\004Clear"
	.size	.L.str.12, 16

	.type	.L__func__.gimp_edit_fill,@object # @__func__.gimp_edit_fill
.L__func__.gimp_edit_fill:
	.asciz	"gimp_edit_fill"
	.size	.L__func__.gimp_edit_fill, 15

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"undo-type\004Fill with Foreground Color"
	.size	.L.str.13, 37

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"undo-type\004Fill with Background Color"
	.size	.L.str.14, 37

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"undo-type\004Fill with White"
	.size	.L.str.15, 26

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"undo-type\004Fill with Transparency"
	.size	.L.str.16, 33

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"undo-type\004Fill with Pattern"
	.size	.L.str.17, 28

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%s: unknown fill type"
	.size	.L.str.18, 22

	.type	.L__func__.gimp_edit_fade,@object # @__func__.gimp_edit_fade
.L__func__.gimp_edit_fade:
	.asciz	"gimp_edit_fade"
	.size	.L__func__.gimp_edit_fade, 15

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"undo-type\004Cut"
	.size	.L.str.19, 14

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Global Buffer"
	.size	.L.str.20, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
