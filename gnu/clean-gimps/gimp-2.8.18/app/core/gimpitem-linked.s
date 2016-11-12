	.text
	.file	"gimpitem-linked.bc"
	.globl	gimp_item_linked_translate
	.align	16, 0x90
	.type	gimp_item_linked_translate,@function
gimp_item_linked_translate:             # @gimp_item_linked_translate
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_item_linked_translate, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_23
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_linked
	cmpl	$1, %eax
	jne	.LBB0_15
# BB#14:                                # %if.then.14
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_item_linked_translate, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_23
.LBB0_16:                               # %if.end.16
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.17
	jmp	.LBB0_18
.LBB0_18:                               # %do.body.18
	movq	-8(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB0_20
# BB#19:                                # %if.then.21
	jmp	.LBB0_21
.LBB0_20:                               # %if.else.22
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_item_linked_translate, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_23
.LBB0_21:                               # %if.end.23
	jmp	.LBB0_22
.LBB0_22:                               # %do.end.24
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_image
	movl	$7, %esi
	movl	$4, %edx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_image_item_list_get_list
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_image_item_list_filter
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_image
	movq	-40(%rbp), %rsi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movq	%rax, %rdi
	callq	gimp_image_item_list_translate
	movq	-40(%rbp), %rdi
	callq	g_list_free
.LBB0_23:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_item_linked_translate, .Lfunc_end0-gimp_item_linked_translate
	.cfi_endproc

	.globl	gimp_item_linked_flip
	.align	16, 0x90
	.type	gimp_item_linked_flip,@function
gimp_item_linked_flip:                  # @gimp_item_linked_flip
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
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movl	%ecx, -36(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_item_linked_flip, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_35
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	jmp	.LBB1_13
.LBB1_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB1_15
# BB#14:                                # %if.then.20
	movl	$0, -100(%rbp)
	jmp	.LBB1_20
.LBB1_15:                               # %if.else.21
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_18
# BB#16:                                # %land.lhs.true.24
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB1_18
# BB#17:                                # %if.then.28
	movl	$1, -100(%rbp)
	jmp	.LBB1_19
.LBB1_18:                               # %if.else.29
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB1_19:                               # %if.end.31
	jmp	.LBB1_20
.LBB1_20:                               # %if.end.32
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB1_22
# BB#21:                                # %if.then.35
	jmp	.LBB1_23
.LBB1_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_item_linked_flip, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_35
.LBB1_23:                               # %if.end.37
	jmp	.LBB1_24
.LBB1_24:                               # %do.end.38
	jmp	.LBB1_25
.LBB1_25:                               # %do.body.39
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_linked
	cmpl	$1, %eax
	jne	.LBB1_27
# BB#26:                                # %if.then.42
	jmp	.LBB1_28
.LBB1_27:                               # %if.else.43
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_item_linked_flip, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_35
.LBB1_28:                               # %if.end.44
	jmp	.LBB1_29
.LBB1_29:                               # %do.end.45
	jmp	.LBB1_30
.LBB1_30:                               # %do.body.46
	movq	-8(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB1_32
# BB#31:                                # %if.then.49
	jmp	.LBB1_33
.LBB1_32:                               # %if.else.50
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_item_linked_flip, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_35
.LBB1_33:                               # %if.end.51
	jmp	.LBB1_34
.LBB1_34:                               # %do.end.52
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_image
	movl	$7, %esi
	movl	$4, %edx
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_image_item_list_get_list
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_image_item_list_filter
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %ecx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-36(%rbp), %r8d
	callq	gimp_image_item_list_flip
	movq	-56(%rbp), %rdi
	callq	g_list_free
.LBB1_35:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_item_linked_flip, .Lfunc_end1-gimp_item_linked_flip
	.cfi_endproc

	.globl	gimp_item_linked_rotate
	.align	16, 0x90
	.type	gimp_item_linked_rotate,@function
gimp_item_linked_rotate:                # @gimp_item_linked_rotate
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movl	%ecx, -44(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_item_linked_rotate, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_41
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	jmp	.LBB2_13
.LBB2_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB2_15
# BB#14:                                # %if.then.20
	movl	$0, -116(%rbp)
	jmp	.LBB2_20
.LBB2_15:                               # %if.else.21
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_18
# BB#16:                                # %land.lhs.true.24
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB2_18
# BB#17:                                # %if.then.28
	movl	$1, -116(%rbp)
	jmp	.LBB2_19
.LBB2_18:                               # %if.else.29
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB2_19:                               # %if.end.31
	jmp	.LBB2_20
.LBB2_20:                               # %if.end.32
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB2_22
# BB#21:                                # %if.then.35
	jmp	.LBB2_23
.LBB2_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_item_linked_rotate, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_41
.LBB2_23:                               # %if.end.37
	jmp	.LBB2_24
.LBB2_24:                               # %do.end.38
	jmp	.LBB2_25
.LBB2_25:                               # %do.body.39
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_linked
	cmpl	$1, %eax
	jne	.LBB2_27
# BB#26:                                # %if.then.42
	jmp	.LBB2_28
.LBB2_27:                               # %if.else.43
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_item_linked_rotate, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_41
.LBB2_28:                               # %if.end.44
	jmp	.LBB2_29
.LBB2_29:                               # %do.end.45
	jmp	.LBB2_30
.LBB2_30:                               # %do.body.46
	movq	-8(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB2_32
# BB#31:                                # %if.then.49
	jmp	.LBB2_33
.LBB2_32:                               # %if.else.50
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_item_linked_rotate, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_41
.LBB2_33:                               # %if.end.51
	jmp	.LBB2_34
.LBB2_34:                               # %do.end.52
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_image
	movl	$5, %esi
	movl	$4, %edx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_image_item_list_get_list
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_image_item_list_filter
	movl	$2, %esi
	movl	$4, %edx
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_image_item_list_get_list
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_image_item_list_filter
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB2_37
# BB#35:                                # %land.lhs.true.59
	cmpq	$0, -72(%rbp)
	je	.LBB2_37
# BB#36:                                # %if.then.61
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.5, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movl	$32, %esi
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB2_37:                               # %if.end.64
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %ecx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-44(%rbp), %r8d
	callq	gimp_image_item_list_rotate
	movl	$1, %r8d
	movq	-56(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %ecx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_image_item_list_rotate
	cmpq	$0, -64(%rbp)
	je	.LBB2_40
# BB#38:                                # %land.lhs.true.66
	cmpq	$0, -72(%rbp)
	je	.LBB2_40
# BB#39:                                # %if.then.68
	movq	-56(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB2_40:                               # %if.end.70
	movq	-64(%rbp), %rdi
	callq	g_list_free
	movq	-72(%rbp), %rdi
	callq	g_list_free
.LBB2_41:                               # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_item_linked_rotate, .Lfunc_end2-gimp_item_linked_rotate
	.cfi_endproc

	.globl	gimp_item_linked_transform
	.align	16, 0x90
	.type	gimp_item_linked_transform,@function
gimp_item_linked_transform:             # @gimp_item_linked_transform
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
	movq	24(%rbp), %rax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	%r10d, -40(%rbp)
	movq	%rax, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_item_linked_transform, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_48
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB3_15
# BB#14:                                # %if.then.20
	movl	$0, -108(%rbp)
	jmp	.LBB3_20
.LBB3_15:                               # %if.else.21
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_18
# BB#16:                                # %land.lhs.true.24
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB3_18
# BB#17:                                # %if.then.28
	movl	$1, -108(%rbp)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.29
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB3_19:                               # %if.end.31
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.32
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.35
	jmp	.LBB3_23
.LBB3_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_item_linked_transform, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_48
.LBB3_23:                               # %if.end.37
	jmp	.LBB3_24
.LBB3_24:                               # %do.end.38
	jmp	.LBB3_25
.LBB3_25:                               # %do.body.39
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_linked
	cmpl	$1, %eax
	jne	.LBB3_27
# BB#26:                                # %if.then.42
	jmp	.LBB3_28
.LBB3_27:                               # %if.else.43
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_item_linked_transform, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_48
.LBB3_28:                               # %if.end.44
	jmp	.LBB3_29
.LBB3_29:                               # %do.end.45
	jmp	.LBB3_30
.LBB3_30:                               # %do.body.46
	movq	-8(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB3_32
# BB#31:                                # %if.then.49
	jmp	.LBB3_33
.LBB3_32:                               # %if.else.50
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_item_linked_transform, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_48
.LBB3_33:                               # %if.end.51
	jmp	.LBB3_34
.LBB3_34:                               # %do.end.52
	jmp	.LBB3_35
.LBB3_35:                               # %do.body.53
	cmpq	$0, -48(%rbp)
	je	.LBB3_44
# BB#36:                                # %lor.lhs.false
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB3_38
# BB#37:                                # %if.then.63
	movl	$0, -132(%rbp)
	jmp	.LBB3_43
.LBB3_38:                               # %if.else.64
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_41
# BB#39:                                # %land.lhs.true.67
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB3_41
# BB#40:                                # %if.then.71
	movl	$1, -132(%rbp)
	jmp	.LBB3_42
.LBB3_41:                               # %if.else.72
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB3_42:                               # %if.end.74
	jmp	.LBB3_43
.LBB3_43:                               # %if.end.75
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB3_45
.LBB3_44:                               # %if.then.78
	jmp	.LBB3_46
.LBB3_45:                               # %if.else.79
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_item_linked_transform, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_48
.LBB3_46:                               # %if.end.80
	jmp	.LBB3_47
.LBB3_47:                               # %do.end.81
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_image
	movl	$7, %esi
	movl	$4, %edx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_image_item_list_get_list
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_image_item_list_filter
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	movl	-36(%rbp), %r10d
	movl	-40(%rbp), %r11d
	movq	-48(%rbp), %rax
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movq	%rax, 16(%rsp)
	callq	gimp_image_item_list_transform
	movq	-64(%rbp), %rdi
	callq	g_list_free
.LBB3_48:                               # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_item_linked_transform, .Lfunc_end3-gimp_item_linked_transform
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_item_linked_translate,@object # @__func__.gimp_item_linked_translate
.L__func__.gimp_item_linked_translate:
	.asciz	"gimp_item_linked_translate"
	.size	.L__func__.gimp_item_linked_translate, 27

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_ITEM (item)"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp_item_get_linked (item) == TRUE"
	.size	.L.str.2, 36

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp_item_is_attached (item)"
	.size	.L.str.3, 29

	.type	.L__func__.gimp_item_linked_flip,@object # @__func__.gimp_item_linked_flip
.L__func__.gimp_item_linked_flip:
	.asciz	"gimp_item_linked_flip"
	.size	.L__func__.gimp_item_linked_flip, 22

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.4, 26

	.type	.L__func__.gimp_item_linked_rotate,@object # @__func__.gimp_item_linked_rotate
.L__func__.gimp_item_linked_rotate:
	.asciz	"gimp_item_linked_rotate"
	.size	.L__func__.gimp_item_linked_rotate, 24

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"undo-type\004Rotate Items"
	.size	.L.str.5, 23

	.type	.L__func__.gimp_item_linked_transform,@object # @__func__.gimp_item_linked_transform
.L__func__.gimp_item_linked_transform:
	.asciz	"gimp_item_linked_transform"
	.size	.L__func__.gimp_item_linked_transform, 27

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"progress == NULL || GIMP_IS_PROGRESS (progress)"
	.size	.L.str.6, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
