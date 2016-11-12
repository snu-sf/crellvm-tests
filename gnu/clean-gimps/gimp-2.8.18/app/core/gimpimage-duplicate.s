	.text
	.file	"gimpimage-duplicate.bc"
	.globl	gimp_image_duplicate
	.align	16, 0x90
	.type	gimp_image_duplicate,@function
gimp_image_duplicate:                   # @gimp_image_duplicate
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
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
	movabsq	$.L__func__.gimp_image_duplicate, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_19
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_set_busy_until_idle
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_image_get_width
	movq	-16(%rbp), %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gimp_image_get_height
	movq	-16(%rbp), %rdi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	gimp_image_base_type
	xorl	%r8d, %r8d
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movl	-88(%rbp), %edx         # 4-byte Reload
	movl	%eax, %ecx
	callq	gimp_create_image
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_undo_disable
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gimp_image_duplicate_save_source_uri
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_image_duplicate_colormap
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_image_duplicate_resolution
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_image_duplicate_layers
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_image_duplicate_channels
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_image_duplicate_vectors
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_image_duplicate_floating_sel
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_image_duplicate_mask
	cmpq	$0, -32(%rbp)
	je	.LBB0_14
# BB#13:                                # %if.then.21
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_image_set_active_layer
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB0_14:                               # %if.end.23
	cmpq	$0, -40(%rbp)
	je	.LBB0_16
# BB#15:                                # %if.then.25
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_image_set_active_channel
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB0_16:                               # %if.end.27
	cmpq	$0, -48(%rbp)
	je	.LBB0_18
