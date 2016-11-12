	.text
	.file	"gimpdrawable-shadow.bc"
	.globl	gimp_drawable_get_shadow_tiles
	.align	16, 0x90
	.type	gimp_drawable_get_shadow_tiles,@function
gimp_drawable_get_shadow_tiles:         # @gimp_drawable_get_shadow_tiles
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
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_drawable_get_type
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
	movabsq	$.L__func__.gimp_drawable_get_shadow_tiles, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_20
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 16(%rax)
	je	.LBB0_19
# BB#13:                                # %if.then.14
	movq	-24(%rbp), %rdi
	callq	gimp_item_get_width
	movl	%eax, -52(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_item_get_height
	movl	%eax, -56(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_bytes
	movl	%eax, -60(%rbp)
	movl	-52(%rbp), %eax
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	16(%rdi), %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	tile_manager_width
	movl	-76(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB0_16
# BB#14:                                # %lor.lhs.false
	movl	-56(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	16(%rcx), %rdi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	tile_manager_height
	movl	-80(%rbp), %edx         # 4-byte Reload
	cmpl	%eax, %edx
	jne	.LBB0_16
# BB#15:                                # %lor.lhs.false.29
	movl	-60(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	16(%rcx), %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	tile_manager_bpp
	movl	-84(%rbp), %edx         # 4-byte Reload
	cmpl	%eax, %edx
	je	.LBB0_17
.LBB0_16:                               # %if.then.34
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_free_shadow_tiles
	jmp	.LBB0_18
.LBB0_17:                               # %if.else.35
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_20
.LBB0_18:                               # %if.end.38
	jmp	.LBB0_19
.LBB0_19:                               # %if.end.39
	movq	-24(%rbp), %rdi
	callq	gimp_item_get_width
	movq	-24(%rbp), %rdi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	gimp_item_get_height
	movq	-16(%rbp), %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gimp_drawable_bytes
	movl	-88(%rbp), %edi         # 4-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movl	%eax, %edx
	callq	tile_manager_new
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, 16(%rcx)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB0_20:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_drawable_get_shadow_tiles, .Lfunc_end0-gimp_drawable_get_shadow_tiles
	.cfi_endproc

	.globl	gimp_drawable_free_shadow_tiles
	.align	16, 0x90
	.type	gimp_drawable_free_shadow_tiles,@function
gimp_drawable_free_shadow_tiles:        # @gimp_drawable_free_shadow_tiles
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
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_free_shadow_tiles, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_14
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 16(%rax)
	je	.LBB1_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rdi
	callq	tile_manager_unref
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	$0, 16(%rax)
.LBB1_14:                               # %if.end.17
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_drawable_free_shadow_tiles, .Lfunc_end1-gimp_drawable_free_shadow_tiles
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_drawable_merge_shadow_tiles
	.align	16, 0x90
	.type	gimp_drawable_merge_shadow_tiles,@function
gimp_drawable_merge_shadow_tiles:       # @gimp_drawable_merge_shadow_tiles
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_drawable_get_type
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
	movabsq	$.L__func__.gimp_drawable_merge_shadow_tiles, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_24
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	jmp	.LBB2_13
.LBB2_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L__func__.gimp_drawable_merge_shadow_tiles, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_24
.LBB2_16:                               # %if.end.18
	jmp	.LBB2_17
.LBB2_17:                               # %do.end.19
	jmp	.LBB2_18
.LBB2_18:                               # %do.body.20
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 16(%rax)
	je	.LBB2_20
# BB#19:                                # %if.then.22
	jmp	.LBB2_21
.LBB2_20:                               # %if.else.23
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_merge_shadow_tiles, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_24
.LBB2_21:                               # %if.end.24
	jmp	.LBB2_22
.LBB2_22:                               # %do.end.25
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-28(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	leaq	-36(%rbp), %rcx
	leaq	-40(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_item_mask_intersect
	cmpl	$0, %eax
	je	.LBB2_24
# BB#23:                                # %if.then.30
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rdi
	callq	tile_manager_ref
	leaq	-136(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rsi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %r8d
	movl	-36(%rbp), %r9d
	movl	-40(%rbp), %r10d
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	leaq	-136(%rbp), %rsi
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movl	$24, %r8d
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rcx
	movl	-28(%rbp), %r10d
	movl	-32(%rbp), %r11d
	movq	$0, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	callq	gimp_drawable_apply_region
	movq	-72(%rbp), %rdi
	callq	tile_manager_unref
.LBB2_24:                               # %if.end.36
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_drawable_merge_shadow_tiles, .Lfunc_end2-gimp_drawable_merge_shadow_tiles
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_drawable_get_shadow_tiles,@object # @__func__.gimp_drawable_get_shadow_tiles
.L__func__.gimp_drawable_get_shadow_tiles:
	.asciz	"gimp_drawable_get_shadow_tiles"
	.size	.L__func__.gimp_drawable_get_shadow_tiles, 31

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_DRAWABLE (drawable)"
	.size	.L.str.1, 28

	.type	.L__func__.gimp_drawable_free_shadow_tiles,@object # @__func__.gimp_drawable_free_shadow_tiles
.L__func__.gimp_drawable_free_shadow_tiles:
	.asciz	"gimp_drawable_free_shadow_tiles"
	.size	.L__func__.gimp_drawable_free_shadow_tiles, 32

	.type	.L__func__.gimp_drawable_merge_shadow_tiles,@object # @__func__.gimp_drawable_merge_shadow_tiles
.L__func__.gimp_drawable_merge_shadow_tiles:
	.asciz	"gimp_drawable_merge_shadow_tiles"
	.size	.L__func__.gimp_drawable_merge_shadow_tiles, 33

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp_item_is_attached (GIMP_ITEM (drawable))"
	.size	.L.str.2, 45

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"drawable->private->shadow != NULL"
	.size	.L.str.3, 34


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
