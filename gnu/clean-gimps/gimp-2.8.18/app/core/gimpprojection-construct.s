	.text
	.file	"gimpprojection-construct.bc"
	.globl	gimp_projection_construct
	.align	16, 0x90
	.type	gimp_projection_construct,@function
gimp_projection_construct:              # @gimp_projection_construct
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_projection_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_projection_construct, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_15
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	callq	gimp_projection_initialize
	movq	-8(%rbp), %rdi
	cmpl	$0, 128(%rdi)
	je	.LBB0_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	callq	gimp_projection_construct_gegl
	jmp	.LBB0_15
.LBB0_14:                               # %if.else.13
	movl	$1, %esi
	movq	-8(%rbp), %rax
	movl	$0, 120(%rax)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r9d
	callq	gimp_projection_construct_legacy
.LBB0_15:                               # %if.end.14
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_projection_construct, .Lfunc_end0-gimp_projection_construct
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_projection_initialize,@function
gimp_projection_initialize:             # @gimp_projection_initialize
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
	subq	$208, %rsp
	leaq	-36(%rbp), %rax
	leaq	-40(%rbp), %r9
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	$0, -44(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rax, %rsi
	movq	%r9, %rdx
	callq	gimp_projectable_get_offset
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_projectable_get_layers
	movq	%rax, -32(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB1_17
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-76(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_item_get_offset
	movl	-36(%rbp), %ecx
	movl	-76(%rbp), %r8d
	subl	%ecx, %r8d
	movl	%r8d, -76(%rbp)
	movl	-40(%rbp), %ecx
	movl	-80(%rbp), %r8d
	subl	%ecx, %r8d
	movl	%r8d, -80(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_item_get_visible
	cmpl	$0, %eax
	je	.LBB1_12
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-64(%rbp), %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	jne	.LBB1_12
# BB#4:                                 # %land.lhs.true.11
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-56(%rbp), %rdi
	callq	gimp_layer_get_mask
	cmpq	$0, %rax
	jne	.LBB1_12
# BB#5:                                 # %land.lhs.true.14
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-56(%rbp), %rdi
	callq	gimp_layer_get_mode
	cmpl	$0, %eax
	jne	.LBB1_12
# BB#6:                                 # %land.lhs.true.16
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-56(%rbp), %rdi
	callq	gimp_layer_get_opacity
	movsd	.LCPI1_0, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB1_12
	jp	.LBB1_12
# BB#7:                                 # %land.lhs.true.19
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-76(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jg	.LBB1_12
# BB#8:                                 # %land.lhs.true.21
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-80(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jg	.LBB1_12
# BB#9:                                 # %land.lhs.true.23
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-76(%rbp), %eax
	movq	-72(%rbp), %rdi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	movl	-164(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	-12(%rbp), %eax
	addl	-20(%rbp), %eax
	cmpl	%eax, %ecx
	jl	.LBB1_12
# BB#10:                                # %land.lhs.true.27
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-80(%rbp), %eax
	movq	-72(%rbp), %rdi
	movl	%eax, -168(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movl	-168(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	-16(%rbp), %eax
	addl	-24(%rbp), %eax
	cmpl	%eax, %ecx
	jl	.LBB1_12
# BB#11:                                # %if.then
	movl	$1, -44(%rbp)
	jmp	.LBB1_17
.LBB1_12:                               # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_13
.LBB1_13:                               # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB1_15
# BB#14:                                # %cond.true
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB1_16
.LBB1_15:                               # %cond.false
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB1_16
.LBB1_16:                               # %cond.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB1_1
.LBB1_17:                               # %for.end
	cmpl	$0, -44(%rbp)
	jne	.LBB1_19
# BB#18:                                # %if.then.34
	movq	-8(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_pickable_get_tiles
	leaq	-144(%rbp), %rdi
	movl	$1, %ecx
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %r8d
	movl	-20(%rbp), %r9d
	movl	-24(%rbp), %r10d
	movq	%rax, %rsi
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-144(%rbp), %rdi
	callq	clear_region
.LBB1_19:                               # %if.end.38
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_projection_initialize, .Lfunc_end1-gimp_projection_initialize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_projection_construct_gegl,@function
gimp_projection_construct_gegl:         # @gimp_projection_construct_gegl
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_projection_get_sink_node
	movq	%rax, -32(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movl	-16(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, -40(%rbp)
	movl	-24(%rbp), %ecx
	movl	%ecx, -36(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 64(%rax)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	leaq	-48(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gegl_node_new_processor
	movq	-8(%rbp), %rsi
	movq	%rax, 64(%rsi)
	jmp	.LBB2_3
.LBB2_2:                                # %if.else
	leaq	-48(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdi
	callq	gegl_processor_set_rectangle
.LBB2_3:                                # %if.end
	jmp	.LBB2_4
.LBB2_4:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	64(%rcx), %rdi
	callq	gegl_processor_work
	cmpl	$0, %eax
	je	.LBB2_6
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB2_4 Depth=1
	jmp	.LBB2_4
.LBB2_6:                                # %while.end
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_projection_construct_gegl, .Lfunc_end2-gimp_projection_construct_gegl
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_projection_construct_legacy,@function
gimp_projection_construct_legacy:       # @gimp_projection_construct_legacy
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movq	$0, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	callq	gimp_projectable_get_channels
	movq	%rax, -40(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB3_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_visible
	cmpl	$0, %eax
	je	.LBB3_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	callq	g_list_prepend
	movq	%rax, -48(%rbp)
.LBB3_4:                                # %if.end
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_5
.LBB3_5:                                # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB3_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB3_8
.LBB3_7:                                # %cond.false
                                        #   in Loop: Header=BB3_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB3_8
.LBB3_8:                                # %cond.end
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB3_1
.LBB3_9:                                # %for.end
	cmpl	$0, -12(%rbp)
	je	.LBB3_21
# BB#10:                                # %if.then.9
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_projectable_get_layers
	movq	%rax, -40(%rbp)
.LBB3_11:                               # %for.cond.12
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB3_20
# BB#12:                                # %for.body.14
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_layer_is_floating_sel
	cmpl	$0, %eax
	jne	.LBB3_15
# BB#13:                                # %land.lhs.true
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_visible
	cmpl	$0, %eax
	je	.LBB3_15
# BB#14:                                # %if.then.22
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	-48(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -48(%rbp)
.LBB3_15:                               # %if.end.24
                                        #   in Loop: Header=BB3_11 Depth=1
	jmp	.LBB3_16
.LBB3_16:                               # %for.inc.25
                                        #   in Loop: Header=BB3_11 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB3_18
# BB#17:                                # %cond.true.27
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB3_19
.LBB3_18:                               # %cond.false.29
                                        #   in Loop: Header=BB3_11 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB3_19
.LBB3_19:                               # %cond.end.30
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB3_11
.LBB3_20:                               # %for.end.32
	jmp	.LBB3_21
.LBB3_21:                               # %if.end.33
	leaq	-52(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_projectable_get_offset
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB3_22:                               # %for.cond.35
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB3_52
# BB#23:                                # %for.body.37
                                        #   in Loop: Header=BB3_22 Depth=1
	leaq	-156(%rbp), %rsi
	leaq	-160(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_item_get_offset
	movl	-52(%rbp), %ecx
	movl	-156(%rbp), %r8d
	subl	%ecx, %r8d
	movl	%r8d, -156(%rbp)
	movl	-56(%rbp), %ecx
	movl	-160(%rbp), %r8d
	subl	%ecx, %r8d
	movl	%r8d, -160(%rbp)
	movl	-156(%rbp), %ecx
	movl	-16(%rbp), %r8d
	addl	-24(%rbp), %r8d
	cmpl	%r8d, %ecx
	jle	.LBB3_25
# BB#24:                                # %cond.true.40
                                        #   in Loop: Header=BB3_22 Depth=1
	movl	-16(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jmp	.LBB3_29
.LBB3_25:                               # %cond.false.42
                                        #   in Loop: Header=BB3_22 Depth=1
	movl	-156(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB3_27
# BB#26:                                # %cond.true.44
                                        #   in Loop: Header=BB3_22 Depth=1
	movl	-16(%rbp), %eax
	movl	%eax, -200(%rbp)        # 4-byte Spill
	jmp	.LBB3_28
.LBB3_27:                               # %cond.false.45
                                        #   in Loop: Header=BB3_22 Depth=1
	movl	-156(%rbp), %eax
	movl	%eax, -200(%rbp)        # 4-byte Spill
.LBB3_28:                               # %cond.end.46
                                        #   in Loop: Header=BB3_22 Depth=1
	movl	-200(%rbp), %eax        # 4-byte Reload
	movl	%eax, -196(%rbp)        # 4-byte Spill
.LBB3_29:                               # %cond.end.48
                                        #   in Loop: Header=BB3_22 Depth=1
	movl	-196(%rbp), %eax        # 4-byte Reload
	movl	%eax, -140(%rbp)
	movl	-160(%rbp), %eax
	movl	-20(%rbp), %ecx
	addl	-28(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB3_31
# BB#30:                                # %cond.true.52
                                        #   in Loop: Header=BB3_22 Depth=1
	movl	-20(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jmp	.LBB3_35
.LBB3_31:                               # %cond.false.54
                                        #   in Loop: Header=BB3_22 Depth=1
	movl	-160(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB3_33
# BB#32:                                # %cond.true.56
                                        #   in Loop: Header=BB3_22 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
	jmp	.LBB3_34
.LBB3_33:                               # %cond.false.57
                                        #   in Loop: Header=BB3_22 Depth=1
	movl	-160(%rbp), %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
.LBB3_34:                               # %cond.end.58
                                        #   in Loop: Header=BB3_22 Depth=1
	movl	-208(%rbp), %eax        # 4-byte Reload
	movl	%eax, -204(%rbp)        # 4-byte Spill
.LBB3_35:                               # %cond.end.60
                                        #   in Loop: Header=BB3_22 Depth=1
	movl	-204(%rbp), %eax        # 4-byte Reload
	movl	%eax, -144(%rbp)
	movl	-156(%rbp), %eax
	movq	-72(%rbp), %rdi
	movl	%eax, -212(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	movl	-212(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	-16(%rbp), %eax
	addl	-24(%rbp), %eax
	cmpl	%eax, %ecx
	jle	.LBB3_37
# BB#36:                                # %cond.true.66
                                        #   in Loop: Header=BB3_22 Depth=1
	movl	-16(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -216(%rbp)        # 4-byte Spill
	jmp	.LBB3_41
.LBB3_37:                               # %cond.false.68
                                        #   in Loop: Header=BB3_22 Depth=1
	movl	-156(%rbp), %eax
	movq	-72(%rbp), %rdi
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	movl	-220(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	cmpl	-16(%rbp), %ecx
	jge	.LBB3_39
# BB#38:                                # %cond.true.72
                                        #   in Loop: Header=BB3_22 Depth=1
	movl	-16(%rbp), %eax
	movl	%eax, -224(%rbp)        # 4-byte Spill
	jmp	.LBB3_40
.LBB3_39:                               # %cond.false.73
                                        #   in Loop: Header=BB3_22 Depth=1
	movl	-156(%rbp), %eax
	movq	-72(%rbp), %rdi
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	movl	-228(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -224(%rbp)        # 4-byte Spill
.LBB3_40:                               # %cond.end.76
                                        #   in Loop: Header=BB3_22 Depth=1
	movl	-224(%rbp), %eax        # 4-byte Reload
	movl	%eax, -216(%rbp)        # 4-byte Spill
.LBB3_41:                               # %cond.end.78
                                        #   in Loop: Header=BB3_22 Depth=1
	movl	-216(%rbp), %eax        # 4-byte Reload
	movl	%eax, -148(%rbp)
	movl	-160(%rbp), %eax
	movq	-72(%rbp), %rdi
	movl	%eax, -232(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movl	-232(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	-20(%rbp), %eax
	addl	-28(%rbp), %eax
	cmpl	%eax, %ecx
	jle	.LBB3_43
# BB#42:                                # %cond.true.84
                                        #   in Loop: Header=BB3_22 Depth=1
	movl	-20(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -236(%rbp)        # 4-byte Spill
	jmp	.LBB3_47
.LBB3_43:                               # %cond.false.86
                                        #   in Loop: Header=BB3_22 Depth=1
	movl	-160(%rbp), %eax
	movq	-72(%rbp), %rdi
	movl	%eax, -240(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movl	-240(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	cmpl	-20(%rbp), %ecx
	jge	.LBB3_45
# BB#44:                                # %cond.true.90
                                        #   in Loop: Header=BB3_22 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -244(%rbp)        # 4-byte Spill
	jmp	.LBB3_46
.LBB3_45:                               # %cond.false.91
                                        #   in Loop: Header=BB3_22 Depth=1
	movl	-160(%rbp), %eax
	movq	-72(%rbp), %rdi
	movl	%eax, -248(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movl	-248(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -244(%rbp)        # 4-byte Spill
.LBB3_46:                               # %cond.end.94
                                        #   in Loop: Header=BB3_22 Depth=1
	movl	-244(%rbp), %eax        # 4-byte Reload
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB3_47:                               # %cond.end.96
                                        #   in Loop: Header=BB3_22 Depth=1
	movl	-236(%rbp), %eax        # 4-byte Reload
	movl	%eax, -152(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_pickable_get_tiles
	leaq	-136(%rbp), %rdi
	movl	$1, %edx
	movl	-140(%rbp), %r8d
	movl	-144(%rbp), %ecx
	movl	-148(%rbp), %r9d
	subl	-140(%rbp), %r9d
	movl	-152(%rbp), %r10d
	subl	-144(%rbp), %r10d
	movq	%rax, %rsi
	movl	%edx, -260(%rbp)        # 4-byte Spill
	movl	%r8d, %edx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	movq	-72(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-136(%rbp), %r9
	movl	-140(%rbp), %ecx
	subl	-156(%rbp), %ecx
	movl	-144(%rbp), %edx
	subl	-160(%rbp), %edx
	movl	-148(%rbp), %r8d
	subl	-140(%rbp), %r8d
	movl	-152(%rbp), %r10d
	subl	-144(%rbp), %r10d
	movq	-8(%rbp), %rsi
	movl	120(%rsi), %r11d
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%r8d, %ecx
	movl	%r10d, %r8d
	movl	%r11d, (%rsp)
	callq	gimp_drawable_project_region
	movq	-8(%rbp), %rax
	movl	$1, 120(%rax)
# BB#48:                                # %for.inc.110
                                        #   in Loop: Header=BB3_22 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB3_50
# BB#49:                                # %cond.true.112
                                        #   in Loop: Header=BB3_22 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	jmp	.LBB3_51
.LBB3_50:                               # %cond.false.114
                                        #   in Loop: Header=BB3_22 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	jmp	.LBB3_51
.LBB3_51:                               # %cond.end.115
                                        #   in Loop: Header=BB3_22 Depth=1
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB3_22
.LBB3_52:                               # %for.end.117
	movq	-48(%rbp), %rdi
	callq	g_list_free
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_projection_construct_legacy, .Lfunc_end3-gimp_projection_construct_legacy
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_projection_construct,@object # @__func__.gimp_projection_construct
.L__func__.gimp_projection_construct:
	.asciz	"gimp_projection_construct"
	.size	.L__func__.gimp_projection_construct, 26

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_PROJECTION (proj)"
	.size	.L.str.1, 26


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
