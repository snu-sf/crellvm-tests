	.text
	.file	"gimpimage-pick-layer.bc"
	.globl	gimp_image_pick_layer
	.align	16, 0x90
	.type	gimp_image_pick_layer,@function
gimp_image_pick_layer:                  # @gimp_image_pick_layer
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
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_image_get_type
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
	movabsq	$.L__func__.gimp_image_pick_layer, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_22
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_layer_list
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB0_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB0_21
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-76(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movq	-72(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-20(%rbp), %ecx
	subl	-76(%rbp), %ecx
	movl	-24(%rbp), %r8d
	subl	-80(%rbp), %r8d
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%r8d, %edx
	callq	gimp_pickable_get_opacity_at
	cmpl	$63, %eax
	jle	.LBB0_16
# BB#15:                                # %if.then.23
	movq	-32(%rbp), %rdi
	callq	g_list_free
	movq	-72(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	jmp	.LBB0_22
.LBB0_16:                               # %if.end.24
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_17
.LBB0_17:                               # %for.inc
                                        #   in Loop: Header=BB0_13 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB0_19
# BB#18:                                # %cond.true
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB0_20
.LBB0_19:                               # %cond.false
                                        #   in Loop: Header=BB0_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB0_20
.LBB0_20:                               # %cond.end
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB0_13
.LBB0_21:                               # %for.end
	movq	-32(%rbp), %rdi
	callq	g_list_free
	movq	$0, -8(%rbp)
.LBB0_22:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_image_pick_layer, .Lfunc_end0-gimp_image_pick_layer
	.cfi_endproc

	.globl	gimp_image_pick_layer_by_bounds
	.align	16, 0x90
	.type	gimp_image_pick_layer_by_bounds,@function
gimp_image_pick_layer_by_bounds:        # @gimp_image_pick_layer_by_bounds
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_pick_layer_by_bounds, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB1_27
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_layer_list
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB1_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB1_26
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB1_13 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_visible
	cmpl	$0, %eax
	je	.LBB1_21
# BB#15:                                # %if.then.18
                                        #   in Loop: Header=BB1_13 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-76(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movq	-72(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	%eax, -84(%rbp)
	movq	-72(%rbp), %rdx
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	%eax, -88(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	.LBB1_20
# BB#16:                                # %land.lhs.true.32
                                        #   in Loop: Header=BB1_13 Depth=1
	movl	-24(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jl	.LBB1_20
# BB#17:                                # %land.lhs.true.34
                                        #   in Loop: Header=BB1_13 Depth=1
	movl	-20(%rbp), %eax
	movl	-76(%rbp), %ecx
	addl	-84(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB1_20
# BB#18:                                # %land.lhs.true.36
                                        #   in Loop: Header=BB1_13 Depth=1
	movl	-24(%rbp), %eax
	movl	-80(%rbp), %ecx
	addl	-88(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB1_20
# BB#19:                                # %if.then.39
	movq	-32(%rbp), %rdi
	callq	g_list_free
	movq	-72(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	jmp	.LBB1_27
.LBB1_20:                               # %if.end.40
                                        #   in Loop: Header=BB1_13 Depth=1
	jmp	.LBB1_21
.LBB1_21:                               # %if.end.41
                                        #   in Loop: Header=BB1_13 Depth=1
	jmp	.LBB1_22
.LBB1_22:                               # %for.inc
                                        #   in Loop: Header=BB1_13 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB1_24
# BB#23:                                # %cond.true
                                        #   in Loop: Header=BB1_13 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB1_25
.LBB1_24:                               # %cond.false
                                        #   in Loop: Header=BB1_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB1_25
.LBB1_25:                               # %cond.end
                                        #   in Loop: Header=BB1_13 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB1_13
.LBB1_26:                               # %for.end
	movq	-32(%rbp), %rdi
	callq	g_list_free
	movq	$0, -8(%rbp)
.LBB1_27:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_image_pick_layer_by_bounds, .Lfunc_end1-gimp_image_pick_layer_by_bounds
	.cfi_endproc

	.globl	gimp_image_pick_text_layer
	.align	16, 0x90
	.type	gimp_image_pick_text_layer,@function
gimp_image_pick_text_layer:             # @gimp_image_pick_text_layer
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_pick_text_layer, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_37
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_layer_list
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB2_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB2_36
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB2_13 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-76(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_text_layer_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB2_16
# BB#15:                                # %if.then.26
                                        #   in Loop: Header=BB2_13 Depth=1
	movl	$0, -100(%rbp)
	jmp	.LBB2_21
.LBB2_16:                               # %if.else.27
                                        #   in Loop: Header=BB2_13 Depth=1
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_19
# BB#17:                                # %land.lhs.true.30
                                        #   in Loop: Header=BB2_13 Depth=1
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB2_19
# BB#18:                                # %if.then.34
                                        #   in Loop: Header=BB2_13 Depth=1
	movl	$1, -100(%rbp)
	jmp	.LBB2_20
.LBB2_19:                               # %if.else.35
                                        #   in Loop: Header=BB2_13 Depth=1
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB2_20:                               # %if.end.37
                                        #   in Loop: Header=BB2_13 Depth=1
	jmp	.LBB2_21
.LBB2_21:                               # %if.end.38
                                        #   in Loop: Header=BB2_13 Depth=1
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB2_28
# BB#22:                                # %land.lhs.true.41
                                        #   in Loop: Header=BB2_13 Depth=1
	movl	-20(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	.LBB2_28
# BB#23:                                # %land.lhs.true.43
                                        #   in Loop: Header=BB2_13 Depth=1
	movl	-24(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jl	.LBB2_28
# BB#24:                                # %land.lhs.true.45
                                        #   in Loop: Header=BB2_13 Depth=1
	movl	-20(%rbp), %eax
	movl	-76(%rbp), %ecx
	movq	-72(%rbp), %rdx
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movl	%ecx, -120(%rbp)        # 4-byte Spill
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	-120(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	-116(%rbp), %eax        # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB2_28
# BB#25:                                # %land.lhs.true.50
                                        #   in Loop: Header=BB2_13 Depth=1
	movl	-24(%rbp), %eax
	movl	-80(%rbp), %ecx
	movq	-72(%rbp), %rdx
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movl	%ecx, -136(%rbp)        # 4-byte Spill
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	-136(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	-132(%rbp), %eax        # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB2_28
# BB#26:                                # %land.lhs.true.56
                                        #   in Loop: Header=BB2_13 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_visible
	cmpl	$0, %eax
	je	.LBB2_28
# BB#27:                                # %if.then.61
	movq	-32(%rbp), %rdi
	callq	g_list_free
	movq	-72(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	callq	gimp_text_layer_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
	jmp	.LBB2_37
.LBB2_28:                               # %if.else.64
                                        #   in Loop: Header=BB2_13 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-20(%rbp), %ecx
	subl	-76(%rbp), %ecx
	movl	-24(%rbp), %edx
	subl	-80(%rbp), %edx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gimp_pickable_get_opacity_at
	cmpl	$63, %eax
	jle	.LBB2_30
# BB#29:                                # %if.then.70
	jmp	.LBB2_36
.LBB2_30:                               # %if.end.71
                                        #   in Loop: Header=BB2_13 Depth=1
	jmp	.LBB2_31
.LBB2_31:                               # %if.end.72
                                        #   in Loop: Header=BB2_13 Depth=1
	jmp	.LBB2_32
.LBB2_32:                               # %for.inc
                                        #   in Loop: Header=BB2_13 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB2_34
# BB#33:                                # %cond.true
                                        #   in Loop: Header=BB2_13 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB2_35
.LBB2_34:                               # %cond.false
                                        #   in Loop: Header=BB2_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB2_35
.LBB2_35:                               # %cond.end
                                        #   in Loop: Header=BB2_13 Depth=1
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB2_13
.LBB2_36:                               # %for.end
	movq	-32(%rbp), %rdi
	callq	g_list_free
	movq	$0, -8(%rbp)
.LBB2_37:                               # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_image_pick_text_layer, .Lfunc_end2-gimp_image_pick_text_layer
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_image_pick_layer,@object # @__func__.gimp_image_pick_layer
.L__func__.gimp_image_pick_layer:
	.asciz	"gimp_image_pick_layer"
	.size	.L__func__.gimp_image_pick_layer, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.1, 22

	.type	.L__func__.gimp_image_pick_layer_by_bounds,@object # @__func__.gimp_image_pick_layer_by_bounds
.L__func__.gimp_image_pick_layer_by_bounds:
	.asciz	"gimp_image_pick_layer_by_bounds"
	.size	.L__func__.gimp_image_pick_layer_by_bounds, 32

	.type	.L__func__.gimp_image_pick_text_layer,@object # @__func__.gimp_image_pick_text_layer
.L__func__.gimp_image_pick_text_layer:
	.asciz	"gimp_image_pick_text_layer"
	.size	.L__func__.gimp_image_pick_text_layer, 27


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
