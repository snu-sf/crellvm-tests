	.text
	.file	"gimpplugin-cleanup.bc"
	.globl	gimp_plug_in_cleanup_undo_group_start
	.align	16, 0x90
	.type	gimp_plug_in_cleanup_undo_group_start,@function
gimp_plug_in_cleanup_undo_group_start:  # @gimp_plug_in_cleanup_undo_group_start
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_plug_in_get_type
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
	movabsq	$.L__func__.gimp_plug_in_cleanup_undo_group_start, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_27
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB0_15
# BB#14:                                # %if.then.20
	movl	$0, -84(%rbp)
	jmp	.LBB0_20
.LBB0_15:                               # %if.else.21
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_18
# BB#16:                                # %land.lhs.true.24
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB0_18
# BB#17:                                # %if.then.28
	movl	$1, -84(%rbp)
	jmp	.LBB0_19
.LBB0_18:                               # %if.else.29
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB0_19:                               # %if.end.31
	jmp	.LBB0_20
.LBB0_20:                               # %if.end.32
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB0_22
# BB#21:                                # %if.then.35
	jmp	.LBB0_23
.LBB0_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_cleanup_undo_group_start, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_27
.LBB0_23:                               # %if.end.37
	jmp	.LBB0_24
.LBB0_24:                               # %do.end.38
	movq	-16(%rbp), %rdi
	callq	gimp_plug_in_get_proc_frame
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_plug_in_cleanup_image_get
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB0_26
# BB#25:                                # %if.then.42
	movq	-24(%rbp), %rdi
	callq	gimp_plug_in_cleanup_image_new
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_undo_group_count
	movq	-40(%rbp), %rdi
	movl	%eax, 12(%rdi)
	movq	-32(%rbp), %rdi
	movq	80(%rdi), %rdi
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_list_prepend
	movq	-32(%rbp), %rcx
	movq	%rax, 80(%rcx)
.LBB0_26:                               # %if.end.47
	movl	$1, -4(%rbp)