# BB#17:                                # %if.then.29
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_image_set_active_vectors
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB0_18:                               # %if.end.31
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_image_duplicate_components
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_image_duplicate_guides
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_image_duplicate_sample_points
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_image_duplicate_grid
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_image_duplicate_quick_mask
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_image_duplicate_parasites
	movq	-24(%rbp), %rdi
	callq	gimp_image_undo_enable
	movq	-24(%rbp), %rsi
	movq	%rsi, -8(%rbp)
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB0_19:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_image_duplicate, .Lfunc_end0-gimp_image_duplicate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_duplicate_save_source_uri,@function
gimp_image_duplicate_save_source_uri:   # @gimp_image_duplicate_save_source_uri
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
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_image_get_uri
	movq	%rax, %rdi
	callq	g_strdup
	movabsq	$.L.str.2, %rsi
	movabsq	$g_free, %rcx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data_full
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_image_duplicate_save_source_uri, .Lfunc_end1-gimp_image_duplicate_save_source_uri
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_duplicate_colormap,@function
gimp_image_duplicate_colormap:          # @gimp_image_duplicate_colormap
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_base_type
	cmpl	$2, %eax
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_image_get_colormap
	movq	-8(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_image_get_colormap_size
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, %edx
	callq	gimp_image_set_colormap
.LBB2_2:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_image_duplicate_colormap, .Lfunc_end2-gimp_image_duplicate_colormap
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_duplicate_resolution,@function
gimp_image_duplicate_resolution:        # @gimp_image_duplicate_resolution
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
	subq	$48, %rsp
	leaq	-24(%rbp), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_image_get_resolution
	movq	-16(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_image_set_resolution
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_image_get_unit
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_image_set_unit
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_image_duplicate_resolution, .Lfunc_end3-gimp_image_duplicate_resolution
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_duplicate_layers,@function
gimp_image_duplicate_layers:            # @gimp_image_duplicate_layers
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_layer_iter
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB4_13
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_layer_is_floating_sel
	cmpl	$0, %eax
	je	.LBB4_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_9
.LBB4_4:                                # %if.end
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_image_duplicate_item
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB4_6
# BB#5:                                 # %if.then.9
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	56(%rsi), %rsi
	movq	%rsi, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_object_get_name
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_object_set_name
.LBB4_6:                                # %if.end.15
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_active_layer
	cmpq	-48(%rbp), %rax
	jne	.LBB4_8
# BB#7:                                 # %if.then.17
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB4_8:                                # %if.end.18
                                        #   in Loop: Header=BB4_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -36(%rbp)
	movl	%eax, %ecx
	callq	gimp_image_add_layer
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB4_9:                                # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB4_11
# BB#10:                                # %cond.true
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB4_12
.LBB4_11:                               # %cond.false
                                        #   in Loop: Header=BB4_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB4_12
.LBB4_12:                               # %cond.end
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB4_1
.LBB4_13:                               # %for.end
	movq	-24(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_image_duplicate_layers, .Lfunc_end4-gimp_image_duplicate_layers
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_duplicate_channels,@function
gimp_image_duplicate_channels:          # @gimp_image_duplicate_channels
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_channel_iter
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB5_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_image_duplicate_item
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_active_channel
	cmpq	-48(%rbp), %rax
	jne	.LBB5_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB5_4:                                # %if.end
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -36(%rbp)
	movl	%eax, %ecx
	callq	gimp_image_add_channel
	movl	%eax, -76(%rbp)         # 4-byte Spill
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB5_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB5_8
.LBB5_7:                                # %cond.false
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB5_8
.LBB5_8:                                # %cond.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB5_1
.LBB5_9:                                # %for.end
	movq	-24(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_image_duplicate_channels, .Lfunc_end5-gimp_image_duplicate_channels
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_duplicate_vectors,@function
gimp_image_duplicate_vectors:           # @gimp_image_duplicate_vectors
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_vectors_iter
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB6_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_image_duplicate_item
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_active_vectors
	cmpq	-48(%rbp), %rax
	jne	.LBB6_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB6_4:                                # %if.end
                                        #   in Loop: Header=BB6_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -36(%rbp)
	movl	%eax, %ecx
	callq	gimp_image_add_vectors
	movl	%eax, -76(%rbp)         # 4-byte Spill
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB6_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB6_8
.LBB6_7:                                # %cond.false
                                        #   in Loop: Header=BB6_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB6_8
.LBB6_8:                                # %cond.end
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB6_1
.LBB6_9:                                # %for.end
	movq	-24(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_image_duplicate_vectors, .Lfunc_end6-gimp_image_duplicate_vectors
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_duplicate_floating_sel,@function
gimp_image_duplicate_floating_sel:      # @gimp_image_duplicate_floating_sel
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
	subq	$320, %rsp              # imm = 0x140
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_floating_selection
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	jmp	.LBB7_42
.LBB7_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_layer_get_floating_sel_drawable
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_layer_mask_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB7_4
# BB#3:                                 # %if.then.4
	movl	$0, -84(%rbp)
	jmp	.LBB7_9
.LBB7_4:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_7
# BB#5:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB7_7
# BB#6:                                 # %if.then.7
	movl	$1, -84(%rbp)
	jmp	.LBB7_8
.LBB7_7:                                # %if.else.8
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB7_8:                                # %if.end.10
	jmp	.LBB7_9
.LBB7_9:                                # %if.end.11
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB7_11
# BB#10:                                # %if.then.13
	movq	-32(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_layer_mask_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_layer_mask_get_layer
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_path
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_layers
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	jmp	.LBB7_22
.LBB7_11:                               # %if.else.24
	movq	-32(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_path
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB7_13
# BB#12:                                # %if.then.36
	movl	$0, -116(%rbp)
	jmp	.LBB7_18
.LBB7_13:                               # %if.else.37
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_16
# BB#14:                                # %land.lhs.true.40
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB7_16
# BB#15:                                # %if.then.44
	movl	$1, -116(%rbp)
	jmp	.LBB7_17
.LBB7_16:                               # %if.else.45
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB7_17:                               # %if.end.47
	jmp	.LBB7_18
.LBB7_18:                               # %if.end.48
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB7_20
# BB#19:                                # %if.then.51
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_layers
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	jmp	.LBB7_21
.LBB7_20:                               # %if.else.55
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_channels
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
.LBB7_21:                               # %if.end.59
	jmp	.LBB7_22
.LBB7_22:                               # %if.end.60
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB7_24
# BB#23:                                # %if.then.71
	movl	$0, -140(%rbp)
	jmp	.LBB7_29
.LBB7_24:                               # %if.else.72
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_27
# BB#25:                                # %land.lhs.true.75
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB7_27
# BB#26:                                # %if.then.80
	movl	$1, -140(%rbp)
	jmp	.LBB7_28
.LBB7_27:                               # %if.else.81
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB7_28:                               # %if.end.83
	jmp	.LBB7_29
.LBB7_29:                               # %if.end.84
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB7_31
# BB#30:                                # %if.then.87
	movq	-24(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_image_duplicate_item
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	jmp	.LBB7_32
.LBB7_31:                               # %if.else.93
	movq	-24(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_item_duplicate
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_item_set_image
	movq	-56(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_object_set_name
.LBB7_32:                               # %if.end.106
	movq	-56(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_object_set_name
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_item_stack_get_item_by_path
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -152(%rbp)
	callq	gimp_layer_mask_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB7_34
# BB#33:                                # %if.then.121
	movl	$0, -164(%rbp)
	jmp	.LBB7_39
.LBB7_34:                               # %if.else.122
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_37
# BB#35:                                # %land.lhs.true.125
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB7_37
# BB#36:                                # %if.then.130
	movl	$1, -164(%rbp)
	jmp	.LBB7_38
.LBB7_37:                               # %if.else.131
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB7_38:                               # %if.end.133
	jmp	.LBB7_39
.LBB7_39:                               # %if.end.134
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB7_41
# BB#40:                                # %if.then.137
	movq	-64(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_layer_get_mask
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
.LBB7_41:                               # %if.end.143
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	floating_sel_attach
	movq	-40(%rbp), %rdi
	callq	g_list_free
.LBB7_42:                               # %return
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_image_duplicate_floating_sel, .Lfunc_end7-gimp_image_duplicate_floating_sel
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_duplicate_mask,@function
gimp_image_duplicate_mask:              # @gimp_image_duplicate_mask
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
	subq	$240, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	callq	gimp_image_get_width
	movq	-8(%rbp), %rdi
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	leaq	-112(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-200(%rbp), %rsi        # 8-byte Reload
	movl	%ecx, %edx
	movl	-204(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	movq	-48(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	callq	gimp_image_get_width
	movq	-8(%rbp), %rdi
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	leaq	-176(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-216(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -224(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-220(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-112(%rbp), %rdi
	leaq	-176(%rbp), %rsi
	callq	copy_region
	movq	-32(%rbp), %rsi
	movl	$0, 140(%rsi)
	movq	-32(%rbp), %rsi
	movl	$0, 104(%rsi)
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_image_duplicate_mask, .Lfunc_end8-gimp_image_duplicate_mask
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_duplicate_components,@function
gimp_image_duplicate_components:        # @gimp_image_duplicate_components
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -36(%rbp)
	jge	.LBB9_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	248(%rcx,%rax,4), %edx
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	%edx, 248(%rcx,%rax,4)
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	264(%rcx,%rax,4), %edx
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	%edx, 264(%rcx,%rax,4)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB9_1
.LBB9_4:                                # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_image_duplicate_components, .Lfunc_end9-gimp_image_duplicate_components
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_duplicate_guides,@function
gimp_image_duplicate_guides:            # @gimp_image_duplicate_guides
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
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_guides
	movq	%rax, -24(%rbp)
.LBB10_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB10_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	%rax, %rdi
	callq	gimp_guide_get_position
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_guide_get_orientation
	movl	%eax, %ecx
	testl	%eax, %eax
	movl	%ecx, -40(%rbp)         # 4-byte Spill
	je	.LBB10_3
	jmp	.LBB10_12
.LBB10_12:                              # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB10_4
	jmp	.LBB10_5
.LBB10_3:                               # %sw.bb
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_image_add_hguide
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB10_6
.LBB10_4:                               # %sw.bb.4
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_image_add_vguide
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB10_6
.LBB10_5:                               # %sw.default
                                        #   in Loop: Header=BB10_1 Depth=1
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	g_error
.LBB10_6:                               # %sw.epilog
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_7
.LBB10_7:                               # %for.inc
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB10_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB10_10
.LBB10_9:                               # %cond.false
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB10_10
.LBB10_10:                              # %cond.end
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB10_1
.LBB10_11:                              # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_image_duplicate_guides, .Lfunc_end10-gimp_image_duplicate_guides
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_duplicate_sample_points,@function
gimp_image_duplicate_sample_points:     # @gimp_image_duplicate_sample_points
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_sample_points
	movq	%rax, -24(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB11_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	8(%rax), %esi
	movq	-32(%rbp), %rax
	movl	12(%rax), %edx
	callq	gimp_image_add_sample_point_at_pos
	movq	%rax, -40(%rbp)         # 8-byte Spill
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB11_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB11_6
.LBB11_5:                               # %cond.false
                                        #   in Loop: Header=BB11_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB11_6
.LBB11_6:                               # %cond.end
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB11_1
.LBB11_7:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_image_duplicate_sample_points, .Lfunc_end11-gimp_image_duplicate_sample_points
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_duplicate_grid,@function
gimp_image_duplicate_grid:              # @gimp_image_duplicate_grid
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_grid
	cmpq	$0, %rax
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_image_get_grid
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_set_grid
.LBB12_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_image_duplicate_grid, .Lfunc_end12-gimp_image_duplicate_grid
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_duplicate_quick_mask,@function
gimp_image_duplicate_quick_mask:        # @gimp_image_duplicate_quick_mask
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	280(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 280(%rax)
	movq	-24(%rbp), %rax
	movl	284(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 284(%rax)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	288(%rsi), %rdi
	movq	%rdi, 288(%rax)
	movq	296(%rsi), %rdi
	movq	%rdi, 296(%rax)
	movq	304(%rsi), %rdi
	movq	%rdi, 304(%rax)
	movq	312(%rsi), %rsi
	movq	%rsi, 312(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_image_duplicate_quick_mask, .Lfunc_end13-gimp_image_duplicate_quick_mask
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_duplicate_parasites,@function
gimp_image_duplicate_parasites:         # @gimp_image_duplicate_parasites
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 240(%rax)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-24(%rbp), %rax
	movq	240(%rax), %rdi
	callq	gimp_parasite_list_copy
	movq	-32(%rbp), %rdi
	movq	%rax, 240(%rdi)
.LBB14_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_image_duplicate_parasites, .Lfunc_end14-gimp_image_duplicate_parasites
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_duplicate_item,@function
gimp_image_duplicate_item:              # @gimp_image_duplicate_item
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	callq	gimp_item_convert
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_object_get_name
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_object_set_name
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_image_duplicate_item, .Lfunc_end15-gimp_image_duplicate_item
	.cfi_endproc

	.align	16, 0x90
	.type	g_error,@function
g_error:                                # @g_error
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$400, %rsp              # imm = 0x190
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
	je	.LBB16_3
# BB#2:                                 # %entry
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
.LBB16_3:                               # %entry
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
	movabsq	$.L.str, %rdi
	movl	$4, %esi
	leaq	-32(%rbp), %r9
	movq	%r8, -8(%rbp)
	movq	%r9, %r8
	leaq	-208(%rbp), %r10
	movq	%r10, 16(%r8)
	leaq	16(%rbp), %r10
	movq	%r10, 8(%r8)
	movl	$48, 4(%r8)
	movl	$8, (%r8)
	movq	-8(%rbp), %rdx
	movq	%r9, %rcx
	callq	g_logv
	leaq	-32(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
.LBB16_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB16_1
.Lfunc_end16:
	.size	g_error, .Lfunc_end16-g_error
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_image_duplicate,@object # @__func__.gimp_image_duplicate
.L__func__.gimp_image_duplicate:
	.asciz	"gimp_image_duplicate"
	.size	.L__func__.gimp_image_duplicate, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-image-source-uri"
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Unknown guide orientation.\n"
	.size	.L.str.3, 28


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
