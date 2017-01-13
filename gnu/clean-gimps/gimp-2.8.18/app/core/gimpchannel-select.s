	.text
	.file	"gimpchannel-select.bc"
	.globl	gimp_channel_select_rectangle
	.align	16, 0x90
	.type	gimp_channel_select_rectangle,@function
gimp_channel_select_rectangle:          # @gimp_channel_select_rectangle
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
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movl	%r10d, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm1, -48(%rbp)
	movl	%eax, -52(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_channel_select_rectangle, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_27
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB0_15
# BB#14:                                # %if.then.16
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.17
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_channel_select_rectangle, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_27
.LBB0_16:                               # %if.end.18
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.19
	cmpl	$0, -52(%rbp)
	je	.LBB0_19
# BB#18:                                # %if.then.21
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.3, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_channel_push_undo
.LBB0_19:                               # %if.end.23
	cmpl	$2, -28(%rbp)
	jne	.LBB0_21
# BB#20:                                # %if.then.25
	xorl	%eax, %eax
	movl	%eax, %esi
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_channel_clear
.LBB0_21:                               # %if.end.26
	cmpl	$0, -32(%rbp)
	jne	.LBB0_23
# BB#22:                                # %lor.lhs.false
	cmpl	$3, -28(%rbp)
	jne	.LBB0_26
.LBB0_23:                               # %if.then.29
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	gimp_item_get_image
	movq	-88(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_width
	movq	-88(%rbp), %rdi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	-132(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	gimp_channel_new_mask
	xorl	%esi, %esi
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r9d
	callq	gimp_channel_combine_rect
	cmpl	$0, -32(%rbp)
	je	.LBB0_25
# BB#24:                                # %if.then.39
	xorl	%esi, %esi
	movq	-96(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_channel_feather
.LBB0_25:                               # %if.end.40
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movl	-28(%rbp), %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	gimp_channel_combine_mask
	movq	-96(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_object_unref
	jmp	.LBB0_27
.LBB0_26:                               # %if.else.41
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r9d
	callq	gimp_channel_combine_rect
.LBB0_27:                               # %if.end.42
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_channel_select_rectangle, .Lfunc_end0-gimp_channel_select_rectangle
	.cfi_endproc

	.globl	gimp_channel_select_ellipse
	.align	16, 0x90
	.type	gimp_channel_select_ellipse,@function
gimp_channel_select_ellipse:            # @gimp_channel_select_ellipse
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
	movl	32(%rbp), %eax
	movl	24(%rbp), %r10d
	movl	16(%rbp), %r11d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movl	%r11d, -32(%rbp)
	movl	%r10d, -36(%rbp)
	movsd	%xmm0, -48(%rbp)
	movsd	%xmm1, -56(%rbp)
	movl	%eax, -60(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_channel_select_ellipse, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_27
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	jmp	.LBB1_13
.LBB1_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB1_15
# BB#14:                                # %if.then.16
	jmp	.LBB1_16
.LBB1_15:                               # %if.else.17
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_channel_select_ellipse, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_27
.LBB1_16:                               # %if.end.18
	jmp	.LBB1_17
.LBB1_17:                               # %do.end.19
	cmpl	$0, -60(%rbp)
	je	.LBB1_19
# BB#18:                                # %if.then.21
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.4, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_channel_push_undo
.LBB1_19:                               # %if.end.23
	cmpl	$2, -28(%rbp)
	jne	.LBB1_21
# BB#20:                                # %if.then.25
	xorl	%eax, %eax
	movl	%eax, %esi
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_channel_clear
.LBB1_21:                               # %if.end.26
	cmpl	$0, -36(%rbp)
	jne	.LBB1_23
# BB#22:                                # %lor.lhs.false
	cmpl	$3, -28(%rbp)
	jne	.LBB1_26
.LBB1_23:                               # %if.then.29
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	gimp_item_get_image
	movq	-96(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_width
	movq	-96(%rbp), %rdi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movl	-140(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	gimp_channel_new_mask
	xorl	%esi, %esi
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r9d
	movl	-32(%rbp), %r10d
	movl	%r10d, (%rsp)
	callq	gimp_channel_combine_ellipse
	cmpl	$0, -36(%rbp)
	je	.LBB1_25
# BB#24:                                # %if.then.39
	xorl	%esi, %esi
	movq	-104(%rbp), %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_channel_feather
.LBB1_25:                               # %if.end.40
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movl	-28(%rbp), %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	gimp_channel_combine_mask
	movq	-104(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_object_unref
	jmp	.LBB1_27
.LBB1_26:                               # %if.else.41
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r9d
	movl	-32(%rbp), %eax
	movl	%eax, (%rsp)
	callq	gimp_channel_combine_ellipse
.LBB1_27:                               # %if.end.42
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_channel_select_ellipse, .Lfunc_end1-gimp_channel_select_ellipse
	.cfi_endproc

	.globl	gimp_channel_select_round_rect
	.align	16, 0x90
	.type	gimp_channel_select_round_rect,@function
gimp_channel_select_round_rect:         # @gimp_channel_select_round_rect
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
	subq	$176, %rsp
	movl	32(%rbp), %eax
	movl	24(%rbp), %r10d
	movl	16(%rbp), %r11d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movl	%r11d, -48(%rbp)
	movl	%r10d, -52(%rbp)
	movsd	%xmm2, -64(%rbp)
	movsd	%xmm3, -72(%rbp)
	movl	%eax, -76(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_channel_select_round_rect, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_27
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	jmp	.LBB2_13
.LBB2_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB2_15
# BB#14:                                # %if.then.16
	jmp	.LBB2_16
.LBB2_15:                               # %if.else.17
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_channel_select_round_rect, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_27
.LBB2_16:                               # %if.end.18
	jmp	.LBB2_17
.LBB2_17:                               # %do.end.19
	cmpl	$0, -76(%rbp)
	je	.LBB2_19
# BB#18:                                # %if.then.21
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.5, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_channel_push_undo
.LBB2_19:                               # %if.end.23
	cmpl	$2, -44(%rbp)
	jne	.LBB2_21
# BB#20:                                # %if.then.25
	xorl	%eax, %eax
	movl	%eax, %esi
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_channel_clear
.LBB2_21:                               # %if.end.26
	cmpl	$0, -52(%rbp)
	jne	.LBB2_23
# BB#22:                                # %lor.lhs.false
	cmpl	$3, -44(%rbp)
	jne	.LBB2_26
.LBB2_23:                               # %if.then.29
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	callq	gimp_item_get_image
	movq	-112(%rbp), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_width
	movq	-112(%rbp), %rdi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	-156(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	gimp_channel_new_mask
	xorl	%esi, %esi
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rdi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r9d
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-48(%rbp), %r10d
	movl	%r10d, (%rsp)
	callq	gimp_channel_combine_ellipse_rect
	cmpl	$0, -52(%rbp)
	je	.LBB2_25
# BB#24:                                # %if.then.39
	xorl	%esi, %esi
	movq	-120(%rbp), %rdi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_channel_feather
.LBB2_25:                               # %if.end.40
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movl	-44(%rbp), %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	gimp_channel_combine_mask
	movq	-120(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_object_unref
	jmp	.LBB2_27
.LBB2_26:                               # %if.else.41
	movq	-8(%rbp), %rdi
	movl	-44(%rbp), %esi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r9d
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-48(%rbp), %eax
	movl	%eax, (%rsp)
	callq	gimp_channel_combine_ellipse_rect
.LBB2_27:                               # %if.end.42
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_channel_select_round_rect, .Lfunc_end2-gimp_channel_select_round_rect
	.cfi_endproc

	.globl	gimp_channel_select_scan_convert
	.align	16, 0x90
	.type	gimp_channel_select_scan_convert,@function
gimp_channel_select_scan_convert:       # @gimp_channel_select_scan_convert
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
	subq	$160, %rsp
	movl	32(%rbp), %eax
	movl	24(%rbp), %r10d
	movl	16(%rbp), %r11d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	%r11d, -40(%rbp)
	movl	%r10d, -44(%rbp)
	movsd	%xmm0, -56(%rbp)
	movsd	%xmm1, -64(%rbp)
	movl	%eax, -68(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -108(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -108(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_channel_select_scan_convert, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_34
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB3_15
# BB#14:                                # %if.then.16
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.17
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_channel_select_scan_convert, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_34
.LBB3_16:                               # %if.end.18
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.19
	jmp	.LBB3_18
.LBB3_18:                               # %do.body.20
	cmpq	$0, -16(%rbp)
	je	.LBB3_20
# BB#19:                                # %if.then.22
	jmp	.LBB3_21
.LBB3_20:                               # %if.else.23
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_channel_select_scan_convert, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_34
.LBB3_21:                               # %if.end.24
	jmp	.LBB3_22
.LBB3_22:                               # %do.end.25
	jmp	.LBB3_23
.LBB3_23:                               # %do.body.26
	cmpq	$0, -24(%rbp)
	je	.LBB3_25
# BB#24:                                # %if.then.28
	jmp	.LBB3_26
.LBB3_25:                               # %if.else.29
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_channel_select_scan_convert, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_34
.LBB3_26:                               # %if.end.30
	jmp	.LBB3_27
.LBB3_27:                               # %do.end.31
	cmpl	$0, -68(%rbp)
	je	.LBB3_29
# BB#28:                                # %if.then.33
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_channel_push_undo
.LBB3_29:                               # %if.end.34
	cmpl	$2, -36(%rbp)
	jne	.LBB3_31
# BB#30:                                # %if.then.36
	xorl	%eax, %eax
	movl	%eax, %esi
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_channel_clear
.LBB3_31:                               # %if.end.37
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	gimp_item_get_image
	movq	-80(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_width
	movq	-80(%rbp), %rdi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movl	-140(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	gimp_channel_new_mask
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movl	-40(%rbp), %r8d
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_scan_convert_render
	cmpl	$0, -44(%rbp)
	je	.LBB3_33
# BB#32:                                # %if.then.48
	xorl	%esi, %esi
	movq	-88(%rbp), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_channel_feather
.LBB3_33:                               # %if.end.49
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movl	-36(%rbp), %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	gimp_channel_combine_mask
	movq	-88(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_object_unref
.LBB3_34:                               # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_channel_select_scan_convert, .Lfunc_end3-gimp_channel_select_scan_convert
	.cfi_endproc

	.globl	gimp_channel_select_polygon
	.align	16, 0x90
	.type	gimp_channel_select_polygon,@function
gimp_channel_select_polygon:            # @gimp_channel_select_polygon
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
	pushq	%r14
	pushq	%rbx
	subq	$144, %rsp
.Ltmp15:
	.cfi_offset %rbx, -32
.Ltmp16:
	.cfi_offset %r14, -24
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movl	%r9d, -56(%rbp)
	movl	%r10d, -60(%rbp)
	movsd	%xmm0, -72(%rbp)
	movsd	%xmm1, -80(%rbp)
	movl	%eax, -84(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -116(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -116(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_channel_select_polygon, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_23
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB4_15
# BB#14:                                # %if.then.16
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.17
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_channel_select_polygon, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_23
.LBB4_16:                               # %if.end.18
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.19
	jmp	.LBB4_18
.LBB4_18:                               # %do.body.20
	cmpq	$0, -32(%rbp)
	je	.LBB4_20
# BB#19:                                # %if.then.22
	jmp	.LBB4_21
.LBB4_20:                               # %if.else.23
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_channel_select_polygon, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_23
.LBB4_21:                               # %if.end.24
	jmp	.LBB4_22
.LBB4_22:                               # %do.end.25
	callq	gimp_scan_convert_new
	movl	$1, %ecx
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	movl	-36(%rbp), %esi
	movq	-48(%rbp), %rdx
	callq	gimp_scan_convert_add_polyline
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-96(%rbp), %rdx
	movl	-52(%rbp), %r9d
	movl	-56(%rbp), %r8d
	movl	-60(%rbp), %r10d
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-84(%rbp), %r11d
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	movl	-132(%rbp), %ebx        # 4-byte Reload
	movl	%r8d, -136(%rbp)        # 4-byte Spill
	movl	%ebx, %r8d
	movl	-136(%rbp), %r14d       # 4-byte Reload
	movl	%r14d, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	callq	gimp_channel_select_scan_convert
	movq	-96(%rbp), %rdi
	callq	gimp_scan_convert_free
.LBB4_23:                               # %return
	addq	$144, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_channel_select_polygon, .Lfunc_end4-gimp_channel_select_polygon
	.cfi_endproc

	.globl	gimp_channel_select_vectors
	.align	16, 0x90
	.type	gimp_channel_select_vectors,@function
gimp_channel_select_vectors:            # @gimp_channel_select_vectors
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
	pushq	%r14
	pushq	%rbx
	subq	$176, %rsp
.Ltmp20:
	.cfi_offset %rbx, -32
.Ltmp21:
	.cfi_offset %r14, -24
	movl	16(%rbp), %eax
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movsd	%xmm0, -64(%rbp)
	movsd	%xmm1, -72(%rbp)
	movl	%eax, -76(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -108(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -108(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_channel_select_vectors, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_37
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB5_15
# BB#14:                                # %if.then.16
	jmp	.LBB5_16
.LBB5_15:                               # %if.else.17
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_channel_select_vectors, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_37
.LBB5_16:                               # %if.end.18
	jmp	.LBB5_17
.LBB5_17:                               # %do.end.19
	jmp	.LBB5_18
.LBB5_18:                               # %do.body.20
	cmpq	$0, -32(%rbp)
	je	.LBB5_20
# BB#19:                                # %if.then.22
	jmp	.LBB5_21
.LBB5_20:                               # %if.else.23
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_channel_select_vectors, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_37
.LBB5_21:                               # %if.end.24
	jmp	.LBB5_22
.LBB5_22:                               # %do.end.25
	jmp	.LBB5_23
.LBB5_23:                               # %do.body.26
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_vectors_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB5_25
# BB#24:                                # %if.then.35
	movl	$0, -132(%rbp)
	jmp	.LBB5_30
.LBB5_25:                               # %if.else.36
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_28
# BB#26:                                # %land.lhs.true.39
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB5_28
# BB#27:                                # %if.then.43
	movl	$1, -132(%rbp)
	jmp	.LBB5_29
.LBB5_28:                               # %if.else.44
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB5_29:                               # %if.end.46
	jmp	.LBB5_30
.LBB5_30:                               # %if.end.47
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB5_32
# BB#31:                                # %if.then.50
	jmp	.LBB5_33
.LBB5_32:                               # %if.else.51
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_channel_select_vectors, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_37
.LBB5_33:                               # %if.end.52
	jmp	.LBB5_34
.LBB5_34:                               # %do.end.53
	movq	-40(%rbp), %rdi
	callq	gimp_vectors_get_bezier
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB5_37
# BB#35:                                # %land.lhs.true.56
	movq	-88(%rbp), %rax
	cmpl	$4, 16(%rax)
	jle	.LBB5_37
# BB#36:                                # %if.then.58
	callq	gimp_scan_convert_new
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	gimp_scan_convert_add_bezier
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-144(%rbp), %rdx
	movl	-44(%rbp), %r9d
	movl	-48(%rbp), %r8d
	movl	-52(%rbp), %r10d
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-76(%rbp), %r11d
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	movl	-156(%rbp), %ebx        # 4-byte Reload
	movl	%r8d, -160(%rbp)        # 4-byte Spill
	movl	%ebx, %r8d
	movl	-160(%rbp), %r14d       # 4-byte Reload
	movl	%r14d, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	callq	gimp_channel_select_scan_convert
	movq	-144(%rbp), %rdi
	callq	gimp_scan_convert_free
.LBB5_37:                               # %if.end.61
	addq	$176, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_channel_select_vectors, .Lfunc_end5-gimp_channel_select_vectors
	.cfi_endproc

	.globl	gimp_channel_select_channel
	.align	16, 0x90
	.type	gimp_channel_select_channel,@function
gimp_channel_select_channel:            # @gimp_channel_select_channel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	%eax, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movsd	%xmm1, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_channel_get_type
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
	movabsq	$.L__func__.gimp_channel_select_channel, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_42
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB6_15
# BB#14:                                # %if.then.16
	jmp	.LBB6_16
.LBB6_15:                               # %if.else.17
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_channel_select_channel, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_42
.LBB6_16:                               # %if.end.18
	jmp	.LBB6_17
.LBB6_17:                               # %do.end.19
	jmp	.LBB6_18
.LBB6_18:                               # %do.body.20
	cmpq	$0, -16(%rbp)
	je	.LBB6_20
# BB#19:                                # %if.then.22
	jmp	.LBB6_21
.LBB6_20:                               # %if.else.23
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_channel_select_channel, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_42
.LBB6_21:                               # %if.end.24
	jmp	.LBB6_22
.LBB6_22:                               # %do.end.25
	jmp	.LBB6_23
.LBB6_23:                               # %do.body.26
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB6_25
# BB#24:                                # %if.then.35
	movl	$0, -100(%rbp)
	jmp	.LBB6_30
.LBB6_25:                               # %if.else.36
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_28
# BB#26:                                # %land.lhs.true.39
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB6_28
# BB#27:                                # %if.then.43
	movl	$1, -100(%rbp)
	jmp	.LBB6_29
.LBB6_28:                               # %if.else.44
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB6_29:                               # %if.end.46
	jmp	.LBB6_30
.LBB6_30:                               # %if.end.47
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB6_32
# BB#31:                                # %if.then.50
	jmp	.LBB6_33
.LBB6_32:                               # %if.else.51
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_channel_select_channel, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_42
.LBB6_33:                               # %if.end.52
	jmp	.LBB6_34
.LBB6_34:                               # %do.end.53
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_channel_push_undo
	cmpl	$2, -36(%rbp)
	jne	.LBB6_36
# BB#35:                                # %if.then.55
	xorl	%eax, %eax
	movl	%eax, %esi
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_channel_clear
.LBB6_36:                               # %if.end.56
	cmpl	$0, -40(%rbp)
	jne	.LBB6_38
# BB#37:                                # %lor.lhs.false
	cmpl	$3, -36(%rbp)
	jne	.LBB6_41
.LBB6_38:                               # %if.then.59
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	callq	gimp_item_get_image
	movq	-112(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_width
	movq	-112(%rbp), %rdi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movl	-148(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	gimp_channel_new_mask
	xorl	%edx, %edx
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	callq	gimp_channel_combine_mask
	cmpl	$0, -40(%rbp)
	je	.LBB6_40
# BB#39:                                # %if.then.69
	xorl	%esi, %esi
	movq	-120(%rbp), %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_channel_feather
.LBB6_40:                               # %if.end.70
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movl	-36(%rbp), %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	gimp_channel_combine_mask
	movq	-120(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_object_unref
	jmp	.LBB6_42
.LBB6_41:                               # %if.else.71
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-36(%rbp), %edx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	callq	gimp_channel_combine_mask
.LBB6_42:                               # %if.end.72
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_channel_select_channel, .Lfunc_end6-gimp_channel_select_channel
	.cfi_endproc

	.globl	gimp_channel_select_alpha
	.align	16, 0x90
	.type	gimp_channel_select_alpha,@function
gimp_channel_select_alpha:              # @gimp_channel_select_alpha
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_channel_select_alpha, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_33
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB7_15
# BB#14:                                # %if.then.16
	jmp	.LBB7_16
.LBB7_15:                               # %if.else.17
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_channel_select_alpha, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_33
.LBB7_16:                               # %if.end.18
	jmp	.LBB7_17
.LBB7_17:                               # %do.end.19
	jmp	.LBB7_18
.LBB7_18:                               # %do.body.20
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB7_20
# BB#19:                                # %if.then.29
	movl	$0, -108(%rbp)
	jmp	.LBB7_25
.LBB7_20:                               # %if.else.30
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_23
# BB#21:                                # %land.lhs.true.33
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB7_23
# BB#22:                                # %if.then.37
	movl	$1, -108(%rbp)
	jmp	.LBB7_24
.LBB7_23:                               # %if.else.38
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB7_24:                               # %if.end.40
	jmp	.LBB7_25
.LBB7_25:                               # %if.end.41
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB7_27
# BB#26:                                # %if.then.44
	jmp	.LBB7_28
.LBB7_27:                               # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_channel_select_alpha, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_33
.LBB7_28:                               # %if.end.46
	jmp	.LBB7_29
.LBB7_29:                               # %do.end.47
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB7_31
# BB#30:                                # %if.then.52
	movq	-48(%rbp), %rdi
	callq	gimp_item_get_image
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-16(%rbp), %rsi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movq	-136(%rbp), %rcx        # 8-byte Reload
	callq	gimp_channel_new_from_alpha
	movq	%rax, -56(%rbp)
	jmp	.LBB7_32
.LBB7_31:                               # %if.else.55
	movq	-48(%rbp), %rdi
	callq	gimp_item_get_image
	movq	-16(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-16(%rbp), %rsi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movl	-156(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	gimp_channel_new_mask
	xorl	%esi, %esi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_channel_all
.LBB7_32:                               # %if.end.64
	movq	-16(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.11, %rsi
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movq	-56(%rbp), %rdx
	movl	-60(%rbp), %ecx
	movl	-64(%rbp), %r8d
	movl	-20(%rbp), %r9d
	movl	-24(%rbp), %r10d
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movl	%r10d, (%rsp)
	callq	gimp_channel_select_channel
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB7_33:                               # %return
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_channel_select_alpha, .Lfunc_end7-gimp_channel_select_alpha
	.cfi_endproc

	.globl	gimp_channel_select_component
	.align	16, 0x90
	.type	gimp_channel_select_component,@function
gimp_channel_select_component:          # @gimp_channel_select_component
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_channel_select_component, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_20
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB8_15
# BB#14:                                # %if.then.16
	jmp	.LBB8_16
.LBB8_15:                               # %if.else.17
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_channel_select_component, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_20
.LBB8_16:                               # %if.end.18
	jmp	.LBB8_17
.LBB8_17:                               # %do.end.19
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_item_get_image
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	-12(%rbp), %ecx
	movq	%rax, %rdi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	callq	gimp_channel_new_from_component
	movq	%rax, -56(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB8_19
# BB#18:                                # %if.then.25
	xorl	%esi, %esi
	movq	-56(%rbp), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_channel_feather
.LBB8_19:                               # %if.end.26
	callq	gimp_channel_type_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-64(%rbp), %r8
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	-128(%rbp), %r9         # 8-byte Reload
	callq	gimp_enum_get_value
	xorl	%esi, %esi
	movl	%esi, %edi
	movabsq	$.L.str.12, %rsi
	movl	$10, %r10d
	movl	%r10d, %edx
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	g_dpgettext
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	xorl	%r10d, %r10d
	xorps	%xmm0, %xmm0
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movl	-16(%rbp), %r9d
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movl	$0, (%rsp)
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_channel_select_channel
	movq	-72(%rbp), %rdi
	callq	g_free
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB8_20:                               # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_channel_select_component, .Lfunc_end8-gimp_channel_select_component
	.cfi_endproc

	.globl	gimp_channel_select_fuzzy
	.align	16, 0x90
	.type	gimp_channel_select_fuzzy,@function
gimp_channel_select_fuzzy:              # @gimp_channel_select_fuzzy
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
	pushq	%r14
	pushq	%rbx
	subq	$208, %rsp
.Ltmp34:
	.cfi_offset %rbx, -32
.Ltmp35:
	.cfi_offset %r14, -24
	movl	48(%rbp), %eax
	movl	40(%rbp), %r10d
	movl	32(%rbp), %r11d
	movl	24(%rbp), %ebx
	movl	16(%rbp), %r14d
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
	movl	%r14d, -52(%rbp)
	movl	%ebx, -56(%rbp)
	movl	%r11d, -60(%rbp)
	movl	%r10d, -64(%rbp)
	movl	%eax, -68(%rbp)
	movsd	%xmm0, -80(%rbp)
	movsd	%xmm1, -88(%rbp)
	movl	$0, -108(%rbp)
	movl	$0, -112(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -132(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -132(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_channel_select_fuzzy, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_32
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB9_15
# BB#14:                                # %if.then.16
	jmp	.LBB9_16
.LBB9_15:                               # %if.else.17
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_channel_select_fuzzy, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_32
.LBB9_16:                               # %if.end.18
	jmp	.LBB9_17
.LBB9_17:                               # %do.end.19
	jmp	.LBB9_18
.LBB9_18:                               # %do.body.20
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB9_20
# BB#19:                                # %if.then.29
	movl	$0, -156(%rbp)
	jmp	.LBB9_25
.LBB9_20:                               # %if.else.30
	movq	-144(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_23
# BB#21:                                # %land.lhs.true.33
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB9_23
# BB#22:                                # %if.then.37
	movl	$1, -156(%rbp)
	jmp	.LBB9_24
.LBB9_23:                               # %if.else.38
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -156(%rbp)
.LBB9_24:                               # %if.end.40
	jmp	.LBB9_25
.LBB9_25:                               # %if.end.41
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB9_27
# BB#26:                                # %if.then.44
	jmp	.LBB9_28
.LBB9_27:                               # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_channel_select_fuzzy, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_32
.LBB9_28:                               # %if.end.46
	jmp	.LBB9_29
.LBB9_29:                               # %do.end.47
	movq	-24(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	gimp_item_get_image
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %edx
	movl	-64(%rbp), %ecx
	movl	-48(%rbp), %r8d
	movl	-52(%rbp), %r9d
	movl	-56(%rbp), %r10d
	movl	-40(%rbp), %r11d
	movl	-44(%rbp), %ebx
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	callq	gimp_image_contiguous_region_by_seed
	movq	%rax, -104(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.LBB9_31
# BB#30:                                # %if.then.53
	movq	-32(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-108(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
.LBB9_31:                               # %if.end.56
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.13, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movq	-104(%rbp), %rdx
	movl	-108(%rbp), %ecx
	movl	-112(%rbp), %r8d
	movl	-60(%rbp), %r9d
	movl	-68(%rbp), %r10d
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movl	%r10d, (%rsp)
	callq	gimp_channel_select_channel
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB9_32:                               # %return
	addq	$208, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_channel_select_fuzzy, .Lfunc_end9-gimp_channel_select_fuzzy
	.cfi_endproc

	.globl	gimp_channel_select_by_color
	.align	16, 0x90
	.type	gimp_channel_select_by_color,@function
gimp_channel_select_by_color:           # @gimp_channel_select_by_color
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
	pushq	%rbx
	subq	$200, %rsp
.Ltmp39:
	.cfi_offset %rbx, -24
	movl	40(%rbp), %eax
	movl	32(%rbp), %r10d
	movl	24(%rbp), %r11d
	movl	16(%rbp), %ebx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
	movl	%ebx, -52(%rbp)
	movl	%r11d, -56(%rbp)
	movl	%r10d, -60(%rbp)
	movl	%eax, -64(%rbp)
	movsd	%xmm0, -72(%rbp)
	movsd	%xmm1, -80(%rbp)
	movl	$0, -100(%rbp)
	movl	$0, -104(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -124(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -124(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_channel_select_by_color, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_37
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	jmp	.LBB10_13
.LBB10_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB10_15
# BB#14:                                # %if.then.16
	jmp	.LBB10_16
.LBB10_15:                              # %if.else.17
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_channel_select_by_color, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_37
.LBB10_16:                              # %if.end.18
	jmp	.LBB10_17
.LBB10_17:                              # %do.end.19
	jmp	.LBB10_18
.LBB10_18:                              # %do.body.20
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB10_20
# BB#19:                                # %if.then.29
	movl	$0, -148(%rbp)
	jmp	.LBB10_25
.LBB10_20:                              # %if.else.30
	movq	-136(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_23
# BB#21:                                # %land.lhs.true.33
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB10_23
# BB#22:                                # %if.then.37
	movl	$1, -148(%rbp)
	jmp	.LBB10_24
.LBB10_23:                              # %if.else.38
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -148(%rbp)
.LBB10_24:                              # %if.end.40
	jmp	.LBB10_25
.LBB10_25:                              # %if.end.41
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB10_27
# BB#26:                                # %if.then.44
	jmp	.LBB10_28
.LBB10_27:                              # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_channel_select_by_color, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_37
.LBB10_28:                              # %if.end.46
	jmp	.LBB10_29
.LBB10_29:                              # %do.end.47
	jmp	.LBB10_30
.LBB10_30:                              # %do.body.48
	cmpq	$0, -40(%rbp)
	je	.LBB10_32
# BB#31:                                # %if.then.50
	jmp	.LBB10_33
.LBB10_32:                              # %if.else.51
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_channel_select_by_color, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_37
.LBB10_33:                              # %if.end.52
	jmp	.LBB10_34
.LBB10_34:                              # %do.end.53
	movq	-16(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	gimp_item_get_image
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movl	-60(%rbp), %ecx
	movl	-44(%rbp), %r8d
	movl	-48(%rbp), %r9d
	movl	-52(%rbp), %r10d
	movq	-40(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_image_contiguous_region_by_color
	movq	%rax, -96(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.LBB10_36
# BB#35:                                # %if.then.59
	movq	-24(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-100(%rbp), %rsi
	leaq	-104(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
.LBB10_36:                              # %if.end.62
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.15, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movq	-96(%rbp), %rdx
	movl	-100(%rbp), %ecx
	movl	-104(%rbp), %r8d
	movl	-56(%rbp), %r9d
	movl	-64(%rbp), %r10d
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movl	%r10d, (%rsp)
	callq	gimp_channel_select_channel
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB10_37:                              # %return
	addq	$200, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_channel_select_by_color, .Lfunc_end10-gimp_channel_select_by_color
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_channel_select_rectangle,@object # @__func__.gimp_channel_select_rectangle
.L__func__.gimp_channel_select_rectangle:
	.asciz	"gimp_channel_select_rectangle"
	.size	.L__func__.gimp_channel_select_rectangle, 30

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_CHANNEL (channel)"
	.size	.L.str.1, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp_item_is_attached (GIMP_ITEM (channel))"
	.size	.L.str.2, 44

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"undo-type\004Rectangle Select"
	.size	.L.str.3, 27

	.type	.L__func__.gimp_channel_select_ellipse,@object # @__func__.gimp_channel_select_ellipse
.L__func__.gimp_channel_select_ellipse:
	.asciz	"gimp_channel_select_ellipse"
	.size	.L__func__.gimp_channel_select_ellipse, 28

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"undo-type\004Ellipse Select"
	.size	.L.str.4, 25

	.type	.L__func__.gimp_channel_select_round_rect,@object # @__func__.gimp_channel_select_round_rect
.L__func__.gimp_channel_select_round_rect:
	.asciz	"gimp_channel_select_round_rect"
	.size	.L__func__.gimp_channel_select_round_rect, 31

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"undo-type\004Rounded Rectangle Select"
	.size	.L.str.5, 35

	.type	.L__func__.gimp_channel_select_scan_convert,@object # @__func__.gimp_channel_select_scan_convert
.L__func__.gimp_channel_select_scan_convert:
	.asciz	"gimp_channel_select_scan_convert"
	.size	.L__func__.gimp_channel_select_scan_convert, 33

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"undo_desc != NULL"
	.size	.L.str.6, 18

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"scan_convert != NULL"
	.size	.L.str.7, 21

	.type	.L__func__.gimp_channel_select_polygon,@object # @__func__.gimp_channel_select_polygon
.L__func__.gimp_channel_select_polygon:
	.asciz	"gimp_channel_select_polygon"
	.size	.L__func__.gimp_channel_select_polygon, 28

	.type	.L__func__.gimp_channel_select_vectors,@object # @__func__.gimp_channel_select_vectors
.L__func__.gimp_channel_select_vectors:
	.asciz	"gimp_channel_select_vectors"
	.size	.L__func__.gimp_channel_select_vectors, 28

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_IS_VECTORS (vectors)"
	.size	.L.str.8, 26

	.type	.L__func__.gimp_channel_select_channel,@object # @__func__.gimp_channel_select_channel
.L__func__.gimp_channel_select_channel:
	.asciz	"gimp_channel_select_channel"
	.size	.L__func__.gimp_channel_select_channel, 28

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GIMP_IS_CHANNEL (add_on)"
	.size	.L.str.9, 25

	.type	.L__func__.gimp_channel_select_alpha,@object # @__func__.gimp_channel_select_alpha
.L__func__.gimp_channel_select_alpha:
	.asciz	"gimp_channel_select_alpha"
	.size	.L__func__.gimp_channel_select_alpha, 26

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"GIMP_IS_DRAWABLE (drawable)"
	.size	.L.str.10, 28

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"undo-type\004Alpha to Selection"
	.size	.L.str.11, 29

	.type	.L__func__.gimp_channel_select_component,@object # @__func__.gimp_channel_select_component
.L__func__.gimp_channel_select_component:
	.asciz	"gimp_channel_select_component"
	.size	.L__func__.gimp_channel_select_component, 30

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"undo-type\004%s Channel to Selection"
	.size	.L.str.12, 34

	.type	.L__func__.gimp_channel_select_fuzzy,@object # @__func__.gimp_channel_select_fuzzy
.L__func__.gimp_channel_select_fuzzy:
	.asciz	"gimp_channel_select_fuzzy"
	.size	.L__func__.gimp_channel_select_fuzzy, 26

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"undo-type\004Fuzzy Select"
	.size	.L.str.13, 23

	.type	.L__func__.gimp_channel_select_by_color,@object # @__func__.gimp_channel_select_by_color
.L__func__.gimp_channel_select_by_color:
	.asciz	"gimp_channel_select_by_color"
	.size	.L__func__.gimp_channel_select_by_color, 29

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"color != NULL"
	.size	.L.str.14, 14

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"undo-type\004Select by Color"
	.size	.L.str.15, 26


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