.LBB0_27:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_plug_in_cleanup_undo_group_start, .Lfunc_end0-gimp_plug_in_cleanup_undo_group_start
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_cleanup_image_get,@function
gimp_plug_in_cleanup_image_get:         # @gimp_plug_in_cleanup_image_get
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	80(%rsi), %rsi
	movq	%rsi, -32(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB1_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB1_4
# BB#3:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_10
.LBB1_4:                                # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_5
.LBB1_5:                                # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB1_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB1_8
.LBB1_7:                                # %cond.false
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB1_8
.LBB1_8:                                # %cond.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB1_1
.LBB1_9:                                # %for.end
	movq	$0, -8(%rbp)
.LBB1_10:                               # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_plug_in_cleanup_image_get, .Lfunc_end1-gimp_plug_in_cleanup_image_get
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_cleanup_image_new,@function
gimp_plug_in_cleanup_image_new:         # @gimp_plug_in_cleanup_image_new
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
	movl	$16, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	g_slice_alloc0
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_ID
	movq	-16(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_plug_in_cleanup_image_new, .Lfunc_end2-gimp_plug_in_cleanup_image_new
	.cfi_endproc

	.globl	gimp_plug_in_cleanup_undo_group_end
	.align	16, 0x90
	.type	gimp_plug_in_cleanup_undo_group_end,@function
gimp_plug_in_cleanup_undo_group_end:    # @gimp_plug_in_cleanup_undo_group_end
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_plug_in_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_cleanup_undo_group_end, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_29
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB3_15
# BB#14:                                # %if.then.20
	movl	$0, -84(%rbp)
	jmp	.LBB3_20
.LBB3_15:                               # %if.else.21
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_18
# BB#16:                                # %land.lhs.true.24
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB3_18
# BB#17:                                # %if.then.28
	movl	$1, -84(%rbp)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.29
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB3_19:                               # %if.end.31
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.32
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.35
	jmp	.LBB3_23
.LBB3_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_cleanup_undo_group_end, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_29
.LBB3_23:                               # %if.end.37
	jmp	.LBB3_24
.LBB3_24:                               # %do.end.38
	movq	-16(%rbp), %rdi
	callq	gimp_plug_in_get_proc_frame
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_plug_in_cleanup_image_get
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB3_26
# BB#25:                                # %if.then.42
	movl	$0, -4(%rbp)
	jmp	.LBB3_29
.LBB3_26:                               # %if.end.43
	movq	-40(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-24(%rbp), %rdi
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	callq	gimp_image_get_undo_group_count
	subl	$1, %eax
	movl	-92(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB3_28
# BB#27:                                # %if.then.46
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_remove
	movq	-32(%rbp), %rsi
	movq	%rax, 80(%rsi)
	movq	-40(%rbp), %rdi
	callq	gimp_plug_in_cleanup_image_free
.LBB3_28:                               # %if.end.49
	movl	$1, -4(%rbp)
.LBB3_29:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_plug_in_cleanup_undo_group_end, .Lfunc_end3-gimp_plug_in_cleanup_undo_group_end
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_cleanup_image_free,@function
gimp_plug_in_cleanup_image_free:        # @gimp_plug_in_cleanup_image_free
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movl	$16, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#2:                                 # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_plug_in_cleanup_image_free, .Lfunc_end4-gimp_plug_in_cleanup_image_free
	.cfi_endproc

	.globl	gimp_plug_in_cleanup_add_shadow
	.align	16, 0x90
	.type	gimp_plug_in_cleanup_add_shadow,@function
gimp_plug_in_cleanup_add_shadow:        # @gimp_plug_in_cleanup_add_shadow
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_plug_in_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_cleanup_add_shadow, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB5_27
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB5_15
# BB#14:                                # %if.then.20
	movl	$0, -84(%rbp)
	jmp	.LBB5_20
.LBB5_15:                               # %if.else.21
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_18
# BB#16:                                # %land.lhs.true.24
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB5_18
# BB#17:                                # %if.then.28
	movl	$1, -84(%rbp)
	jmp	.LBB5_19
.LBB5_18:                               # %if.else.29
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB5_19:                               # %if.end.31
	jmp	.LBB5_20
.LBB5_20:                               # %if.end.32
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB5_22
# BB#21:                                # %if.then.35
	jmp	.LBB5_23
.LBB5_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_cleanup_add_shadow, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB5_27
.LBB5_23:                               # %if.end.37
	jmp	.LBB5_24
.LBB5_24:                               # %do.end.38
	movq	-16(%rbp), %rdi
	callq	gimp_plug_in_get_proc_frame
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_plug_in_cleanup_item_get
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB5_26
# BB#25:                                # %if.then.44
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_plug_in_cleanup_item_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-32(%rbp), %rsi
	movq	%rax, 88(%rsi)
.LBB5_26:                               # %if.end.50
	movq	-40(%rbp), %rax
	movl	$1, 12(%rax)
	movl	$1, -4(%rbp)
.LBB5_27:                               # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_plug_in_cleanup_add_shadow, .Lfunc_end5-gimp_plug_in_cleanup_add_shadow
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_cleanup_item_get,@function
gimp_plug_in_cleanup_item_get:          # @gimp_plug_in_cleanup_item_get
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	88(%rsi), %rsi
	movq	%rsi, -32(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB6_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB6_4
# BB#3:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB6_10
.LBB6_4:                                # %if.end
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_5
.LBB6_5:                                # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB6_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB6_8
.LBB6_7:                                # %cond.false
                                        #   in Loop: Header=BB6_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB6_8
.LBB6_8:                                # %cond.end
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB6_1
.LBB6_9:                                # %for.end
	movq	$0, -8(%rbp)
.LBB6_10:                               # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_plug_in_cleanup_item_get, .Lfunc_end6-gimp_plug_in_cleanup_item_get
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_cleanup_item_new,@function
gimp_plug_in_cleanup_item_new:          # @gimp_plug_in_cleanup_item_new
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
	movl	$16, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	g_slice_alloc0
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_ID
	movq	-16(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_plug_in_cleanup_item_new, .Lfunc_end7-gimp_plug_in_cleanup_item_new
	.cfi_endproc

	.globl	gimp_plug_in_cleanup_remove_shadow
	.align	16, 0x90
	.type	gimp_plug_in_cleanup_remove_shadow,@function
gimp_plug_in_cleanup_remove_shadow:     # @gimp_plug_in_cleanup_remove_shadow
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_plug_in_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_cleanup_remove_shadow, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB8_29
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB8_15
# BB#14:                                # %if.then.20
	movl	$0, -84(%rbp)
	jmp	.LBB8_20
.LBB8_15:                               # %if.else.21
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_18
# BB#16:                                # %land.lhs.true.24
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB8_18
# BB#17:                                # %if.then.28
	movl	$1, -84(%rbp)
	jmp	.LBB8_19
.LBB8_18:                               # %if.else.29
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB8_19:                               # %if.end.31
	jmp	.LBB8_20
.LBB8_20:                               # %if.end.32
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB8_22
# BB#21:                                # %if.then.35
	jmp	.LBB8_23
.LBB8_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_cleanup_remove_shadow, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB8_29
.LBB8_23:                               # %if.end.37
	jmp	.LBB8_24
.LBB8_24:                               # %do.end.38
	movq	-16(%rbp), %rdi
	callq	gimp_plug_in_get_proc_frame
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_plug_in_cleanup_item_get
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB8_26
# BB#25:                                # %if.then.44
	movl	$0, -4(%rbp)
	jmp	.LBB8_29
.LBB8_26:                               # %if.end.45
	movq	-40(%rbp), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB8_28
# BB#27:                                # %if.then.47
	movl	$0, -4(%rbp)
	jmp	.LBB8_29
.LBB8_28:                               # %if.end.48
	movq	-32(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_remove
	movq	-32(%rbp), %rsi
	movq	%rax, 88(%rsi)
	movq	-40(%rbp), %rdi
	callq	gimp_plug_in_cleanup_item_free
	movl	$1, -4(%rbp)
.LBB8_29:                               # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_plug_in_cleanup_remove_shadow, .Lfunc_end8-gimp_plug_in_cleanup_remove_shadow
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_cleanup_item_free,@function
gimp_plug_in_cleanup_item_free:         # @gimp_plug_in_cleanup_item_free
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movl	$16, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#2:                                 # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_plug_in_cleanup_item_free, .Lfunc_end9-gimp_plug_in_cleanup_item_free
	.cfi_endproc

	.globl	gimp_plug_in_cleanup
	.align	16, 0x90
	.type	gimp_plug_in_cleanup,@function
gimp_plug_in_cleanup:                   # @gimp_plug_in_cleanup
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_plug_in_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_cleanup, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_36
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	jmp	.LBB10_13
.LBB10_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB10_15
# BB#14:                                # %if.then.13
	jmp	.LBB10_16
.LBB10_15:                              # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_cleanup, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_36
.LBB10_16:                              # %if.end.15
	jmp	.LBB10_17
.LBB10_17:                              # %do.end.16
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB10_18:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB10_26
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB10_18 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movq	-56(%rbp), %rax
	movl	8(%rax), %esi
	callq	gimp_image_get_by_ID
	movq	-56(%rbp), %rdi
	cmpq	(%rdi), %rax
	jne	.LBB10_21
# BB#20:                                # %if.then.21
                                        #   in Loop: Header=BB10_18 Depth=1
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_plug_in_cleanup_image
.LBB10_21:                              # %if.end.22
                                        #   in Loop: Header=BB10_18 Depth=1
	movq	-56(%rbp), %rdi
	callq	gimp_plug_in_cleanup_image_free
# BB#22:                                # %for.inc
                                        #   in Loop: Header=BB10_18 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB10_24
# BB#23:                                # %cond.true
                                        #   in Loop: Header=BB10_18 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB10_25
.LBB10_24:                              # %cond.false
                                        #   in Loop: Header=BB10_18 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB10_25
.LBB10_25:                              # %cond.end
                                        #   in Loop: Header=BB10_18 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB10_18
.LBB10_26:                              # %for.end
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	g_list_free
	movq	-16(%rbp), %rax
	movq	$0, 80(%rax)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB10_27:                              # %for.cond.26
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB10_35
# BB#28:                                # %for.body.28
                                        #   in Loop: Header=BB10_27 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movq	-64(%rbp), %rax
	movl	8(%rax), %esi
	callq	gimp_item_get_by_ID
	movq	-64(%rbp), %rdi
	cmpq	(%rdi), %rax
	jne	.LBB10_30
# BB#29:                                # %if.then.36
                                        #   in Loop: Header=BB10_27 Depth=1
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_plug_in_cleanup_item
.LBB10_30:                              # %if.end.37
                                        #   in Loop: Header=BB10_27 Depth=1
	movq	-64(%rbp), %rdi
	callq	gimp_plug_in_cleanup_item_free
# BB#31:                                # %for.inc.38
                                        #   in Loop: Header=BB10_27 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB10_33
# BB#32:                                # %cond.true.40
                                        #   in Loop: Header=BB10_27 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB10_34
.LBB10_33:                              # %cond.false.42
                                        #   in Loop: Header=BB10_27 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB10_34
.LBB10_34:                              # %cond.end.43
                                        #   in Loop: Header=BB10_27 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB10_27
.LBB10_35:                              # %for.end.45
	movq	-16(%rbp), %rax
	movq	88(%rax), %rdi
	callq	g_list_free
	movq	-16(%rbp), %rax
	movq	$0, 88(%rax)
.LBB10_36:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_plug_in_cleanup, .Lfunc_end10-gimp_plug_in_cleanup
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_cleanup_image,@function
gimp_plug_in_cleanup_image:             # @gimp_plug_in_cleanup_image
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_undo_group_count
	cmpl	$0, %eax
	jne	.LBB11_2
# BB#1:                                 # %if.then
	jmp	.LBB11_9
.LBB11_2:                               # %if.end
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-24(%rbp), %rdi
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	callq	gimp_image_get_undo_group_count
	movl	-36(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB11_9
# BB#3:                                 # %if.then.4
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_plug_in_procedure_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_plug_in_procedure_get_label
	movabsq	$.L.str.5, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
.LBB11_4:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-24(%rbp), %rdi
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	callq	gimp_image_get_undo_group_count
	movl	-52(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB11_8
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB11_4 Depth=1
	movq	-24(%rbp), %rdi
	callq	gimp_image_undo_group_end
	cmpl	$0, %eax
	jne	.LBB11_7
# BB#6:                                 # %if.then.12
	jmp	.LBB11_8
.LBB11_7:                               # %if.end.13
                                        #   in Loop: Header=BB11_4 Depth=1
	jmp	.LBB11_4
.LBB11_8:                               # %while.end
	jmp	.LBB11_9
.LBB11_9:                               # %if.end.14
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_plug_in_cleanup_image, .Lfunc_end11-gimp_plug_in_cleanup_image
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_cleanup_item,@function
gimp_plug_in_cleanup_item:              # @gimp_plug_in_cleanup_item
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$0, 12(%rsi)
	je	.LBB12_6
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
# BB#2:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$256, %eax              # imm = 0x100
	cmpl	$0, %eax
	je	.LBB12_4
# BB#3:                                 # %if.then.3
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-32(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_plug_in_procedure_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_plug_in_procedure_get_label
	movl	$256, %edi              # imm = 0x100
	movabsq	$.L__func__.gimp_plug_in_cleanup_item, %rsi
	movl	$342, %edx              # imm = 0x156
	movabsq	$.L.str.6, %rcx
	movq	-40(%rbp), %r8          # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	gimp_log
.LBB12_4:                               # %if.end
	jmp	.LBB12_5
.LBB12_5:                               # %do.end
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_free_shadow_tiles
.LBB12_6:                               # %if.end.9
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_plug_in_cleanup_item, .Lfunc_end12-gimp_plug_in_cleanup_item
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	je	.LBB13_2
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
.LBB13_2:                               # %entry
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
	movl	$32, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end13:
	.size	g_message, .Lfunc_end13-g_message
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Plug-In"
	.size	.L.str, 13

	.type	.L__func__.gimp_plug_in_cleanup_undo_group_start,@object # @__func__.gimp_plug_in_cleanup_undo_group_start
.L__func__.gimp_plug_in_cleanup_undo_group_start:
	.asciz	"gimp_plug_in_cleanup_undo_group_start"
	.size	.L__func__.gimp_plug_in_cleanup_undo_group_start, 38

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_PLUG_IN (plug_in)"
	.size	.L.str.1, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.2, 22

	.type	.L__func__.gimp_plug_in_cleanup_undo_group_end,@object # @__func__.gimp_plug_in_cleanup_undo_group_end
.L__func__.gimp_plug_in_cleanup_undo_group_end:
	.asciz	"gimp_plug_in_cleanup_undo_group_end"
	.size	.L__func__.gimp_plug_in_cleanup_undo_group_end, 36

	.type	.L__func__.gimp_plug_in_cleanup_add_shadow,@object # @__func__.gimp_plug_in_cleanup_add_shadow
.L__func__.gimp_plug_in_cleanup_add_shadow:
	.asciz	"gimp_plug_in_cleanup_add_shadow"
	.size	.L__func__.gimp_plug_in_cleanup_add_shadow, 32

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_DRAWABLE (drawable)"
	.size	.L.str.3, 28

	.type	.L__func__.gimp_plug_in_cleanup_remove_shadow,@object # @__func__.gimp_plug_in_cleanup_remove_shadow
.L__func__.gimp_plug_in_cleanup_remove_shadow:
	.asciz	"gimp_plug_in_cleanup_remove_shadow"
	.size	.L__func__.gimp_plug_in_cleanup_remove_shadow, 35

	.type	.L__func__.gimp_plug_in_cleanup,@object # @__func__.gimp_plug_in_cleanup
.L__func__.gimp_plug_in_cleanup:
	.asciz	"gimp_plug_in_cleanup"
	.size	.L__func__.gimp_plug_in_cleanup, 21

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"proc_frame != NULL"
	.size	.L.str.4, 19

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Plug-In '%s' left image undo in inconsistent state, closing open undo groups."
	.size	.L.str.5, 78

	.type	.L__func__.gimp_plug_in_cleanup_item,@object # @__func__.gimp_plug_in_cleanup_item
.L__func__.gimp_plug_in_cleanup_item:
	.asciz	"gimp_plug_in_cleanup_item"
	.size	.L__func__.gimp_plug_in_cleanup_item, 26

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Freeing shadow tiles of drawable '%s' on behalf of '%s'."
	.size	.L.str.6, 57


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
