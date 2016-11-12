	.text
	.file	"gimpimage-item-list.bc"
	.globl	gimp_image_item_list_translate
	.align	16, 0x90
	.type	gimp_image_item_list_translate,@function
gimp_image_item_list_translate:         # @gimp_image_item_list_translate
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
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
	movabsq	$.L__func__.gimp_image_item_list_translate, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_27
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	cmpq	$0, -16(%rbp)
	je	.LBB0_27
# BB#13:                                # %if.then.12
	cmpl	$0, -28(%rbp)
	je	.LBB0_16
# BB#14:                                # %land.lhs.true.15
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_16
# BB#15:                                # %if.then.17
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.2, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	g_dpgettext
	movl	$20, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB0_16:                               # %if.end.20
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB0_17:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB0_23
# BB#18:                                # %for.body
                                        #   in Loop: Header=BB0_17 Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	movq	%rax, %rdi
	callq	gimp_item_translate
# BB#19:                                # %for.inc
                                        #   in Loop: Header=BB0_17 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB0_21
# BB#20:                                # %cond.true
                                        #   in Loop: Header=BB0_17 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB0_22
.LBB0_21:                               # %cond.false
                                        #   in Loop: Header=BB0_17 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB0_22
.LBB0_22:                               # %cond.end
                                        #   in Loop: Header=BB0_17 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -64(%rbp)
	jmp	.LBB0_17
.LBB0_23:                               # %for.end
	cmpl	$0, -28(%rbp)
	je	.LBB0_26
# BB#24:                                # %land.lhs.true.27
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_26
# BB#25:                                # %if.then.30
	movq	-8(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB0_26:                               # %if.end.32
	jmp	.LBB0_27
.LBB0_27:                               # %if.end.33
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_image_item_list_translate, .Lfunc_end0-gimp_image_item_list_translate
	.cfi_endproc

	.globl	gimp_image_item_list_flip
	.align	16, 0x90
	.type	gimp_image_item_list_flip,@function
gimp_image_item_list_flip:              # @gimp_image_item_list_flip
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
	movl	%r8d, -44(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_item_list_flip, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_37
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	jmp	.LBB1_13
.LBB1_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB1_15
# BB#14:                                # %if.then.20
	movl	$0, -92(%rbp)
	jmp	.LBB1_20
.LBB1_15:                               # %if.else.21
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_18
# BB#16:                                # %land.lhs.true.24
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB1_18
# BB#17:                                # %if.then.28
	movl	$1, -92(%rbp)
	jmp	.LBB1_19
.LBB1_18:                               # %if.else.29
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB1_19:                               # %if.end.31
	jmp	.LBB1_20
.LBB1_20:                               # %if.end.32
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB1_22
# BB#21:                                # %if.then.35
	jmp	.LBB1_23
.LBB1_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_item_list_flip, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_37
.LBB1_23:                               # %if.end.37
	jmp	.LBB1_24
.LBB1_24:                               # %do.end.38
	cmpq	$0, -16(%rbp)
	je	.LBB1_37
# BB#25:                                # %if.then.40
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB1_27
# BB#26:                                # %if.then.43
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.4, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movl	$32, %esi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB1_27:                               # %if.end.46
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)
.LBB1_28:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -104(%rbp)
	je	.LBB1_34
# BB#29:                                # %for.body
                                        #   in Loop: Header=BB1_28 Depth=1
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-44(%rbp), %ecx
	movq	%rax, %rdi
	callq	gimp_item_flip
# BB#30:                                # %for.inc
                                        #   in Loop: Header=BB1_28 Depth=1
	cmpq	$0, -104(%rbp)
	je	.LBB1_32
# BB#31:                                # %cond.true
                                        #   in Loop: Header=BB1_28 Depth=1
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB1_33
.LBB1_32:                               # %cond.false
                                        #   in Loop: Header=BB1_28 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB1_33
.LBB1_33:                               # %cond.end
                                        #   in Loop: Header=BB1_28 Depth=1
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)
	jmp	.LBB1_28
.LBB1_34:                               # %for.end
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB1_36
# BB#35:                                # %if.then.54
	movq	-8(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB1_36:                               # %if.end.56
	jmp	.LBB1_37
.LBB1_37:                               # %if.end.57
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_image_item_list_flip, .Lfunc_end1-gimp_image_item_list_flip
	.cfi_endproc

	.globl	gimp_image_item_list_rotate
	.align	16, 0x90
	.type	gimp_image_item_list_rotate,@function
gimp_image_item_list_rotate:            # @gimp_image_item_list_rotate
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
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm1, -48(%rbp)
	movl	%r8d, -52(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_item_list_rotate, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_37
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	jmp	.LBB2_13
.LBB2_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB2_15
# BB#14:                                # %if.then.20
	movl	$0, -100(%rbp)
	jmp	.LBB2_20
.LBB2_15:                               # %if.else.21
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_18
# BB#16:                                # %land.lhs.true.24
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB2_18
# BB#17:                                # %if.then.28
	movl	$1, -100(%rbp)
	jmp	.LBB2_19
.LBB2_18:                               # %if.else.29
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB2_19:                               # %if.end.31
	jmp	.LBB2_20
.LBB2_20:                               # %if.end.32
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB2_22
# BB#21:                                # %if.then.35
	jmp	.LBB2_23
.LBB2_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_item_list_rotate, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_37
.LBB2_23:                               # %if.end.37
	jmp	.LBB2_24
.LBB2_24:                               # %do.end.38
	cmpq	$0, -16(%rbp)
	je	.LBB2_37
# BB#25:                                # %if.then.40
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB2_27
# BB#26:                                # %if.then.43
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.5, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movl	$32, %esi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB2_27:                               # %if.end.46
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)
.LBB2_28:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -112(%rbp)
	je	.LBB2_34
# BB#29:                                # %for.body
                                        #   in Loop: Header=BB2_28 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-52(%rbp), %ecx
	movq	%rax, %rdi
	callq	gimp_item_rotate
# BB#30:                                # %for.inc
                                        #   in Loop: Header=BB2_28 Depth=1
	cmpq	$0, -112(%rbp)
	je	.LBB2_32
# BB#31:                                # %cond.true
                                        #   in Loop: Header=BB2_28 Depth=1
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB2_33
.LBB2_32:                               # %cond.false
                                        #   in Loop: Header=BB2_28 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB2_33
.LBB2_33:                               # %cond.end
                                        #   in Loop: Header=BB2_28 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -112(%rbp)
	jmp	.LBB2_28
.LBB2_34:                               # %for.end
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB2_36
# BB#35:                                # %if.then.54
	movq	-8(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB2_36:                               # %if.end.56
	jmp	.LBB2_37
.LBB2_37:                               # %if.end.57
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_image_item_list_rotate, .Lfunc_end2-gimp_image_item_list_rotate
	.cfi_endproc

	.globl	gimp_image_item_list_transform
	.align	16, 0x90
	.type	gimp_image_item_list_transform,@function
gimp_image_item_list_transform:         # @gimp_image_item_list_transform
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
	subq	$208, %rsp
	movq	32(%rbp), %rax
	movl	24(%rbp), %r10d
	movl	16(%rbp), %r11d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movl	%r11d, -44(%rbp)
	movl	%r10d, -48(%rbp)
	movq	%rax, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_item_list_transform, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_50
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB3_15
# BB#14:                                # %if.then.20
	movl	$0, -100(%rbp)
	jmp	.LBB3_20
.LBB3_15:                               # %if.else.21
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_18
# BB#16:                                # %land.lhs.true.24
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB3_18
# BB#17:                                # %if.then.28
	movl	$1, -100(%rbp)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.29
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB3_19:                               # %if.end.31
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.32
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.35
	jmp	.LBB3_23
.LBB3_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_item_list_transform, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_50
.LBB3_23:                               # %if.end.37
	jmp	.LBB3_24
.LBB3_24:                               # %do.end.38
	jmp	.LBB3_25
.LBB3_25:                               # %do.body.39
	cmpq	$0, -56(%rbp)
	je	.LBB3_34
# BB#26:                                # %lor.lhs.false
	movq	-56(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB3_28
# BB#27:                                # %if.then.49
	movl	$0, -124(%rbp)
	jmp	.LBB3_33
.LBB3_28:                               # %if.else.50
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_31
# BB#29:                                # %land.lhs.true.53
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB3_31
# BB#30:                                # %if.then.57
	movl	$1, -124(%rbp)
	jmp	.LBB3_32
.LBB3_31:                               # %if.else.58
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB3_32:                               # %if.end.60
	jmp	.LBB3_33
.LBB3_33:                               # %if.end.61
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB3_35
.LBB3_34:                               # %if.then.64
	jmp	.LBB3_36
.LBB3_35:                               # %if.else.65
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_item_list_transform, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_50
.LBB3_36:                               # %if.end.66
	jmp	.LBB3_37
.LBB3_37:                               # %do.end.67
	cmpq	$0, -16(%rbp)
	je	.LBB3_50
# BB#38:                                # %if.then.69
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB3_40
# BB#39:                                # %if.then.72
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.7, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movl	$32, %esi
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB3_40:                               # %if.end.75
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)
.LBB3_41:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -136(%rbp)
	je	.LBB3_47
# BB#42:                                # %for.body
                                        #   in Loop: Header=BB3_41 Depth=1
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %r8d
	movl	-44(%rbp), %r9d
	movl	-48(%rbp), %r10d
	movq	-56(%rbp), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_item_transform
# BB#43:                                # %for.inc
                                        #   in Loop: Header=BB3_41 Depth=1
	cmpq	$0, -136(%rbp)
	je	.LBB3_45
# BB#44:                                # %cond.true
                                        #   in Loop: Header=BB3_41 Depth=1
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB3_46
.LBB3_45:                               # %cond.false
                                        #   in Loop: Header=BB3_41 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB3_46
.LBB3_46:                               # %cond.end
                                        #   in Loop: Header=BB3_41 Depth=1
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -136(%rbp)
	jmp	.LBB3_41
.LBB3_47:                               # %for.end
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB3_49
# BB#48:                                # %if.then.83
	movq	-8(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB3_49:                               # %if.end.85
	jmp	.LBB3_50
.LBB3_50:                               # %if.end.86
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_image_item_list_transform, .Lfunc_end3-gimp_image_item_list_transform
	.cfi_endproc

	.globl	gimp_image_item_list_get_list
	.align	16, 0x90
	.type	gimp_image_item_list_get_list,@function
gimp_image_item_list_get_list:          # @gimp_image_item_list_get_list
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	$0, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_item_list_get_list, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_46
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movl	-20(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB4_23
# BB#13:                                # %if.then.12
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_layer_list
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB4_14:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB4_22
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB4_14 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movl	-24(%rbp), %esi
	callq	gimp_item_is_in_set
	cmpl	$0, %eax
	je	.LBB4_17
# BB#16:                                # %if.then.18
                                        #   in Loop: Header=BB4_14 Depth=1
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -48(%rbp)
.LBB4_17:                               # %if.end.20
                                        #   in Loop: Header=BB4_14 Depth=1
	jmp	.LBB4_18
.LBB4_18:                               # %for.inc
                                        #   in Loop: Header=BB4_14 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB4_20
# BB#19:                                # %cond.true
                                        #   in Loop: Header=BB4_14 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB4_21
.LBB4_20:                               # %cond.false
                                        #   in Loop: Header=BB4_14 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB4_21
.LBB4_21:                               # %cond.end
                                        #   in Loop: Header=BB4_14 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB4_14
.LBB4_22:                               # %for.end
	movq	-32(%rbp), %rdi
	callq	g_list_free
.LBB4_23:                               # %if.end.22
	movl	-20(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB4_34
# BB#24:                                # %if.then.25
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_channel_list
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB4_25:                               # %for.cond.27
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB4_33
# BB#26:                                # %for.body.29
                                        #   in Loop: Header=BB4_25 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	movl	-24(%rbp), %esi
	callq	gimp_item_is_in_set
	cmpl	$0, %eax
	je	.LBB4_28
# BB#27:                                # %if.then.35
                                        #   in Loop: Header=BB4_25 Depth=1
	movq	-48(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -48(%rbp)
.LBB4_28:                               # %if.end.37
                                        #   in Loop: Header=BB4_25 Depth=1
	jmp	.LBB4_29
.LBB4_29:                               # %for.inc.38
                                        #   in Loop: Header=BB4_25 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB4_31
# BB#30:                                # %cond.true.40
                                        #   in Loop: Header=BB4_25 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB4_32
.LBB4_31:                               # %cond.false.42
                                        #   in Loop: Header=BB4_25 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB4_32
.LBB4_32:                               # %cond.end.43
                                        #   in Loop: Header=BB4_25 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB4_25
.LBB4_33:                               # %for.end.45
	movq	-32(%rbp), %rdi
	callq	g_list_free
.LBB4_34:                               # %if.end.46
	movl	-20(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB4_45
# BB#35:                                # %if.then.49
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_vectors_list
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB4_36:                               # %for.cond.51
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB4_44
# BB#37:                                # %for.body.53
                                        #   in Loop: Header=BB4_36 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	movl	-24(%rbp), %esi
	callq	gimp_item_is_in_set
	cmpl	$0, %eax
	je	.LBB4_39
# BB#38:                                # %if.then.59
                                        #   in Loop: Header=BB4_36 Depth=1
	movq	-48(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -48(%rbp)
.LBB4_39:                               # %if.end.61
                                        #   in Loop: Header=BB4_36 Depth=1
	jmp	.LBB4_40
.LBB4_40:                               # %for.inc.62
                                        #   in Loop: Header=BB4_36 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB4_42
# BB#41:                                # %cond.true.64
                                        #   in Loop: Header=BB4_36 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB4_43
.LBB4_42:                               # %cond.false.66
                                        #   in Loop: Header=BB4_36 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB4_43
.LBB4_43:                               # %cond.end.67
                                        #   in Loop: Header=BB4_36 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB4_36
.LBB4_44:                               # %for.end.69
	movq	-32(%rbp), %rdi
	callq	g_list_free
.LBB4_45:                               # %if.end.70
	movq	-48(%rbp), %rdi
	callq	g_list_reverse
	movq	%rax, -8(%rbp)
.LBB4_46:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_image_item_list_get_list, .Lfunc_end4-gimp_image_item_list_get_list
	.cfi_endproc

	.globl	gimp_image_item_list_filter
	.align	16, 0x90
	.type	gimp_image_item_list_filter,@function
gimp_image_item_list_filter:            # @gimp_image_item_list_filter
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB5_15
.LBB5_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB5_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB5_14
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB5_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB5_7
.LBB5_6:                                # %cond.false
                                        #   in Loop: Header=BB5_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB5_7
.LBB5_7:                                # %cond.end
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_image_item_list_remove_children
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, 8(%rsi)
	cmpq	$0, -40(%rbp)
	je	.LBB5_9
# BB#8:                                 # %if.then.6
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
.LBB5_9:                                # %if.end.7
                                        #   in Loop: Header=BB5_3 Depth=1
	jmp	.LBB5_10
.LBB5_10:                               # %for.inc
                                        #   in Loop: Header=BB5_3 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB5_12
# BB#11:                                # %cond.true.9
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB5_13
.LBB5_12:                               # %cond.false.11
                                        #   in Loop: Header=BB5_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB5_13
.LBB5_13:                               # %cond.end.12
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB5_3
.LBB5_14:                               # %for.end
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB5_15:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_image_item_list_filter, .Lfunc_end5-gimp_image_item_list_filter
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_item_list_remove_children,@function
gimp_image_item_list_remove_children:   # @gimp_image_item_list_remove_children
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)
.LBB6_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB6_8
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB6_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB6_5
.LBB6_4:                                # %cond.false
                                        #   in Loop: Header=BB6_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB6_5
.LBB6_5:                                # %cond.end
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_viewable_is_ancestor
	cmpl	$0, %eax
	je	.LBB6_7
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_remove
	movq	%rax, -8(%rbp)
.LBB6_7:                                # %if.end
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_1
.LBB6_8:                                # %while.end
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_image_item_list_remove_children, .Lfunc_end6-gimp_image_item_list_remove_children
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_image_item_list_translate,@object # @__func__.gimp_image_item_list_translate
.L__func__.gimp_image_item_list_translate:
	.asciz	"gimp_image_item_list_translate"
	.size	.L__func__.gimp_image_item_list_translate, 31

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"undo-type\004Translate Items"
	.size	.L.str.2, 26

	.type	.L__func__.gimp_image_item_list_flip,@object # @__func__.gimp_image_item_list_flip
.L__func__.gimp_image_item_list_flip:
	.asciz	"gimp_image_item_list_flip"
	.size	.L__func__.gimp_image_item_list_flip, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.3, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"undo-type\004Flip Items"
	.size	.L.str.4, 21

	.type	.L__func__.gimp_image_item_list_rotate,@object # @__func__.gimp_image_item_list_rotate
.L__func__.gimp_image_item_list_rotate:
	.asciz	"gimp_image_item_list_rotate"
	.size	.L__func__.gimp_image_item_list_rotate, 28

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"undo-type\004Rotate Items"
	.size	.L.str.5, 23

	.type	.L__func__.gimp_image_item_list_transform,@object # @__func__.gimp_image_item_list_transform
.L__func__.gimp_image_item_list_transform:
	.asciz	"gimp_image_item_list_transform"
	.size	.L__func__.gimp_image_item_list_transform, 31

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"progress == NULL || GIMP_IS_PROGRESS (progress)"
	.size	.L.str.6, 48

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"undo-type\004Transform Items"
	.size	.L.str.7, 26

	.type	.L__func__.gimp_image_item_list_get_list,@object # @__func__.gimp_image_item_list_get_list
.L__func__.gimp_image_item_list_get_list:
	.asciz	"gimp_image_item_list_get_list"
	.size	.L__func__.gimp_image_item_list_get_list, 30


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
